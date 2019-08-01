library(XML)
options(max.print = .Machine$integer.max)
doc <- xmlTreeParse("blackriders.xml", useInternalNodes=TRUE)
doc
#outputs word-level values
religion.divs.ns.l <- getNodeSet(doc, "//tei:div2[@ana='#theme-religion']//tei:w[@ana='#ref-object']", namespaces = c(tei = "http://www.tei-c.org/ns/1.0"))
religion.divs.ns.l
objects.v <- sapply(religion.divs.ns.l, xmlValue)
objects.v

#outputs phrases with relevant word-level values
religion.divs.ns.l <- getNodeSet(doc, "//tei:div2[@ana='#theme-religion']//tei:w[@ana='#ref-object']/ancestor-or-self::node()[position()=2]", namespaces = c(tei = "http://www.tei-c.org/ns/1.0"))
objects.v <- sapply(religion.divs.ns.l, xmlValue)
objects.v
