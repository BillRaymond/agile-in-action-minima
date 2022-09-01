
echo “Converting guest image: /uploads/balloons2.png”
magick convert ../uploads/balloons2.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/balloons2.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/balloons2.png”

echo “Converting guest image: /uploads/wodtke.jpg”
magick convert ../uploads/wodtke.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/wodtke.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/wodtke.png”

echo “Converting guest image: /uploads/alla.jpg”
magick convert ../uploads/alla.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/alla.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/alla.png”

echo “Converting guest image: /uploads/kilby-photo.jpg”
magick convert ../uploads/kilby-photo.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/kilby-photo.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/kilby-photo.png”

echo “Converting guest image: /uploads/seiden-1.jpg”
magick convert ../uploads/seiden-1.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/seiden-1.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/seiden-1.png”

echo “Converting guest image: /uploads/marsha-acker.png”
magick convert ../uploads/marsha-acker.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/marsha-acker.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/marsha-acker.png”

echo “Converting guest image: /uploads/ionitia.jpg”
magick convert ../uploads/ionitia.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/ionitia.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/ionitia.png”

echo “Converting guest image: /uploads/gothelf-square.png”
magick convert ../uploads/gothelf-square.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/gothelf-square.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/gothelf-square.png”

echo “Converting guest image: /uploads/sandy-mamoli.jpeg”
magick convert ../uploads/sandy-mamoli.jpeg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/sandy-mamoli.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/sandy-mamoli.png”

echo “Converting guest image: /uploads/david-mole.jpeg”
magick convert ../uploads/david-mole.jpeg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/david-mole.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/david-mole.png”

echo “Converting guest image: /uploads/jutta.jpg”
magick convert ../uploads/jutta.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/jutta.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/jutta.png”

echo “Converting guest image: /uploads/becky.png”
magick convert ../uploads/becky.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/becky.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/becky.png”

echo “Converting guest image: /uploads/jurgen-appelo.jpeg”
magick convert ../uploads/jurgen-appelo.jpeg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/jurgen-appelo.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/jurgen-appelo.png”

echo “Converting guest image: /uploads/ryan-dawson.jpg”
magick convert ../uploads/ryan-dawson.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/ryan-dawson.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/ryan-dawson.png”

echo “Converting guest image: /uploads/emily-disque.png”
magick convert ../uploads/emily-disque.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/emily-disque.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/emily-disque.png”

echo “Converting guest image: /uploads/laura-pike-seeley.jpeg”
magick convert ../uploads/laura-pike-seeley.jpeg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/laura-pike-seeley.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/laura-pike-seeley.png”

echo “Converting guest image: /uploads/linda-parker-gates-with-oil-painting-in-the-background.png”
magick convert ../uploads/linda-parker-gates-with-oil-painting-in-the-background.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/linda-parker-gates-with-oil-painting-in-the-background.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/linda-parker-gates-with-oil-painting-in-the-background.png”

echo “Converting guest image: /uploads/chris-jones.jpeg”
magick convert ../uploads/chris-jones.jpeg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/chris-jones.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/chris-jones.png”

echo “Converting guest image: /uploads/ggow-best.jpg”
magick convert ../uploads/ggow-best.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/ggow-best.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/ggow-best.png”

echo “Converting guest image: /uploads/varrell-square.png”
magick convert ../uploads/varrell-square.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/varrell-square.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/varrell-square.png”

echo “Converting guest image: /uploads/pirro.jpg”
magick convert ../uploads/pirro.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/pirro.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/pirro.png”

echo “Converting guest image: /uploads/plunkett.jpg”
magick convert ../uploads/plunkett.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/plunkett.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/plunkett.png”

echo “Converting guest image: /uploads/blake.jpeg”
magick convert ../uploads/blake.jpeg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/blake.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/blake.png”

echo “Converting guest image: /uploads/mike-cohn.jpg”
magick convert ../uploads/mike-cohn.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/mike-cohn.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/mike-cohn.png”

