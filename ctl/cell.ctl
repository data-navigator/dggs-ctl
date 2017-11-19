<ctl:package
  xmlns:ctl="http://www.occamlab.com/ctl"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:cell="http://localhost:8000/cell">

  <ctl:suite name="ctl:cell">
    <ctl:title>DGGS Cell Conformance Tests</ctl:title>
    <ctl:description>Validates a DGGS Cell instance.</ctl:description>
    <ctl:starting-test>cell:main</ctl:starting-test>
  </ctl:suite>

  <ctl:test name="cell:main">
    <ctl:assertion>The cell is valid.</ctl:assertion>
    <ctl:code>
      <xsl:variable name="response">
        <ctl:request>
          <ctl:url>http://localhost:8000/cell.xml</ctl:url>
        </ctl:request>
      </xsl:variable>
      <xsl:choose>
        <xsl:when test="$response/cell">
          <ctl:call-test name="cell:check-index">
            <ctl:with-param name="index" select="$response/cell/index" label="Cell Index"/>
          </ctl:call-test>
        </xsl:when>
        <xsl:when test="$response/cell">
          <ctl:call-test name="cell:check-area">
            <ctl:with-param name="area" select="$response/cell/area" label="Cell Area"/>
          </ctl:call-test>
        </xsl:when>
        <xsl:when test="$response/cell">
          <ctl:call-test name="cell:check-spatialRef">
            <ctl:with-param name="spatialRef" select="$response/cell/spatialRef" label="Cell Spatial Ref WKID"/>
          </ctl:call-test>
        </xsl:when>
        <xsl:otherwise>
          <ctl:message>Failed to retrieve the cell.</ctl:message>
          <ctl:fail/>
        </xsl:otherwise>
      </xsl:choose>
    </ctl:code>
  </ctl:test>

  <ctl:test name="cell:check-index">
    <ctl:param name="index"/>
    <ctl:assertion>The cell has an Index.</ctl:assertion>
    <ctl:code>
      <xsl:if test="$index = A1001">
        <ctl:fail/>
      </xsl:if>
    </ctl:code>
  </ctl:test>

</ctl:package>
