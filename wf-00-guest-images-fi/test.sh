magick convert ../uploads/albert.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/albert.png `# save the guest image`

    