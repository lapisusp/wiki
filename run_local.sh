mkdir -p ./vendor/bundle
mkdir -p ./_site
export JEKYLL_VERSION=3.8
docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  --publish=4000:4000 \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  jekyll serve
