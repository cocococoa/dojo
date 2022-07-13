FROM asciidoctor/docker-asciidoctor:1.2.0

RUN apk add --no-cache nodejs yarn python3 jq git py3-pip && \
  pip3 install --upgrade pip && \
  pip3 install awscli && \
  wget -O VLGothic.zip "http://osdn.jp/frs/redir.php?m=jaist&f=%2Fvlgothic%2F62375%2FVLGothic-20141206.zip" && \
  unzip VLGothic.zip && \
  mkdir -p /usr/share/fonts/VLGothic && \
  cp VLGothic/VL-Gothic-Regular.ttf /usr/share/fonts/VLGothic && \
  gem install asciidoctor-pdf-cjk-kai_gen_gothic && \
  asciidoctor-pdf-cjk-kai_gen_gothic-install

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

