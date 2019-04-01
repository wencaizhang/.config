// ==UserScript==
// @name         谷歌访问助手之覆盖 2345 网站
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  try to take over the world!
// @author       You
// @match        https://www.2345.com/*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';
    // 定时器，2 S 后关闭 2345 网页
    setTimeout(function () {
      // TODO 如何关闭网页
    }, 2000)
    // 打开新窗口
    // 可以将下面网址替换为任意你想要跳转的网址
    window.open('https://bing.com');
})();
