// 文件名：urlShortenerAPI.js

// 用一个对象来保存长链接和对应的短链接
var urlDatabase = {};

// 生成一个随机的短标识符
function generateShortUrl() {
  return Math.random().toString(36).substr(2, 7);
}

// 将长链接生成短链接并保存到urlDatabase中
function shortenUrl(longUrl) {
  var shortUrl = 'http://example.com/' + generateShortUrl();
  urlDatabase[shortUrl] = longUrl;
  return shortUrl;
}

// 获取长链接
function getLongUrl(shortUrl) {
  return urlDatabase[shortUrl];
}