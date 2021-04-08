<#include "../include/imports.ftl">
<#if document??>
  <@hst.link var="link" hippobean=document/>
  <@hst.manageContent hippobean=document />
  <h2>${document.title?html}</h2>
  <p>${document.introduction?html}</p>
  <@hst.html hippohtml=document.content/>
  <#elseif editMode>
  <div class="has-edit-button">
    <img src="<@hst.link path="/images/essentials/catalog-component-icons/simple-content.png" />"/> Click to edit Simple Content
    <@hst.manageContent templateQuery="new-content-document" rootPath="content"/>
  </div>
</#if>

