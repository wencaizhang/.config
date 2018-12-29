// ==UserScript==
// @name         码云页面样式自定义
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  try to take over the world!
// @author       wencaizhang
// @match        https://gitee.com/*
// @grant        none
// ==/UserScript==

(function() {
  "use strict";
  var style = document.createElement("style");
  style.innerHTML = `
    .git-profile-projects-ulist .project {
      padding-top: 20px;
      border-top: 1px solid #ccc;
    }
    #git-header-nav .ui.menu > a,
    .ent-poster {
      display: none;
    }
  `;
  document.querySelector("body").appendChild(style);
})();