echo “Converting guest image: /uploads/headshot_small.jpeg”
magick convert ../uploads/headshot_small.jpeg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/headshot_small.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/headshot_small.png”

echo “Converting guest image: /uploads/shore-square.png”
magick convert ../uploads/shore-square.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/shore-square.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/shore-square.png”

echo “Converting guest image: /uploads/sander-dur.jpg”
magick convert ../uploads/sander-dur.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/sander-dur.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/sander-dur.png”

echo “Converting guest image: /uploads/spsq.png”
magick convert ../uploads/spsq.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/spsq.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/spsq.png”

echo “Converting guest image: /uploads/omeyer-square.png”
magick convert ../uploads/omeyer-square.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/omeyer-square.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/omeyer-square.png”

echo “Converting guest image: /uploads/hertwig.png”
magick convert ../uploads/hertwig.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/hertwig.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/hertwig.png”

echo “Converting guest image: /uploads/ant-sq.png”
magick convert ../uploads/ant-sq.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/ant-sq.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/ant-sq.png”

echo “Converting guest image: /uploads/d-pereira-square.png”
magick convert ../uploads/d-pereira-square.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/d-pereira-square.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/d-pereira-square.png”

echo “Converting guest image: /uploads/andrea-fryrear.jpeg”
magick convert ../uploads/andrea-fryrear.jpeg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/andrea-fryrear.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/andrea-fryrear.png”

echo “Converting guest image: /uploads/luis-goncalves.jpg”
magick convert ../uploads/luis-goncalves.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/luis-goncalves.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/luis-goncalves.png”

echo “Converting guest image: /uploads/gary-hinkle.jpg”
magick convert ../uploads/gary-hinkle.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/gary-hinkle.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/gary-hinkle.png”

echo “Converting guest image: /uploads/dorian-square.png”
magick convert ../uploads/dorian-square.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/dorian-square.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/dorian-square.png”

echo “Converting guest image: /uploads/loreal-jiles.jpg”
magick convert ../uploads/loreal-jiles.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/loreal-jiles.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/loreal-jiles.png”

echo “Converting guest image: /uploads/shore-square.png”
magick convert ../uploads/shore-square.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/shore-square.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/shore-square.png”

echo “Converting guest image: /uploads/evan.jpg”
magick convert ../uploads/evan.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/evan.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/evan.png”

echo “Converting guest image: /uploads/matt-koball.jpg”
magick convert ../uploads/matt-koball.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/matt-koball.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/matt-koball.png”

echo “Converting guest image: /uploads/albert.jpg”
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
echo “converted guest image to: ../uploads/wf-guest-images-fi/albert.png”

echo “Converting guest image: /uploads/levy.jpg”
magick convert ../uploads/levy.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/levy.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/levy.png”

echo “Converting guest image: /uploads/koning.jpg”
magick convert ../uploads/koning.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/koning.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/koning.png”

echo “Converting guest image: /uploads/joshua-hinkel.jpg”
magick convert ../uploads/joshua-hinkel.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/joshua-hinkel.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/joshua-hinkel.png”

echo “Converting guest image: /uploads/spady.jpg”
magick convert ../uploads/spady.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/spady.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/spady.png”

echo “Converting guest image: /uploads/yunpeng.jpg”
magick convert ../uploads/yunpeng.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/yunpeng.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/yunpeng.png”

echo “Converting guest image: /uploads/michele.jpg”
magick convert ../uploads/michele.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/michele.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/michele.png”

echo “Converting guest image: /uploads/natal-head-shot.jpg”
magick convert ../uploads/natal-head-shot.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/natal-head-shot.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/natal-head-shot.png”

echo “Converting guest image: /uploads/luis-goncalves.jpg”
magick convert ../uploads/luis-goncalves.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/luis-goncalves.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/luis-goncalves.png”

echo “Converting guest image: /uploads/willemjan.jpg”
magick convert ../uploads/willemjan.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/willemjan.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/willemjan.png”

echo “Converting guest image: /uploads/dr-mabli.jpg”
magick convert ../uploads/dr-mabli.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/dr-mabli.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/dr-mabli.png”

