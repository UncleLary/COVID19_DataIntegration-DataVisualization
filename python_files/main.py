import psycopg2
import json

from events import Events
from AddEvent import AddEvent
from ExportedEventsXML import ExportedEventsXML
from LoadDataToDB import LoadDataToDB
from covid19dh import covid19
from datetime import datetime
from pandas.io import sql
from sqlalchemy import create_engine
from api import save_currency_data1
from api import save_currency_data2
from api import save_currency_data3
from api import get_chart_data
from api import load_event_data


#saving events in JSON format
# eventsInJSON = Events.get_events()


#adding event to the events list
# date = input("Enter the date of the event (DD.MM.YYYY): ")
# description = input("Enter the description of the event: ")
# source = input("Enter the source of the event: ")
# AddEvent.add_event(date, description, source)

# exporting data to XML file
# event_data = Events.get_events()
# exporter = ExportedEventsXML(event_data)
# filename = "eventsInXML.xml"
# exporter = ExportedEventsXML()
# exporter.export_to_xml(filename)


# #loading data from csv to DB and creating a .json file in JSON_files dir
# csv_file = "EUR_PLN.csv"
# loader = LoadDataToDB()
# loader.convert_to_json(csv_file)
# #
# csv_file = "EUR_USD.csv"
# loader.convert_to_json(csv_file)
#
# csv_file = "USD_PLN.csv"
# loader.convert_to_json(csv_file)



#loading covid data to DB
# db credentials
# hostname = "localhost"
# dbname = "is_database"
# uname = "postgres"
# pwd = "password"
#
# conn_string = f"postgresql+psycopg2://{uname}:{pwd}@{hostname}/{dbname}"
# engine = create_engine(conn_string)
#
# x, src = covid19("POL", start=datetime(2020, 3, 1), end="2022-09-30", verbose=False)
#
# # writing x to the 'covid_data' table in the PostgreSQL
# x.to_sql('covid_data', con=engine, if_exists='replace', index=False)
#
# print(x)






