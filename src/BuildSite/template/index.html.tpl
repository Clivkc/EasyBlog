<!DOCTYPE html>
<html>
<!-- 引入不蒜子计数 -->
<script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>
<center>
浏览量：<span id="busuanzi_value_site_pv"><i class="fa fa-spinner fa-spin"></i></span>&#x1f440; | 访客数：<span id="busuanzi_value_site_uv"><i class="fa fa-spinner fa-spin"></i></span>&#x1f466;
</center>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name='description' content='CU小站，分享技术游戏'>
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
