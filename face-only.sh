# note: make sure to run chmod +x script-name in the final solution.sh

# Resize image and add border
magick convert face.jpg `# load guest image`\
    -resize 250x250^ `# resize the entire image. May not be square yet.`\
    -gravity Center \
    -background transparent \
    -extent 250x250 `# crop the image from the gravity point`\
    -bordercolor white `# define the border color as white`\
    -border 6 `# add the border`\
    \( +clone -background black -shadow 60x5+6+6 \) `# create a drop-shadow`\
    +swap -background none -layers merge +repage `# Move the shado layer under the guest photo`\
    face.png `# Save the photo`

exit


# Resize the image similar to CSS object-fit: cover
magick convert face.jpg \
-resize 250x250^ \
-gravity Center \
-background transparent \
-extent 250x250 \
face.png

# Add a boarder to the image
magick convert face.png \
-bordercolor white \
-border 6 \
face.png
exit


# Add a shadow to the image
magick convert face.png \
    ( +clone -background black -shadow 75x5+6+6 \) \
    +swap -background none -layers merge +repage \
    face.png
exit
# Place photo over image
magick convert template.png face.png -geometry +250+212.50 -composite face.png

# Add the "PODCAST" title
magick convert face.png \
    -font './share-card-creator/fonts/ProximaNovaA-Bold.ttf' \
    -fill '#f49f1c' -background none \
    -size 580x40 caption:'PODCAST' \
    -geometry +550+46 \
    -composite face.png


# Add the TITLE of the podcast
# The title will appear under the word "PODCAST" and before the play icon
magick convert face.png \
    -font './share-card-creator/fonts/ProximaNovaA-Bold.ttf' \
    -fill white -background none \
    -size 580x340 caption:'Outcome-driven design and team behaviors' \
    -geometry +550+96 \
    -composite face.png

# Add the GUEST text
# The guest text will appear under the TITLE and to the left of the play icon
# Text will resize automatically
magick convert face.png \
    -font './share-card-creator/fonts/ProximaNovaA-Regular.ttf' \
    -fill white -background none \
    -size 405x195 caption:'with Josh Selden, Designer, Product Guy, and author' \
    -geometry +550+446 \
    -composite face.png

