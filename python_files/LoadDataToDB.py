import os
import json
import pandas as pd
import csv


class LoadDataToDB:
    def __init__(self, excel_dir='Assets', json_dir='JSON_files'):
        self.excel_dir = excel_dir
        self.json_dir = json_dir

    def convert_to_json(self, csv_file):
        csv_path = os.path.join(self.excel_dir, csv_file)

        json_file = os.path.splitext(csv_file)[0] + '.json'
        json_path = os.path.join(self.json_dir, json_file)
        jsonArray = []
        print(csv_path)
        with open(csv_path, mode='r', encoding='utf-8-sig') as csvf:
            csvReader = csv.DictReader(csvf)
            i = 1
            for row in csvReader:
                divisior = 1
                row['id'] = i
                if (csv_path == "Assets\EUR_PLN.csv"):
                    divisior = 10
                else:
                    divisior = 1
                row['Date'] = row['Data']
                row['LastValue'] = float(row['Ostatnio'].replace(',', '.'))/divisior
                row['OpeningValue'] = float(row['Otwarcie'].replace(',', '.'))/divisior
                row['Max'] = float(row['Max.'].replace(',', '.'))/divisior
                row['Min'] = float(row['Min.'].replace(',', '.'))/divisior
                # add this python dict to json array
                del row ['Data']
                del row['Ostatnio']
                del row['Otwarcie']
                del row['Wol.']
                del row['Zmiana%']
                del row['Max.']
                del row['Min.']


                jsonArray.append(row)
                i += 1


        with open(json_path, 'w', encoding='utf-8') as jsonf:
            jsonString = json.dumps(jsonArray, indent=4)
            jsonf.write(jsonString)

        print(f'Saved JSON file: {json_file}')