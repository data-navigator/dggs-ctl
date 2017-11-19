<ctl:test name="dggs:check-ref">
  <ctl:param name="ReferenceFrame"/>
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
