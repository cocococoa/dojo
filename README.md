# dojo

今回こそ、ちゃんと頑張るぞ！

:bulb: 成果は [Github Pages](https://cocococoa.github.io/dojo/) で公開

## Build

```sh
$ docker run --rm -v $(pwd):/tmp/dojo -w /tmp/dojo -it asciidoctor/docker-asciidoctor /bin/bash -c './build_singlepage.sh'
```

## How to write AsciiDoc

* [AsciiDoc文書作成入門](https://itcweb.cc.affrc.go.jp/affrit/_media/documents/guide/asciidoc/asciidoc-start.pdf)
* [Asciidoctor 文法クイックリファレンス(日本語訳)](https://takumon.github.io/asciidoc-syntax-quick-reference-japanese-translation/)
* [Asciidoctor Documentation Site](https://docs.asciidoctor.org/)
