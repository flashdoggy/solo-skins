<#--

    Solo - A small and beautiful blogging system written in Java.
    Copyright (c) 2010-present, b3log.org

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
<#include "../../common-template/macro-common_head.ftl">
<!DOCTYPE html>
<html>
<head>
    <@head title="${blogTitle}">
        <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/base.css?${staticResourceVersion}"/>
        <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/163-music-use.css?${staticResourceVersion}"/>
        <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/163music-iframe.css?${staticResourceVersion}"/>
    </@head>

    <style type="text/css">
        .g-btmbar a {
            border-bottom: 0px;
        }
    </style>
</head>

<body>
<#include "header.ftl">
<main class="main">
    <div class="wrapper">
        <div class="content">
        <#include "article-list.ftl">
        </div>
    <#include "side.ftl">
    </div>
    <audio hidden="hidden" id="music-163-audio" ></audio>
    <div class="g-btmbar">
        <div class="m-playbar m-playbar-lock" style="top: -53px; visibility: visible;" id="auto-id-obUGKDKf785564R5">
            <div class="updn">
                <div class="left f-fl"><a href="javascript:;" class="btn" hidefocus="true" data-action="lock"></a></div>
                <div class="right f-fl"></div>
            </div>
            <div class="bg"></div>
            <div class="hand" title="展开播放条"></div>
            <div class="wrap" id="g_player" style="margin-left: -498.5px;">
                <div class="btns">
                    <a href="javascript:;" hidefocus="true" data-action="prev" class="prv" title="上一首(ctrl+←)">上一首</a>
                    <a href="javascript:;" hidefocus="true" data-action="play" class="ply j-flag" title="播放/暂停(p)">播放/暂停</a>
                    <a href="javascript:;" hidefocus="true" data-action="next" class="nxt" title="下一首(ctrl+→)">下一首</a>
                </div>
                <div class="head j-flag"><img src="https://p1.music.126.net/Y6Q4Uh-O00itfYH0ewnfRw==/109951164383774077.jpg?param=34y34"><a href="https://music.163.com/song?id=1392925633" hidefocus="true" class="mask"></a></div>
                <div class="play">
                    <div class="j-flag words"> <a hidefocus="true" href="https://music.163.com/song?id=1392925633" class="f-thide name fc1 f-fl" title="少女">少女</a><a hidefocus="true" href="https://music.163.com/mv?id=10893671" class="mv f-fl" title="MV"></a><span class="by f-thide f-fl"><span title="林宥嘉"><a class="" href="https://music.163.com/artist?id=3685" hidefocus="true">林宥嘉</a></span></span></div>
                    <div class="m-pbar" data-action="noop">
                        <div class="barbg j-flag" id="auto-id-ano03IHlqNwg3aU4">
                            <div class="rdy" style="width: 0%;"></div>
                            <div class="cur" style="width:0%;"><span class="btn f-tdn f-alpha" id="auto-id-px4whar8AIE28rB9"><i></i></span></div>
                        </div>
                        <span class="j-flag time"><em>00:00</em> / 00:00</span>
                    </div>
                </div>
                <div class="oper f-fl">
                    <a href="javascript:;" hidefocus="true" data-action="like" class="icn icn-add j-flag" title="收藏">收藏</a>
                    <a href="javascript:;" hidefocus="true" data-action="share" class="icn icn-share" title="分享">分享</a>
                </div>
                <div class="ctrl f-fl f-pr j-flag">
                    <div class="m-vol" style="visibility:hidden;" id="auto-id-OvCxL21EaOv4xF5B">
                        <div class="barbg"></div>
                        <div class="vbg j-t" id="auto-id-4IwJQeAIoRqspBL7"><div class="curr j-t" style="height: 93px;"></div>
                            <span class="btn f-alpha j-t" style="top: 0px;"></span></div>
                    </div>
                    <a href="javascript:;" hidefocus="true" data-action="volume" class="icn icn-vol"></a>
                    <a href="javascript:;" hidefocus="true" data-action="mode" class="icn icn-loop" title="循环"></a>
                    <span class="add f-pr">
                        <span class="tip" style="display:none;">已添加到播放列表</span>
                        <a href="javascript:;" title="播放列表" hidefocus="true" data-action="panel" class="icn icn-list s-fc3">2</a>
                    </span>
                    <div class="tip tip-1" style="display:none;">循环</div>
                </div>
            </div>
        </div>
        <div class="list" id="g_playlist">
            <div class="listhd">
                <div class="listhdc">
                    <h4>播放列表(<span class="j-flag">2</span>)</h4>
                    <a href="javascript:;" class="addall" data-action="likeall"><span class="ico ico-add"></span>收藏全部</a><span class="line"></span>
                    <a href="javascript:;" class="clear" data-action="clear"><span class="ico icn-del"></span>清除</a>
                    <p class="lytit f-ff0 f-thide j-flag">少女</p>
                    <span class="close" data-action="close">关闭</span>
                </div>
            </div>
            <div class="listbd">
                <img class="imgbg j-flag" id="auto-id-kvQgovIx6RTi8u7h" src="https://music.163.com/api/img/blur/109951164383774077" style="top: -360px;">
                <div class="msk"></div>
                <div class="listbdc j-flag" id="auto-id-6wysGVr2KrT4DozZ"><ul class="f-cb"><li data-id="1307463441" data-action="play"><div class="col col-1"></div><div class="col col-2">PLASTIC</div><div class="col col-3"><div class="icns"><i class="ico icn-del" title="删除" data-id="1307463441" data-action="delete">删除</i><i class="ico ico-dl" title="下载" data-id="1307463441" data-action="download">下载</i><i class="ico ico-share" title="分享" data-id="1307463441" data-action="share">分享</i><i class="j-t ico ico-add" title="收藏" data-id="1307463441" data-action="like">收藏</i></div></div><div class="col col-4"><span title="sakehands"><a class="" href="/artist?id=29627842" hidefocus="true">sakehands</a></span></div><div class="col col-5">03:26</div><div class="col col-6"><a href="javascript:;" class="ico ico-src ico-src-dis" title="暂无来源" data-action="link">来源</a></div></li><li class="z-sel" data-id="1392925633" data-action="play"><div class="col col-1"><div class="playicn"></div></div><div class="col col-2">少女</div><div class="col col-3"><div class="icns"><i class="ico icn-del" title="删除" data-id="1392925633" data-action="delete">删除</i><i class="ico ico-dl" title="下载" data-id="1392925633" data-action="download">下载</i><i class="ico ico-share" title="分享" data-id="1392925633" data-action="share">分享</i><i class="j-t ico ico-add" title="收藏" data-id="1392925633" data-action="like">收藏</i></div></div><div class="col col-4"><span title="林宥嘉"><a class="" href="/artist?id=3685" hidefocus="true">林宥嘉</a></span></div><div class="col col-5">03:55</div><div class="col col-6"><a href="javascript:;" class="ico ico-src ico-src-dis" title="暂无来源" data-action="link">来源</a></div></li></ul></div>
                <div class="bline j-flag" id="auto-id-SsAWWdX03oMEhXE0"><span class="scrol" hidefocus="true" style="height: 260px; display: none; top: 0px;"></span></div>
                <div class="ask j-flag" id="auto-id-9pqgrexRBiOZRhDJ">
                    <a class="ico ico-ask"></a>
                </div>
                <div class="upload j-flag"> <a data-action="close" href="https://music.163.com/lyric/report?id=1392925633">报错</a></div>
                <div class="msk2"></div>
                <div class="listlyric j-flag" id="auto-id-fL2IKWeIhULu9VFH"> <p class="j-flag" data-time="0">作曲 : 林宥嘉</p><p class="j-flag" data-time="0.515">作词 : 黄伟文/林宥嘉</p><p class="j-flag" data-time="1.546">我想要买一间房子</p><p class="j-flag" data-time="6.913">可能不需要车子</p><p class="j-flag" data-time="11.729">最好生一两个孩子</p><p class="j-flag" data-time="16.978">来复制我们的样子</p><p class="j-flag" data-time="22.163"></p><p class="j-flag z-sel" data-time="22.48">作为一个平凡的男子</p><p class="j-flag" data-time="27.662">我对童话的婚礼有点坚持</p><p class="j-flag" data-time="32.863">跟你才约会一次</p><p class="j-flag" data-time="36.596">人生从此没其他大事</p><p class="j-flag" data-time="41.168"></p><p class="j-flag" data-time="41.37">Baby自从遇见你 我比你还要少女</p><p class="j-flag" data-time="47.469">偶像的位置 一夜间 全都换成……</p><p class="j-flag" data-time="52.868">你和巧克力 为什么永远吃不腻</p><p class="j-flag" data-time="60.202">What have you done to me</p><p class="j-flag" data-time="62.136"></p><p class="j-flag" data-time="62.386">Baby恋爱的男子 每一个都是少女</p><p class="j-flag" data-time="68.536">每次见到你 忍不住 超超超愿意</p><p class="j-flag" data-time="75.036">Do～Do～Yeah</p><p class="j-flag" data-time="78.836">方圆百里 都懂我的心</p><p class="j-flag" data-time="85.836"></p><p class="j-flag" data-time="88.318">浪漫的爱情再定义</p><p class="j-flag" data-time="93.75399999999999">快乐回到三年级</p><p class="j-flag" data-time="98.634">自以为完整的身体</p><p class="j-flag" data-time="104.019">突然间倒带再发育</p><p class="j-flag" data-time="109.068"></p><p class="j-flag" data-time="109.33500000000001">魔羯巨蟹该不该一起</p><p class="j-flag" data-time="114.435">说不配的要道歉还来得及</p><p class="j-flag" data-time="119.851">我们不需要奇迹</p><p class="j-flag" data-time="123.552">因为我是那么适合你</p><p class="j-flag" data-time="128.052"></p><p class="j-flag" data-time="128.269">Baby自从遇见你 我比你还要少女</p><p class="j-flag" data-time="134.434">偶像的位置 一夜间 全都换成……</p><p class="j-flag" data-time="139.585">你和巧克力 为什么永远吃不腻</p><p class="j-flag" data-time="147.072">What have you done to me</p><p class="j-flag" data-time="148.968"></p><p class="j-flag" data-time="149.168">Baby恋爱的男子 每一个都是少女</p><p class="j-flag" data-time="155.434">每次见到你 忍不住 超超超愿意</p><p class="j-flag" data-time="162.244">Do～Do～Yeah</p><p class="j-flag" data-time="165.851">我只等你 回我同一句</p><p class="j-flag" data-time="174.085"></p><p class="j-flag" data-time="191.185">Baby做我的爱妻 一百岁还是少女</p><p class="j-flag" data-time="197.719">有没有勇气 从今后让我照顾你</p><p class="j-flag" data-time="204.135"></p><p class="j-flag" data-time="208.086">此情不渝</p><p class="j-flag" data-time="210.851">永结同心</p><p class="j-flag" data-time="213.435">再也不是</p><p class="j-flag" data-time="215.721">空洞的成语</p><p class="j-flag" data-time="221.144"></p><p class="j-flag" data-time="222.254">我想要买一间房子</p><p class="j-flag" data-time="228.036">里面住两个少女</p><p class="j-flag" data-time="233.661"></p><p class="j-flag" data-time="233.993">OP: HIM Music Publishing Inc.</p><p class="j-flag" data-time="234.224">OP: Wyman Limited (Warner Chappell Music, Hong Kong Limited)</p><p class="j-flag" data-time="234.425">SP: Warner Chappell Music, Hong Kong Limited Taiwan Branch</p></div>
                <div class="bline bline-1 j-flag" id="auto-id-wP88eon3xVfahwnr">
                    <span class="scrol scrol-1 j-flag" hidefocus="true" id="auto-id-f7FgSTFMuapmQNRT" style="height: 31.7746px; display: block; top: 18px;"></span>
                </div>
            </div>
        </div>
    </div>
</main>
<#include "footer.ftl">
<script src="https://s3.music.126.net/web/s/core_5bc132fe7c78412ced3210632673cb8a.js?5bc132fe7c78412ced3210632673cb8a" type="text/javascript"></script>
<script src="${staticServePath}/skins/${skinDirName}/js/163-music.js?${staticResourceVersion}" type="text/javascript"></script>
<script src="https://acstatic-dun.126.net/2.5.5_0a695276/watchman.min.js" type="text/javascript"></script>
<iframe frameborder="0" id="auto-id-X49pZdymKalotCJL" style="display: none;" src="about:blank"></iframe>
<script type="text/javascript" src="https://acstatic-dun.126.net/tool.min.js"></script>
<script src="https://s3.music.126.net/web/s/pt_frame_index_3919dca47926cdd3c8711dd15143f99b.js?3919dca47926cdd3c8711dd15143f99b" type="text/javascript"></script>
<div><div></div></div><script type="text/javascript" src="https://acstatic-dun.126.net/tool.min.js"></script>
</body>
</html>
