<#--

    Solo - A small and beautiful blogging system written in Java.
    Copyright (c) 2010-2019, b3log.org & hacpai.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<div class="footer">
    &copy; ${year} - <a href="${servePath}">${blogTitle}</a>${footerContent} Powered by <a href="https://b3log.org" target="_blank">B3log 开源</a> • <a href="https://solo.b3log.org" target="_blank">Solo</a> ${version}
    <div>
        Theme <a rel="friend" href="https://github.com/b3log/solo-skins" target="_blank">Bruce</a>
        by
        <a rel="friend" href="http://88250.b3log.org" target="_blank">88250</a>
    </div>
    <div><em>All rights reserved.</em></div>
</div>

<script type="text/javascript">
    var latkeConfig = {
        "servePath": "${servePath}",
        "staticServePath": "${staticServePath}",
        "isLoggedIn": "${isLoggedIn?string}"
    };

    var Label = {
        "markedAvailable": ${markedAvailable?c},
        "hljsStyle": "atom-one-light",
        "langLabel": "${langLabel}",
        "tag1Label": "${tag1Label}",
        "viewLabel": "${viewLabel}",
        "commentLabel": "${commentLabel}",
        "topArticleLabel": "${topArticleLabel}",
        "updatedLabel": "${updatedLabel}",
        "contentLabel": "${fullContentLabel}",
        "abstractLabel": "${abstractLabel}",
        "adminLabel": "${adminLabel}",
        "logoutLabel": "${logoutLabel}",
        "skinDirName": "${skinDirName}"
    };
</script>
<script type="text/javascript" src="${staticServePath}/js/lib/jquery/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}" charset="utf-8"></script>
<script type="text/javascript" src="${staticServePath}/skins/${skinDirName}/js/bootstrap${miniPostfix}.js?${staticResourceVersion}" charset="utf-8"></script>
<script>
    Util.init()
    Util.setTopBar()
</script>
${plugins}
