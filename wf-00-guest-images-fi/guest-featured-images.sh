# note: make sure to run chmod +x script-name in the final solution.sh

# Resize and crop the guest image so it is square, has a border, and has a shadow
magick convert ../face.jpg `# the guest image`\
    -resize 250x250^ `# resize the image, but keep aspect ratio`\
    -gravity Center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square`\
    -bordercolor white `# Define the border color`\
    -border 6 `# Create a border around the image`\
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage \
    ../uploads/wf-guest-images-fi/face.png
exit
