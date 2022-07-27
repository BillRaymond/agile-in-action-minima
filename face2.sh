# note: make sure to run chmod +x script-name in the final solution.sh
# TODO fix code so it creates the shadow AND THEN adds to the background image
# Resize the image similar to CSS object-fit: cover
magick convert face.jpg \
    -resize 250x250^ \
    -gravity Center \
    -background transparent \
    -extent 250x250 face.png

magick convert face2.jpg \
    -resize 250x250^ \
    -gravity Center \
    -background transparent \
    -extent 250x250 face2.png

# Add a boarder to the image
magick convert face.png \
    -bordercolor white \
    -border 6 face.png
magick convert face2.png \
    -bordercolor white \
    -border 6 face2.png

# Add a shadow to the image
magick convert face.png \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage face.png
magick convert face2.png \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage face2.png

exit
# Place photo over image
magick convert template.png face.png \
-geometry +250+212.50 -composite face.png
magick convert template.png face2.png \
-geometry +250+212.50 \
-composite face2.png
exit
# Add the "PODCAST" title
magick convert face2.png \
    -font './share-card-creator/fonts/ProximaNovaA-Bold.ttf' \
    -fill '#f49f1c' -background none \
    -size 580x40 caption:'PODCAST' \
    -geometry +550+46 \
    -composite face2.png


# Add the TITLE of the podcast
# The title will appear under the word "PODCAST" and before the play icon
magick convert face2.png \
    -font './share-card-creator/fonts/ProximaNovaA-Bold.ttf' \
    -fill white -background none \
    -size 580x340 caption:'Outcome-driven design and team behaviors' \
    -geometry +550+96 \
    -composite face2.png

# Add the GUEST text
# The guest text will appear under the TITLE and to the left of the play icon
# Text will resize automatically
magick convert face2.png \
    -font './share-card-creator/fonts/ProximaNovaA-Regular.ttf' \
    -fill white -background none \
    -size 405x195 caption:'with A Cool Person and Another Cool Person' \
    -geometry +550+446 \
    -composite face2.png