echo “Converting guest image: /uploads/maarten.jpeg”
magick convert ../uploads/maarten.jpeg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/maarten.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/maarten.png”

echo “Converting guest image: /uploads/shane-drumm-headshot-bg-357x487.png”
magick convert ../uploads/shane-drumm-headshot-bg-357x487.png `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/shane-drumm-headshot-bg-357x487.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/shane-drumm-headshot-bg-357x487.png”

echo “Converting guest image: /uploads/Jim3.jpg”
magick convert ../uploads/Jim3.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/Jim3.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/Jim3.png”

echo “Converting guest image: /uploads/william-morgan-headshot.jpeg”
magick convert ../uploads/william-morgan-headshot.jpeg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/william-morgan-headshot.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/william-morgan-headshot.png”

echo “Converting guest image: /uploads/brower-6917.jpg”
magick convert ../uploads/brower-6917.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/brower-6917.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/brower-6917.png”

echo “Converting guest image: /uploads/fewell_cpm_203-min-scaled.jpg”
magick convert ../uploads/fewell_cpm_203-min-scaled.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/fewell_cpm_203-min-scaled.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/fewell_cpm_203-min-scaled.png”

echo “Converting guest image: /uploads/j-fredrick.jpg”
magick convert ../uploads/j-fredrick.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/j-fredrick.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/j-fredrick.png”

echo “Converting guest image: /uploads/d-squirrel.jpg”
magick convert ../uploads/d-squirrel.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/d-squirrel.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/d-squirrel.png”

echo “Converting guest image: /uploads/farlik.jpg”
magick convert ../uploads/farlik.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/farlik.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/farlik.png”

echo “Converting guest image: /uploads/tyler-sellhorn.jpg”
magick convert ../uploads/tyler-sellhorn.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/tyler-sellhorn.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/tyler-sellhorn.png”

echo “Converting guest image: /uploads/loretta.jpg”
magick convert ../uploads/loretta.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/loretta.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/loretta.png”

echo “Converting guest image: /uploads/shane-hastie.jpg”
magick convert ../uploads/shane-hastie.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/shane-hastie.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/shane-hastie.png”

echo “Converting guest image: /uploads/sarah-shewell.jpg”
magick convert ../uploads/sarah-shewell.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/sarah-shewell.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/sarah-shewell.png”

echo “Converting guest image: /uploads/rigby_darrell_print_bw.jpg”
magick convert ../uploads/rigby_darrell_print_bw.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/rigby_darrell_print_bw.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/rigby_darrell_print_bw.png”

echo “Converting guest image: /uploads/sarah-elk-headshot-square.jpg”
magick convert ../uploads/sarah-elk-headshot-square.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/sarah-elk-headshot-square.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/sarah-elk-headshot-square.png”

echo “Converting guest image: /uploads/bethann-zaveson.jpeg”
magick convert ../uploads/bethann-zaveson.jpeg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/bethann-zaveson.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/bethann-zaveson.png”

echo “Converting guest image: /uploads/mary-120b.jpg”
magick convert ../uploads/mary-120b.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/mary-120b.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/mary-120b.png”

echo “Converting guest image: /uploads/tom-web.jpg”
magick convert ../uploads/tom-web.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/tom-web.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/tom-web.png”

echo “Converting guest image: /uploads/vice-abbate.jpeg”
magick convert ../uploads/vice-abbate.jpeg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/vice-abbate.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/vice-abbate.png”

echo “Converting guest image: /uploads/matthew-skelton-min.jpg”
magick convert ../uploads/matthew-skelton-min.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/matthew-skelton-min.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/matthew-skelton-min.png”

echo “Converting guest image: /uploads/manuel-pais-min.jpg”
magick convert ../uploads/manuel-pais-min.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage `# merge the layers` \
    ../uploads/wf-guest-images-fi/manuel-pais-min.png `# save the guest image`
echo “converted guest image to: ../uploads/wf-guest-images-fi/manuel-pais-min.png”

