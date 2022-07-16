DIST_DIR="$(pwd)/public"
DOCUMENT_DIR="$(pwd)/documents"

if [ -d $DIST_DIR/_images ]; then rm -Rf $DIST_DIR/_images; fi
mkdir -p $DIST_DIR/_images

asciidoctor \
  -a imagesdir@=$DOCUMENT_DIR/_images \
  -a docroot=$DOCUMENT_DIR \
  -a imagesoutdir=$DIST_DIR/_images \
  -D $DIST_DIR \
  -r asciidoctor-diagram \
  -r asciidoctor-mathematical \
  -r asciidoctor-multipage \
  -b multipage_html5 \
  $DOCUMENT_DIR/index.adoc
cp -r $DOCUMENT_DIR/_images/* $DIST_DIR/_images/
