import csv
import json

csv_file = 'E:/WACV/1.ArtExp/train.csv'
json_file = 'output1.json'

# Read CSV file
data = []
with open(csv_file, 'r', encoding='utf-8') as csvfile:
    csvreader = csv.reader(csvfile)
    header = next(csvreader)  # Skip header
    for row in csvreader:
        entry = {
            "id": f"{row[0]}",
            "conversations": [
                {
                    "from": "user",
                    # change image path according to your directory and generate new json file to run for qwenvl
                    "value": f"Picture 1: <img>/content/drive/MyDrive/1.ArtExp/train_images/{row[0]}.jpg</img>\n{row[1]}" 
                },
                {
                    "from": "assistant",
                    "value": row[2]
                }
            ]
        }
        data.append(entry)

# Write to JSON file
with open(json_file, 'w', encoding='utf-8') as f:
    json.dump(data, f, ensure_ascii=False, indent=2)
