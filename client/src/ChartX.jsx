import React from 'react'
import { useState, useEffect} from 'react';
import {
  Chart as ChartJS,
  CategoryScale,
  LinearScale,
  PointElement,
  LineElement,
  Title,
  Tooltip,
  Legend,
  TimeScale
} from 'chart.js';
import { Line } from 'react-chartjs-2';
import zoomPlugin from 'chartjs-plugin-zoom';
import moment from 'moment';
import 'chartjs-adapter-moment';

function ChartX() {
  const [chartLabels, setChartLabels] = useState([])
  const [chartDataEP, setChartDataEP] = useState([])
  const [chartDataUP, setChartDataUP] = useState([])
  const [chartDataEU, setChartDataEU] = useState([])
  const [events, setEvents] = useState({})

  useEffect(() => {
    const fetchData = async () => {
      const response = await fetch('http://localhost:5000/chart_data');
      const data = await response.json();
      console.log(data);
      setChartLabels(data.labels)
      setChartDataEP(data.ep)
      setChartDataUP(data.up)
      setChartDataEU(data.eu)
      const eventsData = {
        ids: [],
        text: []
      }
      await data.events.map((d) => {
        if(data.labels.indexOf(d.date) >= 0){
          eventsData.ids.push(data.labels.indexOf(d.date))
          eventsData.text.push(d.description)
        }})
      console.log(eventsData)
      setEvents(eventsData) 
    };

    fetchData();
  }, []);

  ChartJS.register(
    CategoryScale,
    LinearScale,
    PointElement,
    LineElement,
    Title,
    Tooltip,
    Legend,
    TimeScale,
    zoomPlugin
  );
  
  const options = {
    responsive: true,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    stacked: false,
    plugins: {
      title: {
        display: true,
        text: 'Chart.js Line Chart - Multi Axis',
      },
      arbitraryLine: {
        ids: events.ids,
        text: events.text,
      },
      zoom: {
        zoom: {
          wheel: {
            enabled: true,
          },
          pinch: {
            enabled: true
          },
          mode: 'xy',
        }
      }
    },
    scales: {
      y: {
        type: 'linear',
        display: true,
        position: 'left',
      }
    },
  };


  const data = {
    labels: chartLabels,
    datasets: [
      {
        label: 'EUR - PLN',
        data: chartDataEP,
        borderColor: 'rgb(129, 178, 154)',
        backgroundColor: 'rgba(129, 178, 154, 0.5)',
        yAxisID: 'y',
      },
      {
        label: 'USD - PLN',
        data: chartDataUP,
        borderColor: 'rgb(242, 204, 143)',
        backgroundColor: 'rgba(242, 204, 143, 0.5)',
        yAxisID: 'y',
      },
      {
        label: 'EUR - USD',
        data: chartDataEU,
        borderColor: 'rgb(224, 122, 95)',
        backgroundColor: 'rgba(224, 122, 95, 0.5)',
        yAxisID: 'y',
      },
    ],
  };
  
  const arbitraryLine = {
    id: 'arbitraryLine',
    order: 1, // Set the order to 1 to make sure it runs after the zoom plugin
    beforeDraw(chart, args, pluginOptions) {
      const { ctx, chartArea: { top, bottom, left, right, width, height }, scales: { x, y } } = chart;
      ctx.save();
  
      function drawLines(id, text){
        ctx.lineWidth = 3;
        ctx.strokeStyle = 'gray';
        ctx.beginPath()
        ctx.moveTo(x.getPixelForValue(id), top)
        ctx.lineTo(x.getPixelForValue(id), bottom)
        ctx.stroke()
        ctx.font = '12px Arial'
        ctx.fillStyle = 'black'
        ctx.textAlign = 'center'
        ctx.fillText(text, x.getPixelForValue(id), top+10)
        ctx.closePath()
        ctx.restore()
      }
  
      pluginOptions.ids.forEach((value, index) => {
        drawLines(value, pluginOptions.text[index])
      })
    },
  };
  
  


  return (
    <div style={{padding: '50px'}}>
      {Object.keys(events).length > 0 ? (<Line options={options} data={data} plugins = {[arbitraryLine]}/>) : (<p>Loading...</p>)}
      
    </div>
  )
}

export default ChartX