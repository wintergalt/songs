
<%@ page import="com.vgs.Song" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'song.label', default: 'Song')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'song.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="title" title="${message(code: 'song.title.label', default: 'Title')}" />
                        
                            <th><g:message code="song.artist.label" default="Artist" /></th>
                        
                            <g:sortableColumn property="dateCreated" title="${message(code: 'song.dateCreated.label', default: 'Date Created')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${songInstanceList}" status="i" var="songInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td>${fieldValue(bean: songInstance, field: "id")}</td>
                        
                            <td><g:link action="show" id="${songInstance.id}">${fieldValue(bean: songInstance, field: "title")}</g:link></td>
                        
                            <td>${fieldValue(bean: songInstance, field: "artist")}</td>
                        
                            <td><g:formatDate date="${songInstance.dateCreated}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${songInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
