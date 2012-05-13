

<%@ page import="com.vgs.Song" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'song.label', default: 'Song')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${songInstance}">
            <div class="errors">
                <g:renderErrors bean="${songInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="title"><g:message code="song.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: songInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" maxlength="200" value="${songInstance?.title}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="body"><g:message code="song.body.label" default="Body" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: songInstance, field: 'body', 'errors')}">
                                    <g:textArea name="body" cols="40" rows="5" value="${songInstance?.body}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="artist"><g:message code="song.artist.label" default="Artist" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: songInstance, field: 'artist', 'errors')}">
                                    <g:select name="artist.id" from="${com.vgs.Artist.list()}" optionKey="id" value="${songInstance?.artist?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
