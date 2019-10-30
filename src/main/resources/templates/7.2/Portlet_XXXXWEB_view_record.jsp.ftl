<%-- <dmsc:root  templateName="Portlet_XXXXWEB_view_record.jsp.ftl" /> --%>
<%-- <dmsc:sync id="head-common" > --%>
<#include "./valuables.ftl">
<#assign createPath = "${webModulePath}/src/main/resources/META-INF/resources/${snakecaseModel}/view_record.jsp">
<%-- </dmsc:sync> --%>
<%@ include file="./init.jsp" %>

<%
${capFirstModel} ${uncapFirstModel} = (${capFirstModel})request.getAttribute("${uncapFirstModel}");
String redirect = ParamUtil.getString(request, "redirect");
boolean fromAsset = ParamUtil.getBoolean(request, "fromAsset", false);
portletDisplay.setShowBackIcon(true);
portletDisplay.setURLBack(redirect);
%>

<div class="container-fluid-1280">
	<aui:fieldset>
		<div class="form-group">
			<h3><liferay-ui:message key="asset-title" /></h3>

			<p class="form-control"><%= ${uncapFirstModel}.get${application.asset.assetTitleFieldName?cap_first}() %></p>
		</div>

		<div class="form-group">
			<h3><liferay-ui:message key="summary" /></h3>

			<p class="form-control"><%= ${uncapFirstModel}.get${application.asset.assetSummaryFieldName?cap_first}() %></p>
		</div>

		<div class="form-group">
			<h3><liferay-ui:message key="${lowercaseModel}-${lowercaseModel}Id" /></h3>

			<p class="form-control"><%= ${uncapFirstModel}.getSamplesbId() %></p>
		</div>

		<div class="form-group">
			<h3><liferay-ui:message key="${lowercaseModel}-title" /></h3>

			<p class="form-control"><%= ${uncapFirstModel}.getTitle() %></p>
		</div>

		<div class="form-group">
			<h3><liferay-ui:message key="${lowercaseModel}-${lowercaseModel}BooleanStat" /></h3>

			<p class="form-control"><%= ${uncapFirstModel}.getSamplesbBooleanStat() %></p>
		</div>

		<div class="form-group">
			<h3><liferay-ui:message key="${lowercaseModel}-${lowercaseModel}DateTime" /></h3>

			<p class="form-control"><%= ${uncapFirstModel}.getSamplesbDateTime() %></p>
		</div>

		<div class="form-group">
			<h3><liferay-ui:message key="${lowercaseModel}-${lowercaseModel}DocumentLibrary" /></h3>

			<p class="form-control"><%= ${uncapFirstModel}.getSamplesbDocumentLibrary() %></p>
		</div>

		<div class="form-group">
			<h3><liferay-ui:message key="${lowercaseModel}-${lowercaseModel}Double" /></h3>

			<p class="form-control"><%= ${uncapFirstModel}.getSamplesbDouble() %></p>
		</div>

		<div class="form-group">
			<h3><liferay-ui:message key="${lowercaseModel}-${lowercaseModel}Integer" /></h3>

			<p class="form-control"><%= ${uncapFirstModel}.getSamplesbInteger() %></p>
		</div>

		<div class="form-group">
			<h3><liferay-ui:message key="${lowercaseModel}-${lowercaseModel}RichText" /></h3>

			<p class="form-control"><%= ${uncapFirstModel}.getSamplesbRichText() %></p>
		</div>

		<div class="form-group">
			<h3><liferay-ui:message key="${lowercaseModel}-${lowercaseModel}Text" /></h3>

			<p class="form-control"><%= ${uncapFirstModel}.getSamplesbText() %></p>
		</div>
	</aui:fieldset>
</div>