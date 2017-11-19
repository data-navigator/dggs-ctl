<?xml version="1.0" encoding="UTF-8"?>
<ctl:package
  xmlns:ctl="http://www.occamlab.com/ctl"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dggs="http://localhost:8000/dggs">

  <ctl:suite name="ctl:dggs">
    <ctl:title>DGGS Conformance Tests</ctl:title>
    <ctl:description>Validates a DGGS instance.</ctl:description>
    <ctl:starting-test>dggs:main</ctl:starting-test>
  </ctl:suite>

  <ctl:test name="dggs:main">
    <ctl:assertion>DGGS Base</ctl:assertion>
    <ctl:code>
      <ctl:call-test name="dggs:core.model" />
      <ctl:call-test name="dggs:coverage.area" />
      <ctl:call-test name="dggs:coverage.overlap" />
    </ctl:code>
  </ctl:test>

<!-- Requirement 1 -->

  <ctl:test name="dggs:core.model">
    <ctl:assertion>A DGGS specification SHALL include a DGGS Reference Frame and the associated Functional Algorithms as defined by the DGGS Core Conceptual Data Model.</ctl:assertion>
    <ctl:link>
      http://docs.opengeospatial.org/as/15-104r5/15-104r5.html#requirement_1
    </ctl:link>
    <ctl:code>
      <ctl:call-test name="dggs:check-ref" />
      <ctl:call-test name="dggs:check-alg" />
      <ctl:call-test name="dggs:check-int" />
      <ctl:call-test name="dggs:check-qua" />
    </ctl:code>
  </ctl:test>

  <ctl:test name="dggs:check-ref">
    <ctl:param name="ReferenceFrame" />
    <ctl:assertion>The dggs has a ReferenceFrame.</ctl:assertion>
    <ctl:code>
      <xsl:if test="$ReferenceFrame">
        <ctl:fail/>
      </xsl:if>
    </ctl:code>
  </ctl:test>

  <ctl:test name="dggs:check-alg">
    <ctl:param name="AlgebraicOperations"/>
    <ctl:assertion>The dggs has AlgebraicOperations.</ctl:assertion>
    <ctl:code>
      <xsl:if test="$AlgebraicOperations">
        <ctl:fail/>
      </xsl:if>
    </ctl:code>
  </ctl:test>

  <ctl:test name="dggs:check-int">
    <ctl:param name="InteroperabilityOperations"/>
    <ctl:assertion>The dggs has InteroperabilityOperations.</ctl:assertion>
    <ctl:code>
      <xsl:if test="$InteroperabilityOperations">
        <ctl:fail/>
      </xsl:if>
    </ctl:code>
  </ctl:test>

  <ctl:test name="dggs:check-qua">
    <ctl:param name="QuantisationOperations"/>
    <ctl:assertion>The dggs has QuantisationOperations.</ctl:assertion>
    <ctl:code>
      <xsl:if test="$QuantisationOperations">
        <ctl:fail/>
      </xsl:if>
    </ctl:code>
  </ctl:test>

<!-- Requirement 2 -->

<ctl:test name="dggs:core.reference_frame.coverage.area">
  <ctl:assertion>Domain completeness - the DGGS Domain of the initial discrete global grid SHALL cover the entire globe.</ctl:assertion>
  <ctl:link>
    http://docs.opengeospatial.org/as/15-104r5/15-104r5.html#requirement_2
  </ctl:link>
  <ctl:code>
    <ctl:call-test name="dggs:check-coverage-area" />
  </ctl:code>
</ctl:test>

<ctl:test name="dggs:check-coverage-area">
  <ctl:param name="ReferenceFrame/Cells" />
  <ctl:assertion>The sum area of DGGS Cells equals the area of the surface of the globe.</ctl:assertion>
  <ctl:code>
    <xsl:if test="$ReferenceFrame/Cells">
      <ctl:fail/>
    </xsl:if>
  </ctl:code>
</ctl:test>

<!-- Requirement 3 -->

<ctl:test name="dggs:core.reference_frame.coverage.overlap">
  <ctl:assertion>Position uniqueness - the initial discrete global grid SHALL be defined without any overlapping DGGS Cells.</ctl:assertion>
  <ctl:link>
    http://docs.opengeospatial.org/as/15-104r5/15-104r5.html#requirement_3
  </ctl:link>
  <ctl:code>
    <ctl:call-test name="dggs:check-coverage-overlap"/>
  </ctl:code>
</ctl:test>

<ctl:test name="dggs:check-coverage-overlap">
  <ctl:param name="ReferenceFrame/Cells" />
  <ctl:assertion>The DGGS Cells do not overlap.</ctl:assertion>
  <ctl:code>
    <xsl:if test="$ReferenceFrame/Cells">
      <ctl:fail/>
    </xsl:if>
  </ctl:code>
</ctl:test>

<!-- Requirement 4 -->

<ctl:test name="dggs:core.reference_frame.tessellation">
  <ctl:assertion>A DGGS specification SHALL comprise a sequence of discrete global grid tessellations representing multiple spatial resolutions.</ctl:assertion>
  <ctl:link>
    http://docs.opengeospatial.org/as/15-104r5/15-104r5.html#requirement_4
  </ctl:link>
  <ctl:code>
    <ctl:call-test name="dggs:test_reference_frame.tessellation"/>
  </ctl:code>
</ctl:test>

<ctl:test name="dggs:check-coverage-overlap">
  <ctl:param name="ReferenceFrame/Cells" />
  <ctl:assertion>The DGGS Cells do not overlap.</ctl:assertion>
  <ctl:code>
    <xsl:if test="$ReferenceFrame/Cells">
      <ctl:fail/>
    </xsl:if>
  </ctl:code>
</ctl:test>

<!-- Requirement 5 -->


<!-- Requirement 6 -->


<!-- Requirement 7 -->


<!-- Requirement 8 -->


<!-- Requirement 9 -->


<!-- Requirement 10 -->


<!-- Requirement 11 -->


<!-- Requirement 12 -->


<!-- Requirement 13 -->


<!-- Requirement 14 -->


<!-- Requirement 15 -->


<!-- Requirement 16 -->


<!-- Requirement 17 -->


<!-- Requirement 18 -->


</ctl:package>
