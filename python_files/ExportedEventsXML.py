import os
import xml.etree.ElementTree as ET
import json
class ExportedEventsXML:
    def __init__(self, json_dir='JSON_files'):
        self.json_dir = json_dir

    def export_to_xml(self, filename):
        json_file = "EventsJSON.json"
        json_path = os.path.join(self.json_dir, json_file)
        file = open(json_path, "r")
        print(file)
        events_data = json.loads(file.read())
        file.close()
        root = ET.Element("events")

        for event in events_data:
            event_element = ET.SubElement(root, "event")
            ET.SubElement(event_element, "id").text = str(event["id"])
            ET.SubElement(event_element, "date").text = event["date"]
            ET.SubElement(event_element, "description").text = event["description"]
            ET.SubElement(event_element, "source").text = event["source"]


        tree = ET.ElementTree(root)
        directory = "XML_files"
        if not os.path.exists(directory):
            os.makedirs(directory)

        result = os.path.join(directory, filename)
        tree.write(result, encoding="utf-8", xml_declaration=True)

        return result
