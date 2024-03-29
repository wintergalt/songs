
<%@ page import="com.vgs.Artist" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'artist.label', default: 'Artist')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'artist.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'artist.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="dateCreated" title="${message(code: 'artist.dateCreated.label', default: 'Date Created')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${artistInstanceList}" status="i" var="artistInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td>${fieldValue(bean: artistInstance, field: "id")}</td>
                        
                            <td><g:link action="show" id="${artistInstance.id}">${fieldValue(bean: artistInstance, field: "name")}</g:link></td>
                        
                            <td><g:formatDate date="${artistInstance.dateCreated}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${artistInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
