<xsl:stylesheet version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
        xmlns:java="java"
        xmlns:file="http://xml.apache.org/xalan/java/java.io.File"
        extension-element-prefixes="file">

<xsl:output method="text"/>

<xsl:template match="/">
    <xsl:apply-templates select="//sourceref"/>
</xsl:template>

<xsl:template match="sourceref">
  <xsl:if test="not( ancestor::swing or ancestor::swingdiv or ancestor::swingSourceItems or ancestor::subsection[@scope='swing'])">
   <xsl:variable name="chapternum"><!-- chapter attribute must be a chapter number; used occasionally, only in chapters, for ref to example in another chapter -->
      <xsl:choose>
         <xsl:when test="@chapter"><xsl:value-of select="@chapter"/></xsl:when>
         <xsl:otherwise><xsl:number count="chapter"/></xsl:otherwise>
      </xsl:choose>
   </xsl:variable>
   <xsl:variable name="ref">
      <xsl:choose>
         <xsl:when test="ancestor::source">source/<xsl:value-of select="@href"/></xsl:when>
         <xsl:otherwise><xsl:text>source/chapter</xsl:text><xsl:value-of select="$chapternum"/><xsl:text>/</xsl:text><xsl:value-of select="@href"/></xsl:otherwise>
      </xsl:choose>
   </xsl:variable>
   <xsl:variable name="a" select="java:io.File.new($ref)"/>
   <xsl:if test="not(java:exists($a))">Cannot find <xsl:value-of select="$ref"/>.
   </xsl:if>
  </xsl:if>
</xsl:template>

<xsl:template match="text()"></xsl:template>
    

</xsl:stylesheet>

<!--
   To use this file, export the web site, copy the "sources" folder into
   the csharpnotes1/source directory, cd to csharpnotes1, and run xalan on
   csharpnotes1.xml with this xsl transform file:
   
   XALAN_DIR='...'
   java -cp $XALAN_DIR/xalan.jar:$XALAN_DIR/serializer.jar:$XALAN_DIR/xercesImpl.jar:$XALAN_DIR/xml-apis.jar org.apache.xalan.xslt.Process -xsl convert-check-sourcerefs.xsl -in csharpnotes1.xml
-->
