from datetime import datetime

# Get current date and time
current_datetime = datetime.now()

# Format the date and time according to ISO 8601 format
formatted_datetime = current_datetime.strftime("%Y-%m-%dT%H:%M:%S%z")

# Print the formatted date and time
print("Current Python date and time:", formatted_datetime)
