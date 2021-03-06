<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- JS configuration --%>
<script type="text/javascript">
	/*<![CDATA[*/
	ACC.addons = {};	//JS holder for addons properties
			
	<c:forEach var="jsVarHolder" items="${jsAddOnsVariables}">
		ACC.addons.${jsVarHolder.key} = [];
		<c:forEach var="jsVar" items="${jsVarHolder.value}">
			<c:if test="${not empty jsVar.qualifier}" >
				ACC.addons.${jsVarHolder.key}['${jsVar.qualifier}'] = '${jsVar.value}';
			</c:if>
		</c:forEach>
	</c:forEach>
	/*]]>*/
</script>
