git submodule update
#rm -rf ~/tmp/architect/
mkdir -p ~/tmp/architect/
cp -r images ~/tmp/architect/
cp common/docbook.css ~/tmp/management/
xsltproc -o ~/tmp/architect/ docbook-xsl/docbook.mac.xsl book.xml
