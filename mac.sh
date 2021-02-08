git submodule init
git submodule update
#rm -rf ~/tmp/architect/
mkdir -p ~/tmp/architect/
cp -r images ~/tmp/architect/
#cp common/docbook.css ~/tmp/architect/docbook.css
cp common/docbook-xsl.css ~/tmp/architect/docbook.css
xsltproc -o ~/tmp/architect/ docbook-xsl/docbook.preview.xsl book.xml
