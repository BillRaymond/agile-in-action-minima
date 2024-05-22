import os

# Set the directory path to _posts
_posts_dir = "_posts"

# List the files in the _posts directory
files = os.listdir(_posts_dir)

# Sort the files by their names (case-insensitive)
files.sort(key=lambda x: x.casefold())

# Print the first five files
for i, file in enumerate(files[:5], 1):
    print(f"{i}. {file}")
