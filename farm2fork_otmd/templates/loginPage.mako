
<%inherit file="base.mako"/>

<%block name="page_title">farm2fork - ${title}</%block>

<%block name="header">
    <h1 id="header_title">${title} <small>test</small></h1>
</%block>

<div class="row-fluid">
    <div class="span12">
        <%include file="login.mako"/>
    </div>
</div>
