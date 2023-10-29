import json
from datetime import datetime

import psycopg2
from flask import Flask, request, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

# db credentials
conn = psycopg2.connect(
    host='localhost',
    port='5432',
    database='is_database',
    user='postgres',
    password='password'
)


@app.route('/', methods=['GET'])
def hello_world():
    return 'Hello!'


@app.route('/save_data/ep', methods=['GET'])
def save_currency_data1():
    try:
        currencyJSON = 'JSON_files/EUR_PLN.json'
        file = open(currencyJSON, "r")
        currency_data = json.loads(file.read())
        file.close()
        # Create a cursor to execute SQL statements
        cur = conn.cursor()

        for row in currency_data:
            date_str = row['Date']
            date = datetime.strptime(date_str, '%d.%m.%Y').strftime('%Y-%m-%d')
            last_value = row['LastValue']
            opening_value = row['OpeningValue']
            max_value = row['Max']
            min_value = row['Min']

            # Insert the data into the database
            cur.execute(
                'INSERT INTO eur_pln ( Date, LastValue, OpeningValue, Max, Min) VALUES (%s, %s, %s, %s, %s)',
                (date, last_value, opening_value, max_value, min_value)
            )
        # Commit the transaction and close the cursor
        conn.commit()
        cur.close()

        return jsonify({'message': 'Data saved successfully'})

    except (KeyError, psycopg2.Error) as e:
        return jsonify({'error': str(e)})



@app.route('/save_data/up', methods=['GET'])
def save_currency_data2():
    try:
        currencyJSON = 'JSON_files/USD_PLN.json'
        file = open(currencyJSON, "r")
        currency_data = json.loads(file.read())
        file.close()
        # Create a cursor to execute SQL statements
        cur = conn.cursor()

        for row in currency_data:
            date_str = row['Date']
            date = datetime.strptime(date_str, '%d.%m.%Y').strftime('%Y-%m-%d')
            last_value = row['LastValue']
            opening_value = row['OpeningValue']
            max_value = row['Max']
            min_value = row['Min']

            # Insert the data into the database
            cur.execute(
                'INSERT INTO usd_pln ( Date, LastValue, OpeningValue, Max, Min) VALUES (%s, %s, %s, %s, %s)',
                (date, last_value, opening_value, max_value, min_value)
            )
        # Commit the transaction and close the cursor
        conn.commit()
        cur.close()

        return jsonify({'message': 'Data saved successfully'})

    except (KeyError, psycopg2.Error) as e:
        return jsonify({'error': str(e)})


@app.route('/save_data/eu', methods=['GET'])
def save_currency_data3():
    try:
        currencyJSON = 'JSON_files/EUR_USD.json'
        file = open(currencyJSON, "r")
        currency_data = json.loads(file.read())
        file.close()
        # Create a cursor to execute SQL statements
        cur = conn.cursor()

        for row in currency_data:
            date_str = row['Date']
            date = datetime.strptime(date_str, '%d.%m.%Y').strftime('%Y-%m-%d')
            last_value = row['LastValue']
            opening_value = row['OpeningValue']
            max_value = row['Max']
            min_value = row['Min']

            # Insert the data into the database
            cur.execute(
                'INSERT INTO eur_usd ( Date, LastValue, OpeningValue, Max, Min) VALUES (%s, %s, %s, %s, %s)',
                (date, last_value, opening_value, max_value, min_value)
            )
        # Commit the transaction and close the cursor
        conn.commit()
        cur.close()

        return jsonify({'message': 'Data saved successfully'})

    except (KeyError, psycopg2.Error) as e:
        return jsonify({'error': str(e)})


@app.route('/load_events', methods=['GET'])
def load_event_data():
    try:
        file_path = 'JSON_files/EventsJSON.json'  # path to your JSON file
        file = open(file_path, "r")
        event_data = json.loads(file.read())
        file.close()
        cur = conn.cursor()

        for event in event_data:
            # id = event['id']
            date_str = event['date']
            date_obj = datetime.strptime(date_str, '%d.%m.%Y')
            formatted_date = date_obj.strftime('%Y-%m-%d')  # converting date to SQL acceptable format
            description = event['description']
            # source = event['source']

            # Insert the data into the database
            cur.execute(
                'INSERT INTO events (date, description) VALUES (%s, %s)',
                (formatted_date, description)
            )

        conn.commit()
        cur.close()

        return jsonify({'message': 'Data loaded successfully'})

    except (KeyError, psycopg2.Error) as e:
        return jsonify({'error': str(e)})

@app.route('/chart_data', methods=['GET'])
def get_chart_data():
    try:
        # Create a cursor to execute SQL statements
        cur = conn.cursor()

        # Fetch data from the three tables
        cur.execute(
            'SELECT "date", "lastvalue" as "epValue" FROM eur_pln ORDER BY "date"'
        )
        eur_pln_data = cur.fetchall()

        cur.execute(
            'SELECT "date", "lastvalue" as "upValue" FROM usd_pln ORDER BY "date"'
        )
        usd_pln_data = cur.fetchall()

        cur.execute(
            'SELECT "date", "lastvalue" as "euValue" FROM eur_usd ORDER BY "date"'
        )
        eur_usd_data = cur.fetchall()

        # Fetch events data
        cur.execute(
            'SELECT "date", "description" FROM events ORDER BY "date"'
        )
        events_data = cur.fetchall()

        # Close the cursor
        cur.close()

        # Combine the data into a single JSON object
        json_data = {
            "labels": [str(row[0]) for row in eur_pln_data],  # Convert date to string
            "ep": [float(row[1]) for row in eur_pln_data],
            "up": [float(row[1]) for row in usd_pln_data],
            "eu": [float(row[1]) for row in eur_usd_data],
            "events": [{"date": str(row[0]), "description": row[1]} for row in events_data]  # Convert date to string
        }

        return jsonify(json_data)

    except psycopg2.Error as e:
        return jsonify({'error': str(e)})


app.run(debug=True)