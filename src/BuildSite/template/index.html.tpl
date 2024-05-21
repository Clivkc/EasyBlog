<!DOCTYPE html>
<html>
<SCRIPT language=JavaScript>

<!--

var caution = false

function setCookie(name, value, expires, path, domain, secure) {

var curCookie = name + "=" + escape(value) +

((expires) ? "; expires=" + expires.toGMTString() : "") +

((path) ? "; path=" + path : "") +

((domain) ? "; domain=" + domain : "") +

((secure) ? "; secure" : "")

if (!caution || (name + "=" + escape(value)).length <= 4000)

document.cookie = curCookie

else

if (confirm("Cookie exceeds 4KB and will be cut!"))

document.cookie = curCookie

}

function getCookie(name) {

var prefix = name + "="

var cookieStartIndex = document.cookie.indexOf(prefix)

if (cookieStartIndex == -1)

return null

var cookieEndIndex = document.cookie.indexOf(";", cookieStartIndex + prefix.length)

if (cookieEndIndex == -1)

cookieEndIndex = document.cookie.length

return unescape(document.cookie.substring(cookieStartIndex + prefix.length, cookieEndIndex))

}

function deleteCookie(name, path, domain) {

if (getCookie(name)) {

document.cookie = name + "=" +

((path) ? "; path=" + path : "") +

((domain) ? "; domain=" + domain : "") +

"; expires=Thu, 01-Jan-70 00:00:01 GMT"

}

}

function fixDate(date) {

var base = new Date(0)

var skew = base.getTime()

if (skew > 0)

date.setTime(date.getTime() - skew)

}

var now = new Date()

fixDate(now)

now.setTime(now.getTime() + 365 * 24 * 60 * 60 * 1000)

var visits = getCookie("counter")

if (!visits)

visits = 1

else

visits = parseInt(visits) + 1

setCookie("counter", visits, now)

document.write("欢迎光临本站，您是第" + visits + "位访问者！")

// -->

</SCRIPT>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>@{Name}</title>
    <meta name="description" content="@{Description}" />
    <base href="/" />
    <link rel="stylesheet" href="@{BaseUrl}css/app.css" />
    <link rel="stylesheet" href="@{BaseUrl}css/markdown.css" />
    <link rel="icon" type="image/png" href="@{BaseUrl}favicon.ico" />
    <script>const baseUrl = '@{BaseUrl}';</script>
    <script src="@{BaseUrl}js/index.js"></script>
    <!--iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=410 height=86 src="//music.163.com/outchain/player?type=2&id=2124731026&auto=1&height=66"></iframe-->
    <style>
        img {
        display: block;
        margin: 0 auto;
        }
    </style>
</head>

<body class="dark:bg-neutral-900">
    <div class="text-white py-4 bg-gray-600 dark:bg-neutral-800">
    <div class="container mx-auto flex items-center justify-between">
        <a href="@{BaseUrl}" class="text-2xl font-semibold hidden sm:block">@{Name}</a>
        <span class="hidden sm:block">@{Description}</span>
        <div class="flex items-center">
        <input id="searchText" placeholder="CU小站" class="px-4 py-2 border border-gray-600 rounded-lg dark:bg-neutral-800 text-white focus:outline-none" />
        <button id="searchBtn" class="ml-2 bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-lg">
            搜索
        </button>
        </div>
    </div>
    </div>

    <div class="container mx-auto mt-2">
    <div class="flex">
        <div class="sm:w-3/4 sm:pr-4 w-full">
        <!-- 博客卡片列表 -->
        <div class="px-3 bg-white dark:bg-neutral-900" id="blogList">
            <!-- 博客卡片内容 -->
            @{blogList}
        </div>
    </div>

    <div class="w-1/4 mt-1 hidden sm:block">
        <!-- 分类 -->
        @{siderbar}
    </div>
    </div>
    </div>

    <div class="dark:bg-neutral-800 py-4 fixed bottom-0 w-full bg-gray-200">
    <div class="container mx-auto text-center">
        <p class="text-neutral-600 dark:text-neutral-300">
        @{Name}
        <!--a class="text-blue-600" target="_blank" href="https://blog-cu.sbcnsb.cn">Powered by Ater Blog</a-->
        <a href="https://icp.gov.moe/?keyword=20242045" target="_blank">萌ICP备20242045号</a>
        <a href="https://ipv6test.wcode.net/?q=https%3A%2F%2Fblog.free1.asia%2F&ipv6-only=1" target="_blank"><img src="https://ipv6test.wcode.net/badges/ipv6.svg?host=blog.free1.asia" alt="" style="max-width: 100%; height: 24px;"/></a>
        </p>
    </div>
    </div>
</body>
</html>
