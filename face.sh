# note: make sure to run chmod +x script-name in the final solution.sh

# Resize the image similar to CSS object-fit: cover
magick convert face.jpg -resize 250x250^ -gravity Center -background transparent -extent 250x250 face.png

# Add a boarder to the image
magick convert face.png -bordercolor white -border 6 face.png

# Add a shadow to the image
magick convert face.png \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage face.png

# Place photo over image
magick convert template.png face.png -geometry +250+212.50 -composite face.png

# Add the "PODCAST" title
magick convert face.png -size 616x \
    -font './share-card-creator/fonts/ProximaNovaA-Bold.ttf' \
    -fill '#f49f1c' -background none \
    -size 600x40 caption:'PODCAST' \
    -geometry +550+46 \
    -composite face.png


# Add the title of the podcast at 580x x 96y with a size of 580x300
# magick convert face.png -pointsize 30 -annotate +525+100 'Hello' face.png
# magick convert -font './share-card-creator/fonts/ProximaNovaA-Bold.ttf' -pointsize 60 -fill white -draw 'text 550,150 "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt a pariatur eius, autem expedita molestiae, vero sed mollitia ullam excepturi sit esse cum dolor? Totam."' face.png face.png
# Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt a pariatur eius, autem expedita molestiae, vero sed mollitia ullam.
magick convert face.png -size 616x \
    -font './share-card-creator/fonts/ProximaNovaA-Bold.ttf' \
    -fill white -background none \
    -size 580x300 caption:'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt a pariatur eius, autem expedita molestiae, vero sed mollitia ullam. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt a pariatur eius, autem expedita molestiae, vero sed mollitia ullam.' \
    -geometry +550+96 \
    -composite face.png

# Add the "with" text
# magick convert face.png -pointsize 30 -annotate +525+100 'Hello' face.png
magick convert face.png -size 616x \
    -font './share-card-creator/fonts/ProximaNovaA-Regular.ttf' \
    -fill white -background none \
    -size 580x300 caption:'with Bill Raymond, Sandy Mamoli, John Stein, and Mary Poppendieck' \
    -geometry +550+96 \
    -composite face.png

