#rm -rf ~/tmp/architect/
mkdir -p ~/tmp/architect/
cp -r images ~/tmp/architect/
xsltproc -o ~/tmp/architect/ docbook-xsl/docbook.mac.xsl book.xml
