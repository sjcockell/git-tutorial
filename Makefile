all:
	pandoc -t html5 \
	--template=template.revealjs \
	--standalone --section-divs \
	--variable theme="solarized" \
	--variable transition="linear" \
	slides.md -o slides.html
