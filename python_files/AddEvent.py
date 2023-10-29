import json


class AddEvent:
    @staticmethod
    def add_event(date, description,source):
        with open('JSON_files/EventsJSON.json', 'r') as json_file:
            events = json.load(json_file)

        max_id = max(event['id'] for event in events)

        new_event = {
            'id': max_id + 1,
            'date': date,
            'description': description,
            'source': source
        }

        events.append(new_event)

        with open('JSON_files/EventsJSON.json', 'w') as json_file:
            json.dump(events, json_file, indent=4)

        print("Event added successfully.")


