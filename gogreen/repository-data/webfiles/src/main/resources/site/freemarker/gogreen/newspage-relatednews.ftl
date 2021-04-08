<#include "../include/imports.ftl">
<#if document.relatednews?has_content>
    <div class="hst-container">
        <div class="hst-container-item">
            <div class="sidebar-block">
                <h3 class="h3-sidebar-title sidebar-title">Related News</h3>
                <div class="sidebar-content">
                    <ul>
                        <#list document.relatednews as relatedItem>
                            <@hst.link var="relatedLink" hippobean=relatedItem />
                            <li>
                                <a href="${relatedLink}">${relatedItem.title?html}</a>
                            </li>
                        </#list>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</#if>
