DIST_DIR="$(pwd)/public"
DOCUMENT_DIR="$(pwd)/documents"

if [ -d $DIST_DIR/images ]; then rm -Rf $DIST_DIR/images; fi
mkdir -p $DIST_DIR/images

asciidoctor \
  -a imagesdir@=$DOCUMENT_DIR/images \
  -a docroot=$DOCUMENT_DIR \
  -a imagesoutdir=$DIST_DIR/images \
  -o $DIST_DIR/index.html \
  -r asciidoctor-diagram \
  -r asciidoctor-mathematical \
  -r asciidoctor-bibtex \
  -b html \
  $DOCUMENT_DIR/index.adoc

