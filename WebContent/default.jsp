<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>

<!DOCTYPE html>
<html class="no-icon-fonts">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>NBA Clubhouse</title>
<meta name="description">
<meta property="og:title" content="NBA Clubhouse" />
<meta property="og:description" content="Read more on ESPN" />
<meta property="og:type" content="website" />
<meta name="twitter:title" content="NBA Clubhouse" />
<meta name="title" content="NBA Clubhouse" />
<meta name="medium" content="guide" />

<!-- Indicate preferred brand name for Google to display -->
<script type="application/ld+json">
	{
		"@context": "http://schema.org",
		"@type":    "WebSite",
		"name":     "ESPN",
		"url":      "http://www.espn.com/"
	}
</script>
<!--
<PageMap>
	<DataObject type="document">
		<Attribute name="title">NBA Clubhouse</Attribute>
	</DataObject>
</PageMap>
-->
<script type="text/javascript">
;(function(){
function rc(a){for(var b=a+"=",c=document.cookie.split(";"),d=0;d<c.length;d++){for(var e=c[d];" "===e.charAt(0);)e=e.substring(1,e.length);if(0===e.indexOf(b))return e.substring(b.length,e.length)}return null}var _nr=!1,_nrCookie=rc("_nr");null!==_nrCookie?"1"===_nrCookie&&(_nr=!0):Math.floor(100*Math.random())+1===13?(_nr=!0,document.cookie="_nr=1; path=/"):(_nr=!1,document.cookie="_nr=0; path=/"),_nr&&(window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o||e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(t,e,n){function r(t){try{c.console&&console.log(t)}catch(e){}}var o,i=t("ee"),a=t(19),c={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(c.console=!0,o.indexOf("dev")!==-1&&(c.dev=!0),o.indexOf("nr_dev")!==-1&&(c.nrDev=!0))}catch(s){}c.nrDev&&i.on("internal-error",function(t){r(t.stack)}),c.dev&&i.on("fn-err",function(t,e,n){r(n.stack)}),c.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(c,function(t,e){return t}).join(", ")))},{}],2:[function(t,e,n){function r(t,e,n,r,o){try{h?h-=1:i("err",[o||new UncaughtException(t,e,n)])}catch(c){try{i("ierr",[c,(new Date).getTime(),!0])}catch(s){}}return"function"==typeof f&&f.apply(this,a(arguments))}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function o(t){i("err",[t,(new Date).getTime()])}var i=t("handle"),a=t(20),c=t("ee"),s=t("loader"),f=window.onerror,u=!1,h=0;s.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(p){"stack"in p&&(t(12),t(11),"addEventListener"in window&&t(6),s.xhrWrappable&&t(13),u=!0)}c.on("fn-start",function(t,e,n){u&&(h+=1)}),c.on("fn-err",function(t,e,n){u&&(this.thrown=!0,o(n))}),c.on("fn-end",function(){u&&!this.thrown&&h>0&&(h-=1)}),c.on("internal-error",function(t){i("ierr",[t,(new Date).getTime(),!0])})},{}],3:[function(t,e,n){t("loader").features.ins=!0},{}],4:[function(t,e,n){function r(){N++,S=y.hash,this[u]=Date.now()}function o(){N--,y.hash!==S&&i(0,!0);var t=Date.now();this[l]=~~this[l]+t-this[u],this[h]=t}function i(t,e){x.emit("newURL",[""+y,e])}function a(t,e){t.on(e,function(){this[e]=Date.now()})}var c="-start",s="-end",f="-body",u="fn"+c,h="fn"+s,p="cb"+c,d="cb"+s,l="jsTime",m="fetch",v="addEventListener",w=window,y=w.location;if(w[v]){var g=t(9),b=t(10),x=t(8),E=t(6),T=t(12),O=t(7),P=t(13),R=t("ee"),D=R.get("tracer");t(14),t("loader").features.spa=!0;var S,M=w[v],N=0;R.on(u,r),R.on(p,r),R.on(h,o),R.on(d,o),R.buffer([u,h,"xhr-done","xhr-resolved"]),E.buffer([u]),T.buffer(["setTimeout"+s,"clearTimeout"+c,u]),P.buffer([u,"new-xhr","open-xhr"+c]),O.buffer([m+c,m+"-done",m+f+c,m+f+s]),x.buffer(["newURL"]),g.buffer([u]),b.buffer(["propagate",p,d,"executor-err","resolve"+c]),D.buffer([u,"no-"+u]),a(P,"open-xhr"+c),a(R,"xhr-resolved"),a(R,"xhr-done"),a(O,m+c),a(O,m+"-done"),x.on("pushState-end",i),x.on("replaceState-end",i),M("hashchange",i,!0),M("load",i,!0),M("popstate",function(){i(0,N>1)},!0)}},{}],5:[function(t,e,n){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var o=t("ee"),i=t("handle"),a=t(12),c=t(11),s="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",h="bstResource",p="resource",d="-start",l="-end",m="fn"+d,v="fn"+l,w="bstTimer",y="pushState";t("loader").features.stn=!0,t(8);var g=NREUM.o.EV;o.on(m,function(t,e){var n=t[0];n instanceof g&&(this.bstStart=Date.now())}),o.on(v,function(t,e){var n=t[0];n instanceof g&&i("bst",[n,e,this.bstStart,Date.now()])}),a.on(m,function(t,e,n){this.bstStart=Date.now(),this.bstType=n}),a.on(v,function(t,e){i(w,[e,this.bstStart,Date.now(),this.bstType])}),c.on(m,function(){this.bstStart=Date.now()}),c.on(v,function(t,e){i(w,[e,this.bstStart,Date.now(),"requestAnimationFrame"])}),o.on(y+d,function(t){this.time=Date.now(),this.startPath=location.pathname+location.hash}),o.on(y+l,function(t){i("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+s]?window.performance[f](u,function(t){i(h,[window.performance.getEntriesByType(p)]),window.performance["c"+s]()},!1):window.performance[f]("webkit"+u,function(t){i(h,[window.performance.getEntriesByType(p)]),window.performance["webkitC"+s]()},!1)),document[f]("scroll",r,!1),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],6:[function(t,e,n){function r(t){for(var e=t;e&&!e.hasOwnProperty(u);)e=Object.getPrototypeOf(e);e&&o(e)}function o(t){c.inPlace(t,[u,h],"-",i)}function i(t,e){return t[1]}var a=t("ee").get("events"),c=t(21)(a),s=t("gos"),f=XMLHttpRequest,u="addEventListener",h="removeEventListener";e.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(o(window),o(f.prototype)),a.on(u+"-start",function(t,e){if(t[1]){var n=t[1];if("function"==typeof n){var r=s(n,"nr@wrapped",function(){return c(n,"fn-",null,n.name||"anonymous")});this.wrapped=t[1]=r}else"function"==typeof n.handleEvent&&c.inPlace(n,["handleEvent"],"fn-")}}),a.on(h+"-start",function(t){var e=this.wrapped;e&&(t[1]=e)})},{}],7:[function(t,e,n){function r(t,e,n){var r=t[e];"function"==typeof r&&(t[e]=function(){var t=r.apply(this,arguments);return o.emit(n+"start",arguments,t),t.then(function(e){return o.emit(n+"end",[null,e],t),e},function(e){throw o.emit(n+"end",[e],t),e})})}var o=t("ee").get("fetch"),i=t(19);e.exports=o;var a=window,c="fetch-",s=c+"body-",f=["arrayBuffer","blob","json","text","formData"],u=a.Request,h=a.Response,p=a.fetch,d="prototype";u&&h&&p&&(i(f,function(t,e){r(u[d],e,s),r(h[d],e,s)}),r(a,"fetch",c),o.on(c+"end",function(t,e){var n=this;e?e.clone().arrayBuffer().then(function(t){n.rxSize=t.byteLength,o.emit(c+"done",[null,e],n)}):o.emit(c+"done",[t],n)}))},{}],8:[function(t,e,n){var r=t("ee").get("history"),o=t(21)(r);e.exports=r,o.inPlace(window.history,["pushState","replaceState"],"-")},{}],9:[function(t,e,n){var r=t("ee").get("mutation"),o=t(21)(r),i=NREUM.o.MO;e.exports=r,i&&(window.MutationObserver=function(t){return this instanceof i?new i(o(t,"fn-")):i.apply(this,arguments)},MutationObserver.prototype=i.prototype)},{}],10:[function(t,e,n){function r(t){var e=a.context(),n=c(t,"executor-",e),r=new f(n);return a.context(r).getCtx=function(){return e},a.emit("new-promise",[r,e],e),r}function o(t,e){return e}var i=t(21),a=t("ee").get("promise"),c=i(a),s=t(19),f=NREUM.o.PR;e.exports=a,f&&(window.Promise=r,["all","race"].forEach(function(t){var e=f[t];f[t]=function(n){function r(t){return function(){a.emit("propagate",[null,!o],i),o=o||!t}}var o=!1;s(n,function(e,n){Promise.resolve(n).then(r("all"===t),r(!1))});var i=e.apply(f,arguments),c=f.resolve(i);return c}}),["resolve","reject"].forEach(function(t){var e=f[t];f[t]=function(t){var n=e.apply(f,arguments);return t!==n&&a.emit("propagate",[t,!0],n),n}}),f.prototype["catch"]=function(t){return this.then(null,t)},f.prototype=Object.create(f.prototype,{constructor:{value:r}}),s(Object.getOwnPropertyNames(f),function(t,e){try{r[e]=f[e]}catch(n){}}),a.on("executor-start",function(t){t[0]=c(t[0],"resolve-",this),t[1]=c(t[1],"resolve-",this)}),a.on("executor-err",function(t,e,n){t[1](n)}),c.inPlace(f.prototype,["then"],"then-",o),a.on("then-start",function(t,e){this.promise=e,t[0]=c(t[0],"cb-",this),t[1]=c(t[1],"cb-",this)}),a.on("then-end",function(t,e,n){this.nextPromise=n;var r=this.promise;a.emit("propagate",[r,!0],n)}),a.on("cb-end",function(t,e,n){a.emit("propagate",[n,!0],this.nextPromise)}),a.on("propagate",function(t,e,n){this.getCtx&&!e||(this.getCtx=function(){if(t instanceof Promise)var e=a.context(t);return e&&e.getCtx?e.getCtx():this})}),r.toString=function(){return""+f})},{}],11:[function(t,e,n){var r=t("ee").get("raf"),o=t(21)(r),i="equestAnimationFrame";e.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],12:[function(t,e,n){function r(t,e,n){t[0]=a(t[0],"fn-",null,n)}function o(t,e,n){this.method=n,this.timerDuration="number"==typeof t[1]?t[1]:0,t[0]=a(t[0],"fn-",this,n)}var i=t("ee").get("timer"),a=t(21)(i),c="setTimeout",s="setInterval",f="clearTimeout",u="-start",h="-";e.exports=i,a.inPlace(window,[c,"setImmediate"],c+h),a.inPlace(window,[s],s+h),a.inPlace(window,[f,"clearImmediate"],f+h),i.on(s+u,r),i.on(c+u,o)},{}],13:[function(t,e,n){function r(t,e){h.inPlace(e,["onreadystatechange"],"fn-",c)}function o(){var t=this,e=u.context(t);t.readyState>3&&!e.resolved&&(e.resolved=!0,u.emit("xhr-resolved",[],t)),h.inPlace(t,v,"fn-",c)}function i(t){w.push(t),l&&(g=-g,b.data=g)}function a(){for(var t=0;t<w.length;t++)r([],w[t]);w.length&&(w=[])}function c(t,e){return e}function s(t,e){for(var n in t)e[n]=t[n];return e}t(6);var f=t("ee"),u=f.get("xhr"),h=t(21)(u),p=NREUM.o,d=p.XHR,l=p.MO,m="readystatechange",v=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],w=[];e.exports=u;var y=window.XMLHttpRequest=function(t){var e=new d(t);try{u.emit("new-xhr",[e],e),e.addEventListener(m,o,!1)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}return e};if(s(d,y),y.prototype=d.prototype,h.inPlace(y.prototype,["open","send"],"-xhr-",c),u.on("send-xhr-start",function(t,e){r(t,e),i(e)}),u.on("open-xhr-start",r),l){var g=1,b=document.createTextNode(g);new l(a).observe(b,{characterData:!0})}else f.on("fn-end",function(t){t[0]&&t[0].type===m||a()})},{}],14:[function(t,e,n){function r(t){var e=this.params,n=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<h;r++)t.removeEventListener(u[r],this.listener,!1);if(!e.aborted){if(n.duration=(new Date).getTime()-this.startTime,4===t.readyState){e.status=t.status;var i=o(t,this.lastSize);if(i&&(n.rxSize=i),this.sameOrigin){var a=t.getResponseHeader("X-NewRelic-App-Data");a&&(e.cat=a.split(", ").pop())}}else e.status=0;n.cbTime=this.cbTime,f.emit("xhr-done",[t],t),c("xhr",[e,n,this.startTime])}}}function o(t,e){var n=t.responseType;if("json"===n&&null!==e)return e;var r="arraybuffer"===n||"blob"===n||"json"===n?t.response:t.responseText;return l(r)}function i(t,e){var n=s(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.sameOrigin=n.sameOrigin}var a=t("loader");if(a.xhrWrappable){var c=t("handle"),s=t(15),f=t("ee"),u=["load","error","abort","timeout"],h=u.length,p=t("id"),d=t(18),l=t(17),m=window.XMLHttpRequest;a.features.xhr=!0,t(13),f.on("new-xhr",function(t){var e=this;e.totalCbs=0,e.called=0,e.cbTime=0,e.end=r,e.ended=!1,e.xhrGuids={},e.lastSize=null,d&&(d>34||d<10)||window.opera||t.addEventListener("progress",function(t){e.lastSize=t.loaded},!1)}),f.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),f.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),f.on("send-xhr-start",function(t,e){var n=this.metrics,r=t[0],o=this;if(n&&r){var i=l(r);i&&(n.txSize=i)}this.startTime=(new Date).getTime(),this.listener=function(t){try{"abort"===t.type&&(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof e.onload))&&o.end(e)}catch(n){try{f.emit("internal-error",[n])}catch(r){}}};for(var a=0;a<h;a++)e.addEventListener(u[a],this.listener,!1)}),f.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),f.on("xhr-load-added",function(t,e){var n=""+p(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),f.on("xhr-load-removed",function(t,e){var n=""+p(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),f.on("addEventListener-end",function(t,e){e instanceof m&&"load"===t[0]&&f.emit("xhr-load-added",[t[1],t[2]],e)}),f.on("removeEventListener-end",function(t,e){e instanceof m&&"load"===t[0]&&f.emit("xhr-load-removed",[t[1],t[2]],e)}),f.on("fn-start",function(t,e,n){e instanceof m&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=(new Date).getTime()))}),f.on("fn-end",function(t,e){this.xhrCbStart&&f.emit("xhr-cb-time",[(new Date).getTime()-this.xhrCbStart,this.onload,e],e)})}},{}],15:[function(t,e,n){e.exports=function(t){var e=document.createElement("a"),n=window.location,r={};e.href=t,r.port=e.port;var o=e.href.split("://");!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=e.hostname||n.hostname,r.pathname=e.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname);var i=!e.protocol||":"===e.protocol||e.protocol===n.protocol,a=e.hostname===document.domain&&e.port===n.port;return r.sameOrigin=i&&(!e.hostname||a),r}},{}],16:[function(t,e,n){function r(){}function o(t,e,n){return function(){return i(t,[(new Date).getTime()].concat(c(arguments)),e?null:this,n),e?void 0:this}}var i=t("handle"),a=t(19),c=t(20),s=t("ee").get("tracer"),f=NREUM;"undefined"==typeof window.newrelic&&(newrelic=f);var u=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit"],h="api-",p=h+"ixn-";a(u,function(t,e){f[e]=o(h+e,!0,"api")}),f.addPageAction=o(h+"addPageAction",!0),e.exports=newrelic,f.interaction=function(){return(new r).get()};var d=r.prototype={createTracer:function(t,e){var n={},r=this,o="function"==typeof e;return i(p+"tracer",[Date.now(),t,n],r),function(){if(s.emit((o?"":"no-")+"fn-start",[Date.now(),r,o],n),o)try{return e.apply(this,arguments)}finally{s.emit("fn-end",[Date.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){d[e]=o(p+e)}),newrelic.noticeError=function(t){"string"==typeof t&&(t=new Error(t)),i("err",[t,(new Date).getTime()])}},{}],17:[function(t,e,n){e.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(e){return}}}},{}],18:[function(t,e,n){var r=0,o=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);o&&(r=+o[1]),e.exports=r},{}],19:[function(t,e,n){function r(t,e){var n=[],r="",i=0;for(r in t)o.call(t,r)&&(n[i]=e(r,t[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],20:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(o<0?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=r},{}],21:[function(t,e,n){function r(t){return!(t&&"function"==typeof t&&t.apply&&!t[a])}var o=t("ee"),i=t(20),a="nr@original",c=Object.prototype.hasOwnProperty,s=!1;e.exports=function(t){function e(t,e,n,o){function nrWrapper(){var r,a,c,s;try{a=this,r=i(arguments),c="function"==typeof n?n(r,a):n||{}}catch(u){h([u,"",[r,a,o],c])}f(e+"start",[r,a,o],c);try{return s=t.apply(a,r)}catch(p){throw f(e+"err",[r,a,p],c),p}finally{f(e+"end",[r,a,s],c)}}return r(t)?t:(e||(e=""),nrWrapper[a]=t,u(t,nrWrapper),nrWrapper)}function n(t,n,o,i){o||(o="");var a,c,s,f="-"===o.charAt(0);for(s=0;s<n.length;s++)c=n[s],a=t[c],r(a)||(t[c]=e(a,f?c+o:o,i,c))}function f(e,n,r){if(!s){s=!0;try{t.emit(e,n,r)}catch(o){h([o,e,n,r])}s=!1}}function u(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){h([r])}for(var o in t)c.call(t,o)&&(e[o]=t[o]);return e}function h(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=o),e.inPlace=n,e.flag=a,e}},{}],ee:[function(t,e,n){function r(){}function o(t){function e(t){return t&&t instanceof r?t:t?c(t,a,i):i()}function n(n,r,o){t&&t(n,r,o);for(var i=e(o),a=p(n),c=a.length,s=0;s<c;s++)a[s].apply(i,r);var u=f[v[n]];return u&&u.push([w,n,r,i]),i}function h(t,e){m[t]=p(t).concat(e)}function p(t){return m[t]||[]}function d(t){return u[t]=u[t]||o(n)}function l(t,e){s(t,function(t,n){e=e||"feature",v[n]=e,e in f||(f[e]=[])})}var m={},v={},w={on:h,emit:n,get:d,listeners:p,context:e,buffer:l};return w}function i(){return new r}var a="nr@context",c=t("gos"),s=t(19),f={},u={},h=e.exports=o();h.backlog=f},{}],gos:[function(t,e,n){function r(t,e,n){if(o.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[e]=r,r}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){o.buffer([t],r),o.emit(t,e,n)}var o=t("ee").get("handle");e.exports=r,r.ee=o},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!g++){var t=y.info=NREUM.info,e=u.getElementsByTagName("script")[0];if(t&&t.licenseKey&&t.applicationID&&e){s(v,function(e,n){t[e]||(t[e]=n)});var n="https"===m.split(":")[0]||t.sslForHttp;y.proto=n?"https://":"http://",c("mark",["onload",a()],null,"api");var r=u.createElement("script");r.src=y.proto+t.agent,e.parentNode.insertBefore(r,e)}}}function o(){"complete"===u.readyState&&i()}function i(){c("mark",["domContent",a()],null,"api")}function a(){return(new Date).getTime()}var c=t("handle"),s=t(19),f=window,u=f.document,h="addEventListener",p="attachEvent",d=f.XMLHttpRequest,l=d&&d.prototype;NREUM.o={ST:setTimeout,CT:clearTimeout,XHR:d,REQ:f.Request,EV:f.Event,PR:f.Promise,MO:f.MutationObserver},t(16);var m=""+location,v={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-spa-974.min.js"},w=d&&l&&l[h]&&!/CriOS/.test(navigator.userAgent),y=e.exports={offset:a(),origin:m,features:{},xhrWrappable:w};u[h]?(u[h]("DOMContentLoaded",i,!1),f[h]("load",r,!1)):(u[p]("onreadystatechange",o),f[p]("onload",r)),c("mark",["firstbyte",a()],null,"api");var g=0},{}]},{},["loader",2,14,5,3,4]),NREUM.info={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",licenseKey:"d1734eda45",applicationID:"3785502",sa:1});
})();
</script>
<script src="js/4876433d48eb43379c6a43be00ea59c7.js"></script>
<link href='http://a.espncdn.com' rel='preconnect' crossorigin>
<link href='http://a1.espncdn.com' rel='preconnect' crossorigin>
<link href='http://a2.espncdn.com' rel='preconnect' crossorigin>
<link href='http://a3.espncdn.com' rel='preconnect' crossorigin>
<link href='http://a4.espncdn.com' rel='preconnect' crossorigin>
<link href='http://tredir.go.com' rel='preconnect' crossorigin>
<link href='https://cdn.registerdisney.go.com' rel='preconnect'
	crossorigin>
<link href='http://fan.api.espn.com' rel='preconnect' crossorigin>
<link href='http://cdn.espn.com' rel='preconnect' crossorigin>

<link rel="mask-icon" sizes="any"
	href="http://a.espncdn.com/prod/assets/icons/E.svg" color="#990000">
<link rel="shortcut icon" href="http://a.espncdn.com/favicon.ico" />
<link rel="apple-touch-icon"
	href="http://a.espncdn.com/wireless/mw5/r1/images/bookmark-icons/espn_icon-57x57.min.png" />
<link rel="apple-touch-icon-precomposed"
	href="http://a.espncdn.com/wireless/mw5/r1/images/bookmark-icons/espn_icon-57x57.min.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="http://a.espncdn.com/wireless/mw5/r1/images/bookmark-icons/espn_icon-72x72.min.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="http://a.espncdn.com/wireless/mw5/r1/images/bookmark-icons/espn_icon-114x114.min.png">
<link rel="apple-touch-icon-precomposed" sizes="152x152"
	href="http://a.espncdn.com/wireless/mw5/r1/images/bookmark-icons/espn_icon-152x152.min.png">
<link id="font-link" rel="stylesheet" href="css/base64-benton-woff.css">
<link rel="stylesheet" href="css/shell-desktop.css" />
<link rel="stylesheet" href="css/page.css">
<link rel="stylesheet" href="css/guide-all.css">
<link class="page-type-include" rel="stylesheet"
	href="css/clubhouses.css">
<script src="js/espn-head.js"></script>

<script>
	var espn = espn || {};
	espn.isOneSite = true;
	espn.build = "0.379.11";
	espn.siteType = "full";
	espn.anonymous_favorites = "true" === "true";
	
	espn.absoluteNavLinks = false;
</script>
<script src="js/lazysizes.js" async></script>


<script>
		window.googletag = window.googletag || {};

		(function () {
			espn = window.espn || {};
			espn.ads = espn.ads || {};
			espn.ads.config = {};
			googletag.cmd = googletag.cmd || [];

			var espnAdsConfig = espn.ads.config;

			espn.ads.loadGPT = function () {
				var gads = document.createElement('script');
				gads.async = true;
				gads.type = 'text/javascript';
				gads.src = 'https://www.googletagservices.com/tag/js/gpt.js';
				var node = document.getElementsByTagName('script')[0];
				node.parentNode.insertBefore(gads, node);
				delete espn.ads.loadGPT;
			}

			if (espn.siteType === 'data-lite') {
				/**
				 * Load ad library after our deferred files. Event subscription must
				 * occur on window.load to ensure pub/sub availability.
				 */

				// Ad calls will be made when ad library inits (after window.load).
				var liteAdLoadConfigs = {
					desktop: 'init',
					mobile: 'init',
					tablet: 'init'
				};

				espnAdsConfig.load = espnAdsConfig.load || {};
				espnAdsConfig.load.defaults = liteAdLoadConfigs
				espnAdsConfig.load.frontpage = liteAdLoadConfigs;
				espnAdsConfig.load.index = liteAdLoadConfigs;
				espnAdsConfig.load.story = liteAdLoadConfigs;
			} else {
				espn.ads.loadGPT();
			}

			if (espnAdsConfig.amznAdConfig && espnAdsConfig.amznAdConfig.useAmznBids) {
				

				// Load Amazon a9 header bidding script asynchronously.
				!function(a9,a,p,s,t,A,g){if(a[a9])return;function q(c,r){a[a9]._Q.push([c,r])}a[a9]={init:function(){q('i',arguments)},fetchBids:function()
				{q('f',arguments)},_Q:[]};A=p.createElement(s);A.async=!0;A.src=t;g=p.getElementsByTagName(s)[0];g.parentNode.insertBefore(A,g)}
				('apstag',window,document,'script','//c.amazon-adsystem.com/aax2/apstag.js');
			}
			
			espn.ads.configPre = JSON.parse(JSON.stringify(espnAdsConfig));
		})();
	</script>




<script>
	// Picture element HTML shim|v it for old IE (pairs with Picturefill.js)
	document.createElement("picture");
</script>

</head>

<body class="null desktop  prod  " data-pagetype="guide" data-sport=""
	data-customstylesheet="clubhouses" data-lang="en" data-edition="en-us"
	data-app="">
	<div class="ad-slot ad-slot-exclusions" data-slot-type="exclusions"
		data-slot-kvps="pos=exclusions" data-category-exclusion="true"></div>
	<div class="ad-slot ad-slot-overlay" data-slot-type="overlay"
		data-slot-kvps="pos=outofpage" data-out-of-page="true"></div>
	<div class="ad-slot ad-slot-wallpaper" data-slot-type="wallpaper"
		data-exclude-bp="s,m" data-slot-kvps="pos=wallpaper"
		data-collapse-before-load="true"></div>
	<!-- abtest data object global -->
	<script type="text/javascript">
			var abtestData = {};
			
		</script>



	<div id="fb-root"></div>


	<div id="global-viewport"
		data-behavior="global_nav_condensed global_nav_full" class="">

		<nav id="global-nav-mobile" data-loadtype="server"></nav>

		<div class="menu-overlay-primary"></div>

		<div id="header-wrapper" data-behavior="global_header"
			class="hidden-print">





			<header id="global-header"
				class="espn-en user-account-management has-search">
				<div class="menu-overlay-secondary"></div>

				<div class="container">
					<a id="global-nav-mobile-trigger" href="#" data-route="false"><span>Menu</span></a>
					<h1>
						<a href="/" name="&lpos=sitenavdefault&lid=sitenav_main-logo">ESPN</a>
					</h1>
					<ul class="tools">
						<li class="search"><a href="#"
							class="icon-font-after icon-search-solid-after"
							id="global-search-trigger"></a>
							<div id="global-search" class="global-search">
								<input type="text" class="search-box"
									placeholder="Search Sports, Teams or Players..."><input
									type="submit" class="btn-search">
							</div></li>
						<li class="user" data-behavior="favorites_mgmt"></li>
						<li id="scores-link"><a href="#"
							id="global-scoreboard-trigger" data-route="false">Scores</a>
					</ul>
				</div>

				<nav id="global-nav" data-loadtype="server">
					<ul itemscope=""
						itemtype="http://www.schema.org/SiteNavigationElement">

						<li itemprop="name"><a itemprop="url" href="/nfl/">NFL</a></li>
						<li itemprop="name"><a itemprop="url" href="/nba/">NBA</a></li>
						<li itemprop="name"><a itemprop="url" href="/mlb/">MLB</a></li>
						<li itemprop="name"><a itemprop="url"
							href="/college-football/">NCAAF</a></li>
						<li itemprop="name"><a itemprop="url" href="/soccer/">Soccer</a></li>
						<li itemprop="name"><a itemprop="url" href="/nhl/">NHL</a></li>
						<li itemprop="name"><a itemprop="url" href="#">&hellip;</a>
							<div>
								<ul class="split">
									<li itemprop="name"><a itemprop="url" href="/tennis/">Tennis</a></li>
									<li itemprop="name"><a itemprop="url" href="/golf/">Golf</a></li>
									<li itemprop="name"><a itemprop="url"
										href="/mens-college-basketball/">NCAAM</a></li>
									<li itemprop="name"><a itemprop="url" href="/mma/">MMA</a></li>
									<li itemprop="name"><a itemprop="url" href="/wwe/">WWE</a></li>
									<li itemprop="name"><a itemprop="url" href="/boxing/">Boxing</a></li>
									<li itemprop="name"><a itemprop="url" href="/esports/">esports</a></li>
									<li itemprop="name"><a itemprop="url" href="/chalk/">Chalk</a></li>
									<li itemprop="name"><a itemprop="url" href="/analytics/">Analytics</a></li>
									<li itemprop="name"><a itemprop="url"
										href="/womens-basketball/">NCAAW</a></li>
									<li itemprop="name"><a itemprop="url"
										href="/womens-basketball/">WNBA</a></li>
									<li itemprop="name"><a itemprop="url"
										href="/racing/nascar/">NASCAR</a></li>
									<li itemprop="name"><a itemprop="url" href="/jayski/">Jayski</a></li>
									<li itemprop="name"><a itemprop="url" href="/racing/">Racing</a></li>
									<li itemprop="name"><a itemprop="url"
										href="/horse-racing/">Horse</a></li>
									<li itemprop="name"><a itemprop="url"
										href="http://www.espn.com/college-sports/football/recruiting/">RN
											FB</a></li>
									<li itemprop="name"><a itemprop="url"
										href="http://www.espn.com/college-sports/basketball/recruiting/index">RN
											BB</a></li>
									<li itemprop="name"><a itemprop="url"
										href="/college-sports/">NCAA</a></li>
									<li itemprop="name"><a itemprop="url"
										href="http://www.espn.com/sports/llws17/story/_/page/LittleLeagueWorldSeries/little-league-world-series-espn">LLWS</a></li>
									<li itemprop="name"><a itemprop="url" href="/olympics/">Olympic
											Sports</a></li>
									<li itemprop="name"><a itemprop="url"
										href="http://www.espn.com/specialolympics/">Special
											Olympics</a></li>
									<li itemprop="name"><a itemprop="url"
										href="http://xgames.com/">X Games</a></li>
									<li itemprop="name"><a itemprop="url"
										href="http://espncricinfo.com/">Cricket</a></li>
									<li itemprop="name"><a itemprop="url"
										href="http://www.espnscrum.com/">Rugby</a></li>
									<li itemprop="name"><a itemprop="url" href="/endurance/">Endurance</a></li>
									<li itemprop="name"><a itemprop="url"
										href="http://www.tsn.ca/cfl">CFL</a></li>
								</ul>
							</div></li>
						<li class="pillar more-espn"><a href="#">More ESPN</a></li>
						<li class="pillar fantasy"><a href="/fantasy/">登陆</a></li>
						<li class="pillar listen"><a
							href="http://www.espn.com/espnradio/index">Listen</a></li>
						<li class="pillar watch"><a href="http://www.espn.com/watch/">Watch</a></li>
					</ul>

				</nav>






				<nav id="global-nav-secondary" data-loadtype="server">
					<div class="global-nav-container">

						<script type="text/javascript">
		var espn = espn || {};
		espn.nav = espn.nav || {};
		espn.nav.navId = 11929946;
		espn.nav.isFallback = false;

		
		

	</script>
					</div>
				</nav>

			</header>
		</div>

		<section id="pane-main">

			<div id="custom-nav" data-id="null"></div>

			<div class="ad-slot ad-slot-banner ad-wrapper"
				data-slot-type="banner" data-slot-kvps="pos=top"></div>

			<section id="main-container">

				<div class="main-content null"></div>



			</section>

			<div class="cookie-overlay" data-behavior="cookie_consent">
				<h1>ABOUT COOKIES</h1>
				<p class="message">We use cookies to offer an improved online
					experience. By clicking "OK" without changing your settings you are
					giving your consent to receive cookies.</p>
				<button class="button med stand-alone">OK</button>
			</div>

		</section>
	</div>

	<script>
	var espn_ui = window.espn_ui || {};
	espn_ui.staticRef = "http://a.espncdn.com/redesign/0.379.11";
	espn_ui.imgRef = "http://a.espncdn.com/redesign/assets/img/";
	espn_ui.insertRef = "http://a.espncdn.com";
	espn_ui.deviceType = "desktop";
	espn_ui.pageShell = false;
	espn_ui.pubKey = null;
	espn.api = {};
	espn.api.disasterURLs = {
		"cdn.espn.com":"cdn.espn.com",
		"sports.core.api.espn.com":"sports.core.api.espn.com",
		"site.api.espn.com":"site.api.espn.com",
		"site.api.prod.espninfra.starwave.com":"site.api.prod.espninfra.starwave.com",
		"fan.core.api.espn.com":"fan.core.api.espn.com",
		"site.core.api.prod.espninfra.starwave.com":"site.core.api.prod.espninfra.starwave.com",
		"api.espn.com":"api.espn.com",
		"api-app.espn.com":"api-app.espn.com",
		"api.prod.espninfra.starwave.com":"api.prod.espninfra.starwave.com"
	};
	espn_ui.webview = false;
	espn_ui.useNativeBridge = false;
	espn_ui.onefeed = false;
	espn_ui.abtests = {"kahuna":40,"kplus":41,"kminus":42,"auddev1":45,"auddev2":46,"auddevcontrol":47,"headlinetester":48,"xlprofile":49,"largeprofile":50,"adtestcontrol":51,"control":52,"carousel":53,"followcarouselcontrol":54,"followcarouseltest":55,"followcarouselenabled":56};
	espn_ui.isCurated = false;
	espn_ui.error = false;
	
	function setIsCurated () {
		$('#news-feed').attr('data-curated', espn_ui.isCurated);
		$(document).trigger('checkIfShouldAutoUpdate');
		espn_ui.checkIfShouldAutoUpdate = true;
	}
	
	//this is also set on ajax page loads in js/helpers/page.js
	if (document.readyState == 'complete') {
		setIsCurated();
	} else {
		window.onload = setIsCurated;
	}

	var tcStatus = {"tcTwoLocked":true,"tcLocked":true,"tcwLocked":true,"tcTwoOn":false,"tcwOn":false,"tcOn":false};

</script>
	<script src="js/espn-critical.js"></script>

	<script type='text/javascript'>
			var espn = espn || {};

			// Build skeleton for namespace.
			espn.scoreboard = {
				topics: {
					scoreboard: '',
					scoreboxes: []
				},
				models: {},
				views: {},
				collections: {},
				timezoneOffset: 0,
				favorites: {},
				editData: {},
				activeLeague: 'topEvents',
				hiddenLeague: 'null',
				settings: {
					activeLeagues: [{"sportId":0,"displayName":"Top Events","league":"topEvents","sortOrder":0},{"sportId":23,"top25Only":false,"displayName":"NCAAF","league":"college-football","sortOrder":1,"link":{"onclick":"","href":"http://www.espn.com/college-football/scoreboard","title":"Full Scoreboard &#187;"},"sport":"football"},{"sportId":46,"top25Only":true,"displayName":"NBA","league":"nba","sortOrder":4,"link":{"onclick":"","href":"http://www.espn.com/nba/scoreboard","title":"Full Scoreboard &#187;"},"sport":"basketball"},{"sportId":700,"top25Only":true,"displayName":"English Premier League","league":"eng.1","sortOrder":12,"link":{"onclick":"","href":"http://www.espn.com/soccer/scoreboard","title":"Full Scoreboard &#187;"},"sport":"soccer"},{"sportId":28,"top25Only":true,"displayName":"NFL","league":"nfl","sortOrder":13,"link":{"onclick":"","href":"http://www.espn.com/nfl/scoreboard","title":"Full Scoreboard &#187;"},"sport":"football"},{"sportId":41,"top25Only":false,"displayName":"NCAAM","league":"mens-college-basketball","sortOrder":14,"link":{"onclick":"","href":"http://www.espn.com/mens-college-basketball/scoreboard","title":"Full Scoreboard &#187;"},"sport":"basketball"},{"sportId":740,"top25Only":true,"displayName":"La Liga","league":"esp.1","sortOrder":15,"link":{"onclick":"","href":"http://www.espn.com/soccer/scoreboard","title":"Full Scoreboard &#187;"},"sport":"soccer"},{"sportId":730,"top25Only":true,"displayName":"Italian Serie A","league":"ita.1","sortOrder":16,"link":{"onclick":"","href":"http://www.espn.com/soccer/scoreboard","title":"Full Scoreboard &#187;"},"sport":"soccer"},{"sportId":90,"top25Only":true,"displayName":"NHL","league":"nhl","sortOrder":17,"link":{"onclick":"","href":"http://www.espn.com/nhl/scoreboard","title":"Full Scoreboard &#187;"},"sport":"hockey"},{"sportId":54,"top25Only":true,"displayName":"NCAAW","league":"womens-college-basketball","sortOrder":18,"link":{"onclick":"","href":"/womens-college-basketball/scoreboard","title":"Full Scoreboard &#187;"},"sport":"basketball"}],
					useStatic: false,
					initialTopic: 'event-topevents',
					version: 2,
					topEventsId: 4379198
					
					
					
					
				},
				data: {"sports":[{"uid":"s:20","leagues":[{"uid":"s:20~l:23","smartdates":[{"week":15,"seasontype":2,"season":2017,"label":"Week 15"},{"week":1,"seasontype":3,"season":2017,"label":"Bowls"},{"week":1,"seasontype":4,"season":2017,"label":"All-Star"}],"name":"NCAA Football","id":"23","shortName":"NCAA Football","abbreviation":"college-football","slug":"college-football","events":[{"date":"2017-12-26T18:30:00Z","broadcast":"ESPN","week":1,"notes":[{"text":"ZAXBY'S HEART OF DALLAS BOWL","type":"event","headline":"ZAXBY'S HEART OF DALLAS BOWL"}],"timeValid":true,"link":"","video":{"gameId":400953395,"cerebroId":"5a42e19ae4b066f53afc9c43","images":[{"name":"Poster Image","alt":"","width":576,"caption":"","credit":"","url":"http://media.video-cdn.espn.com/images/2017/1226/dm_171226_ncf_utah_wvu_hl/dm_171226_ncf_utah_wvu_hl.jpg","height":324}],"thumbnail":"http://a.espncdn.com/media/motion/2017/1226/dm_171226_ncf_utah_wvu_hl/dm_171226_ncf_utah_wvu_hl.jpg","ad":{"sport":"ncf","bundle":"ncf_highlights"},"keywords":[],"timeRestrictions":{"embargoDate":"2017-12-26T23:46:55Z","expirationDate":"2037-12-29T23:09:31Z"},"caption":"Utah's Zack Moss rushes for 150 yards and a touchdown in a 30-14 victory against West Virginia in the Zaxby's Heart of Dallas Bowl. With the win, Utes head coach Kyle Whittingham improves to 11-1 in bowl games.","description":"Utah's Zack Moss rushes for 150 yards and a touchdown in a 30-14 victory against West Virginia in the Zaxby's Heart of Dallas Bowl. With the win, Utes head coach Kyle Whittingham improves to 11-1 in bowl games.","syndicatable":true,"source":"espn","tracking":{"leagueName":"No League","trackingName":"COM_NCF Highlight (Utah/West Virginia) 2017/12/26 ESHEET","coverageType":"Final Game Highlight","sportName":"ncf","trackingId":"dm_171226_ncf_utah_wvu_hl"},"duration":64,"deviceRestrictions":{"devices":["desktop","settop","handset","tablet"],"type":"whitelist"},"premium":false,"originalPublishDate":"2017-12-26T23:46:55Z","links":{"web":{"short":{"href":"http://es.pn/2DW299g"},"self":{"href":"http://espn.go.com/video/clip?id=21887137"},"href":"http://espn.go.com/video/clip?id=21887137"},"mobile":{"streaming":{"href":"http://once.unicornmedia.com/now/od/auto/4d993388-8b49-4f34-9e48-87906e690281/85957be9-026a-415e-a8ce-7bfdc19d5e23/924f910f-e006-4cbf-86a8-7406662ae5ad/content.once?UMADPARAMreferer=http://www.espn.com/video/clip?id=21887137"},"alert":{"href":"http://m.espn.go.com/general/video/videoAlert?vid=21887137"},"progressiveDownload":{"href":"http://once.unicornmedia.com/now/od/auto/4d993388-8b49-4f34-9e48-87906e690281/85957be9-026a-415e-a8ce-7bfdc19d5e23/924f910f-e006-4cbf-86a8-7406662ae5ad/content.once?UMADPARAMreferer=http://www.espn.com/video/clip?id=21887137"},"source":{"href":"http://media.video-cdn.espn.com/motion/2017/1226/dm_171226_ncf_utah_wvu_hl/dm_171226_ncf_utah_wvu_hl.mp4"},"href":"http://once.unicornmedia.com/now/od/auto/4d993388-8b49-4f34-9e48-87906e690281/85957be9-026a-415e-a8ce-7bfdc19d5e23/924f910f-e006-4cbf-86a8-7406662ae5ad/content.once?UMADPARAMreferer=http://www.espn.com/video/clip?id=21887137"},"api":{"self":{"href":"http://api.prod.espninfra.starwave.com/v1/video/clips/21887137"}},"source":{"mezzanine":{"href":"http://media.video-origin.espn.com/espnvideo/2017/1226/dm_171226_ncf_utah_wvu_hl/dm_171226_ncf_utah_wvu_hl.mp4"},"hds":{"href":"http://hds.video-cdn.espn.com/z/motion/2017/1226/dm_171226_ncf_utah_wvu_hl/dm_171226_ncf_utah_wvu_hl_rel.smil/manifest.f4m"},"href":"http://media.video-cdn.espn.com/motion/2017/1226/dm_171226_ncf_utah_wvu_hl/dm_171226_ncf_utah_wvu_hl_360p30_1464k.mp4","HD":{"href":"http://media.video-cdn.espn.com/motion/2017/1226/dm_171226_ncf_utah_wvu_hl/dm_171226_ncf_utah_wvu_hl_720p30_2896k.mp4"},"HLS":{"href":"http://pkg.video-cdn.espn.com/i/motion/2017/1226/dm_171226_ncf_utah_wvu_hl/dm_171226_ncf_utah_wvu_hl.smil/master.m3u8","HD":{"href":"http://pkg.video-cdn.espn.com/i/motion/2017/1226/dm_171226_ncf_utah_wvu_hl/dm_171226_ncf_utah_wvu_hl.smil/master.m3u8"}},"flash":{"href":"http://media.video-cdn.espn.com/motion/2017/1226/dm_171226_ncf_utah_wvu_hl/dm_171226_ncf_utah_wvu_hl.smil"},"full":{"href":"http://media.video-cdn.espn.com/motion/2017/1226/dm_171226_ncf_utah_wvu_hl/dm_171226_ncf_utah_wvu_hl_360p30_1464k.mp4"}}},"id":21887137,"lastModified":"2017-12-27T00:05:53Z","categories":[{"uid":"s:20~l:23","sportId":23,"leagueId":23,"league":{"description":"College Football","links":{"web":{"leagues":{"href":"http://www.espn.com/college-football/"}},"mobile":{"leagues":{"href":"http://m.espn.go.com/ncf/"}},"api":{"leagues":{"href":"http://api.prod.espninfra.starwave.com/v1/sports/football/college-football"}}},"id":23},"description":"College Football","id":80354,"type":"league"},{"uid":"s:20~l:23~t:254","sportId":23,"teamId":254,"description":"Utah Utes","id":1158,"team":{"description":"Utah Utes","links":{"web":{"teams":{"href":"http://www.espn.com/college-football/team/_/id/254/utah-utes"}},"mobile":{"teams":{"href":"http://m.espn.go.com/ncf/clubhouse?teamId=254"}},"api":{"teams":{"href":"http://api.prod.espninfra.starwave.com/v1/sports/football/college-football/teams/254"}}},"id":254},"type":"team"},{"uid":"s:20~l:23~t:277","sportId":23,"teamId":277,"description":"West Virginia Mountaineers","id":1118,"team":{"description":"West Virginia Mountaineers","links":{"web":{"teams":{"href":"http://www.espn.com/college-football/team/_/id/277/west-virginia-mountaineers"}},"mobile":{"teams":{"href":"http://m.espn.go.com/ncf/clubhouse?teamId=277"}},"api":{"teams":{"href":"http://api.prod.espninfra.starwave.com/v1/sports/football/college-football/teams/277"}}},"id":277},"type":"team"}],"posterImages":{"default":{"width":576,"href":"http://media.video-cdn.espn.com/motion/2017/1226/dm_171226_ncf_utah_wvu_hl/dm_171226_ncf_utah_wvu_hl_default.jpg","height":324},"full":{"href":"http://media.video-cdn.espn.com/motion/2017/1226/dm_171226_ncf_utah_wvu_hl/dm_171226_ncf_utah_wvu_hl.jpg"}},"headline":"Moss runs wild as Utah tops West Virginia"},"uid":"s:20~l:23~e:400953395~c:400953395","competitors":[{"alternateColor":"eaaa00","competitionIdPrevious":"400934560","color":"FFC600","displayName":"West Virginia Mountaineers","type":"team","abbreviation":"WVU","uid":"s:20~l:23~t:277","homeAway":"home","score":"14","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/ncaa/500-dark/277.png","record":"7-6","name":"West Virginia","logo":"http://a.espncdn.com/i/teamlogos/ncaa/500/277.png","id":"277","group":"4"},{"alternateColor":"7e8083","competitionIdPrevious":"400935329","color":"890012","displayName":"Utah Utes","type":"team","abbreviation":"UTAH","uid":"s:20~l:23~t:254","homeAway":"away","score":"30","winner":true,"logoDark":"http://a.espncdn.com/i/teamlogos/ncaa/500-dark/254.png","record":"7-6","name":"Utah","logo":"http://a.espncdn.com/i/teamlogos/ncaa/500/254.png","id":"254","group":"55"}],"appLinks":[{"rel":["event","app","watchespn"],"href":"watchespn://showEvent?gameId=400953395"},{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=football&leagueAbbrev=college-football&gameId=400953395"}],"odds":{"underOdds":-110,"overUnder":56,"awayTeamOdds":{"spreadOdds":-110,"underdog":false,"team":{"id":"254","abbreviation":"UTAH"},"favorite":true,"moneyLine":0},"away":{"moneyLine":0},"provider":{"name":"Westgate","id":"25","priority":1},"details":"UTAH -6.5","links":[],"homeTeamOdds":{"spreadOdds":-110,"underdog":true,"team":{"id":"277","abbreviation":"WVU"},"favorite":false,"moneyLine":0},"spread":6.5,"overOdds":-110,"home":{"moneyLine":0}},"season":2017,"links":[{"rel":["event","desktop","summary"],"href":"http://espn.go.com/college-football/game?gameId=400953395","text":"Summary"},{"rel":["event","desktop","boxscore"],"href":"http://espn.go.com/college-football/boxscore?gameId=400953395","text":"Box Score"}],"id":"400953395","recent":false,"summary":"Final","seasonType":3,"competitionId":"400953395","period":4,"weekText":"Bowls","broadcasts":[{"callLetters":"ESPN","broadcasterId":126,"broadcastId":126,"name":"ESPN","station":"ESPN","typeId":1,"type":"TV","priority":1,"shortName":"ESPN","region":"us","lang":"en","isNational":true}],"clock":"0:00","priority":0,"onWatch":true,"location":"Cotton Bowl","fullStatus":{"period":4,"clock":"0:00","type":{"description":"FINAL","id":3,"detail":"Final","shortDetail":"Final","state":"post"}},"status":"post"},{"date":"2017-12-26T22:15:00Z","broadcast":"ESPN","week":1,"notes":[{"text":"QUICK LANE BOWL","type":"event","headline":"QUICK LANE BOWL"}],"timeValid":true,"link":"","video":{"gameId":400953394,"cerebroId":"5a42dc40e4b066f53afc9c10","images":[{"name":"Poster Image","alt":"","width":576,"caption":"","credit":"","url":"http://media.video-cdn.espn.com/images/2017/1226/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e01424/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e01424.jpg","height":324}],"thumbnail":"http://a.espncdn.com/media/motion/2017/1226/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e01424/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e01424.jpg","ad":{"sport":"ncf","bundle":"ncf_instant_replays"},"plays":[{"id":0}],"keywords":[],"timeRestrictions":{"embargoDate":"2017-12-26T23:28:16Z","expirationDate":"2037-10-30T04:00:00Z"},"caption":"Duke's Daniel Jones finds T.J. Rahming over the middle for a 33-yard touchdown reception.","description":"Duke's Daniel Jones finds T.J. Rahming over the middle for a 33-yard touchdown reception.","syndicatable":true,"source":"espn","tracking":{"leagueName":"NCAA Football","trackingName":"evc_NCF_20171226_duke_@_niu_16cc4c4a-d993-4865-9195-06646ff1b7eb","coverageType":"Final Game Highlight","sportName":"ncf","trackingId":"evc_NCF_20171226_duke_@_niu_16cc4c4a-d993-4865-9195-06646ff1b7eb"},"duration":30,"deviceRestrictions":{"devices":["desktop","settop","handset","tablet"],"type":"whitelist"},"premium":false,"originalPublishDate":"2017-12-26T23:28:16Z","links":{"web":{"short":{"href":"http://es.pn/2DUuo8l"},"self":{"href":"http://espn.go.com/video/clip?id=21887028"},"href":"http://espn.go.com/video/clip?id=21887028"},"mobile":{"streaming":{"href":"http://once.unicornmedia.com/now/od/auto/4d993388-8b49-4f34-9e48-87906e690281/85957be9-026a-415e-a8ce-7bfdc19d5e23/6712b68b-1c2c-48dc-b8bd-1c9fcc9f99b3/content.once?UMADPARAMreferer=http://www.espn.com/video/clip?id=21887028"},"alert":{"href":"http://m.espn.go.com/general/video/videoAlert?vid=21887028"},"progressiveDownload":{"href":"http://once.unicornmedia.com/now/od/auto/4d993388-8b49-4f34-9e48-87906e690281/85957be9-026a-415e-a8ce-7bfdc19d5e23/6712b68b-1c2c-48dc-b8bd-1c9fcc9f99b3/content.once?UMADPARAMreferer=http://www.espn.com/video/clip?id=21887028"},"source":{"href":"http://media.video-cdn.espn.com/motion/fastclipper/2017/1226/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96.mp4"},"href":"http://once.unicornmedia.com/now/od/auto/4d993388-8b49-4f34-9e48-87906e690281/85957be9-026a-415e-a8ce-7bfdc19d5e23/6712b68b-1c2c-48dc-b8bd-1c9fcc9f99b3/content.once?UMADPARAMreferer=http://www.espn.com/video/clip?id=21887028"},"api":{"self":{"href":"http://api.prod.espninfra.starwave.com/v1/video/clips/21887028"}},"source":{"mezzanine":{"href":"http://media.video-origin.espn.com/espnvideo/fastclipper/2017/1226/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96.mp4"},"hds":{"href":"http://hds.video-cdn.espn.com/z/motion/fastclipper/2017/1226/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96_rel.smil/manifest.f4m"},"href":"http://media.video-cdn.espn.com/motion/fastclipper/2017/1226/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96_360p30_1464k.mp4","HD":{"href":"http://media.video-cdn.espn.com/motion/fastclipper/2017/1226/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96_720p30_2896k.mp4"},"HLS":{"href":"http://pkg.video-cdn.espn.com/i/motion/fastclipper/2017/1226/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96.smil/master.m3u8","HD":{"href":"http://pkg.video-cdn.espn.com/i/motion/fastclipper/2017/1226/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96.smil/master.m3u8"}},"flash":{"href":"http://media.video-cdn.espn.com/motion/fastclipper/2017/1226/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96.smil"},"full":{"href":"http://media.video-cdn.espn.com/motion/fastclipper/2017/1226/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e0_eb2f5ac71d96_360p30_1464k.mp4"}}},"id":21887028,"lastModified":"2017-12-27T01:37:45Z","categories":[{"uid":"s:20~l:23","sportId":23,"leagueId":23,"league":{"description":"College Football","links":{"web":{"leagues":{"href":"http://www.espn.com/college-football/"}},"mobile":{"leagues":{"href":"http://m.espn.go.com/ncf/"}},"api":{"leagues":{"href":"http://api.prod.espninfra.starwave.com/v1/sports/football/college-football"}}},"id":23},"description":"College Football","id":9571,"type":"league"},{"uid":"s:20~l:23~t:2459","sportId":23,"teamId":2459,"description":"Northern Illinois Huskies","id":1141,"team":{"description":"Northern Illinois Huskies","links":{"web":{"teams":{"href":"http://www.espn.com/college-football/team/_/id/2459/northern-illinois-huskies"}},"mobile":{"teams":{"href":"http://m.espn.go.com/ncf/clubhouse?teamId=2459"}},"api":{"teams":{"href":"http://api.prod.espninfra.starwave.com/v1/sports/football/college-football/teams/2459"}}},"id":2459},"type":"team"},{"uid":"s:20~l:23~t:150","sportId":23,"teamId":150,"description":"Duke Blue Devils","id":1061,"team":{"description":"Duke Blue Devils","links":{"web":{"teams":{"href":"http://www.espn.com/college-football/team/_/id/150/duke-blue-devils"}},"mobile":{"teams":{"href":"http://m.espn.go.com/ncf/clubhouse?teamId=150"}},"api":{"teams":{"href":"http://api.prod.espninfra.starwave.com/v1/sports/football/college-football/teams/150"}}},"id":150},"type":"team"}],"posterImages":{"default":{"width":576,"href":"http://media.video-cdn.espn.com/motion/2017/1226/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e01424/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e01424_default.jpg","height":324},"full":{"href":"http://media.video-cdn.espn.com/motion/2017/1226/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e01424/evc_NCF_20171226_duke__niu_bb81635c_cdac_45ba_b8e01424.jpg"}},"headline":"Jones links up with Rahming for TD"},"uid":"s:20~l:23~e:400953394~c:400953394","competitors":[{"alternateColor":"cc0000","competitionIdPrevious":"400945028","color":"F1122C","displayName":"Northern Illinois Huskies","type":"team","abbreviation":"NIU","uid":"s:20~l:23~t:2459","homeAway":"home","score":"14","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/ncaa/500-dark/2459.png","record":"8-5","name":"N Illinois","logo":"http://a.espncdn.com/i/teamlogos/ncaa/500/2459.png","id":"2459","group":"14"},{"alternateColor":"f1f2f3","competitionIdPrevious":"400937532","color":"001A57","displayName":"Duke Blue Devils","type":"team","abbreviation":"DUKE","uid":"s:20~l:23~t:150","homeAway":"away","score":"36","winner":true,"logoDark":"http://a.espncdn.com/i/teamlogos/ncaa/500-dark/150.png","record":"7-6","name":"Duke","logo":"http://a.espncdn.com/i/teamlogos/ncaa/500/150.png","id":"150","group":"45"}],"appLinks":[{"rel":["event","app","watchespn"],"href":"watchespn://showEvent?gameId=400953394"},{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=football&leagueAbbrev=college-football&gameId=400953394"}],"odds":{"underOdds":26.47,"overUnder":48,"awayTeamOdds":{"moneyLineOdds":55.41,"spreadReturn":-0.281,"spreadOdds":37.64,"underdog":false,"team":{"id":"150","abbreviation":"DUKE"},"favorite":true,"moneyLine":-195,"averageScore":28.94,"winPercentage":55.41,"moneyLineReturn":-0.162},"away":{"moneyLine":-195},"provider":{"name":"numberfire","id":"1003","priority":0},"details":"DUKE -4.5","links":[],"homeTeamOdds":{"moneyLineOdds":44.59,"spreadReturn":0.19,"spreadOdds":62.36,"underdog":true,"team":{"id":"2459","abbreviation":"NIU"},"favorite":false,"moneyLine":170,"averageScore":27.39,"winPercentage":44.59,"moneyLineReturn":0.204},"spread":4.5,"overOdds":71.35,"home":{"moneyLine":170}},"season":2017,"links":[{"rel":["event","desktop","summary"],"href":"http://espn.go.com/college-football/game?gameId=400953394","text":"Summary"},{"rel":["event","desktop","boxscore"],"href":"http://espn.go.com/college-football/boxscore?gameId=400953394","text":"Box Score"}],"id":"400953394","recent":true,"summary":"Final","seasonType":3,"competitionId":"400953394","period":4,"weekText":"Bowls","broadcasts":[{"callLetters":"ESPN","broadcasterId":126,"broadcastId":126,"name":"ESPN","station":"ESPN","typeId":1,"type":"TV","priority":1,"shortName":"ESPN","region":"us","lang":"en","isNational":true}],"clock":"0:00","priority":1,"onWatch":true,"location":"Ford Field","fullStatus":{"period":4,"clock":"0:00","type":{"description":"FINAL","id":3,"detail":"Final","shortDetail":"Final","state":"post"}},"status":"post"},{"date":"2017-12-27T02:00:00Z","broadcast":"ESPN","possessionText":"KSU 5","week":1,"notes":[{"text":"CACTUS BOWL","type":"event","headline":"CACTUS BOWL"}],"timeValid":true,"link":"","possessionTeamId":2306,"uid":"s:20~l:23~e:400953396~c:400953396","competitors":[{"alternateColor":"ffc72c","competitionIdPrevious":"400935326","color":"005C8E","displayName":"UCLA Bruins","type":"team","abbreviation":"UCLA","uid":"s:20~l:23~t:26","homeAway":"home","score":"0","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/ncaa/500-dark/26.png","record":"6-6","name":"UCLA","logo":"http://a.espncdn.com/i/teamlogos/ncaa/500/26.png","id":"26","group":"55"},{"alternateColor":"e7d2ad","competitionIdPrevious":"400934558","color":"633194","displayName":"Kansas State Wildcats","type":"team","abbreviation":"KSU","uid":"s:20~l:23~t:2306","homeAway":"away","score":"0","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/ncaa/500-dark/2306.png","record":"7-5","name":"Kansas State","logo":"http://a.espncdn.com/i/teamlogos/ncaa/500/2306.png","id":"2306","group":"4"}],"appLinks":[{"rel":["event","app","watchespn"],"href":"watchespn://showEvent?gameId=400953396"},{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=football&leagueAbbrev=college-football&gameId=400953396"}],"odds":{"underOdds":-110,"overUnder":58.5,"awayTeamOdds":{"spreadOdds":-110,"underdog":false,"team":{"id":"2306","abbreviation":"KSU"},"favorite":true,"moneyLine":-250},"away":{"moneyLine":-250},"provider":{"name":"Westgate","id":"25","priority":1},"details":"KSU -6.0","links":[],"homeTeamOdds":{"spreadOdds":-110,"underdog":true,"team":{"id":"26","abbreviation":"UCLA"},"favorite":false,"moneyLine":200},"spread":6,"overOdds":-110,"home":{"moneyLine":200}},"season":2017,"links":[{"rel":["event","desktop","live"],"href":"http://espn.go.com/college-football/game?gameId=400953396","text":"Gamecast"},{"rel":["event","desktop","boxscore"],"href":"http://espn.go.com/college-football/boxscore?gameId=400953396","text":"Box Score"},{"rel":["event","desktop","liveStream","watchespn"],"href":"http://espn.go.com/watchespn/index?gameId=400953396&league=ncaaf&sourceLang=en","text":"WatchESPN"}],"id":"400953396","recent":true,"summary":"11:48 - 1st","seasonType":3,"competitionId":"400953396","period":1,"downDistanceText":"2nd & 9","weekText":"Bowls","broadcasts":[{"callLetters":"ESPN","broadcasterId":126,"broadcastId":126,"name":"ESPN","station":"ESPN","typeId":1,"type":"TV","priority":1,"shortName":"ESPN","region":"us","lang":"en","isNational":true},{"callLetters":"ERADM","broadcasterId":133,"broadcastId":133,"name":"ESPN Radio","station":"13715732","typeId":5,"type":"Radio","priority":1,"shortName":"ESPNRM","region":"us","lang":"en","isNational":true}],"clock":"11:48","priority":2,"onWatch":true,"location":"Chase Field","fullStatus":{"period":1,"clock":"11:48","type":{"description":"IN PROGRESS","id":2,"detail":"11:48 - 1st","shortDetail":"11:48 - 1st","state":"in"}},"status":"in"}]}],"name":"football","id":"20","slug":"football"},{"uid":"s:40","leagues":[{"uid":"s:40~l:46","smartdates":["2017-12-25T08:00Z","2017-12-26T08:00Z","2017-12-27T08:00Z"],"name":"National Basketball Association","id":"46","shortName":"NBA","abbreviation":"nba","slug":"nba","events":[{"date":"2017-12-27T00:00:00Z","broadcast":"","notes":[],"timeValid":true,"link":"","video":{"gameId":400975244,"cerebroId":"5a42ef90e4b066f53afc9cf7","images":[{"name":"Poster Image","alt":"","width":576,"caption":"","credit":"","url":"http://media.video-cdn.espn.com/images/2017/1226/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF.jpg","height":324}],"thumbnail":"http://a.espncdn.com/media/motion/2017/1226/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF.jpg","ad":{"sport":"nba","bundle":"no_show"},"keywords":[],"timeRestrictions":{"embargoDate":"2017-12-27T00:53:00Z","expirationDate":"2018-07-31T16:00:00Z"},"caption":"Tobias Harris shoots a perfect 7-of-7 from the field including all five attempts from deep en route to 21 first-quarter points against the Pacers.","description":"Tobias Harris shoots a perfect 7-of-7 from the field including all five attempts from deep en route to 21 first-quarter points against the Pacers.","geoRestrictions":{"countries":["MQ","AM","JM","MX","AL","AO","AQ","AR","AW","AZ","BA","BF","BG","BI","BJ","BO","BR","BV","BY","BZ","CA","CD","CF","CG","CI","CL","CM","CO","CR","CU","CV","CY","CZ","DJ","DO","DZ","EC","EE","EH","ER","ET","GA","GE","GF","GH","GL","GM","GN","GP","GQ","GT","GW","HN","HR","HT","HU","IL","IS","KE","KG","KM","KZ","LR","LT","LV","LY","MA","MD","ME","MK","ML","MN","MR","MU","NE","NG","NI","PA","PE","PL","PM","PY","RE","RO","RS","RU","RW","SC","SD","SI","SJ","SK","SL","SN","SO","SR","ST","SV","TD","TF","TG","TJ","TM","TN","TR","TZ","UA","UG","UY","UZ","VE","YT","YU","FM","SX","BB","AI","BS","FJ","AU","AG","BM","BQ","GD","GY","KN","KY","LC","MF","MS","TC","TT","US","VC","VG","PW","NZ","MH"],"type":"whitelist"},"syndicatable":true,"source":"espn","tracking":{"leagueName":"No League","trackingName":"NBA_One-Play (Harris racks up 21 points in perfect first quarter) 2017/12/26 ESHEET","coverageType":"Final Game Highlight","sportName":"nba","trackingId":"dm_171226_NBA_PISTONS_HARRIS_GOES_OFF"},"duration":43,"deviceRestrictions":{"devices":["desktop","settop","handset","tablet"],"type":"whitelist"},"premium":false,"originalPublishDate":"2017-12-27T00:53:00Z","links":{"web":{"short":{"href":"http://es.pn/2leqsq8"},"self":{"href":"http://espn.go.com/video/clip?id=21887448"},"href":"http://espn.go.com/video/clip?id=21887448"},"mobile":{"streaming":{"href":"http://once.unicornmedia.com/now/od/auto/4d993388-8b49-4f34-9e48-87906e690281/85957be9-026a-415e-a8ce-7bfdc19d5e23/d9c783ae-0c95-4587-8fed-a01022ba8b34/content.once?UMADPARAMreferer=http://www.espn.com/video/clip?id=21887448"},"alert":{"href":"http://m.espn.go.com/general/video/videoAlert?vid=21887448"},"progressiveDownload":{"href":"http://once.unicornmedia.com/now/od/auto/4d993388-8b49-4f34-9e48-87906e690281/85957be9-026a-415e-a8ce-7bfdc19d5e23/d9c783ae-0c95-4587-8fed-a01022ba8b34/content.once?UMADPARAMreferer=http://www.espn.com/video/clip?id=21887448"},"source":{"href":"http://media.video-cdn.espn.com/motion/2017/1226/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF.mp4"},"href":"http://once.unicornmedia.com/now/od/auto/4d993388-8b49-4f34-9e48-87906e690281/85957be9-026a-415e-a8ce-7bfdc19d5e23/d9c783ae-0c95-4587-8fed-a01022ba8b34/content.once?UMADPARAMreferer=http://www.espn.com/video/clip?id=21887448"},"api":{"self":{"href":"http://api.prod.espninfra.starwave.com/v1/video/clips/21887448"}},"source":{"mezzanine":{"href":"http://media.video-origin.espn.com/espnvideo/2017/1226/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF.mp4"},"hds":{"href":"http://hds.video-cdn.espn.com/z/motion/2017/1226/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF_rel.smil/manifest.f4m"},"href":"http://media.video-cdn.espn.com/motion/2017/1226/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF_360p30_1464k.mp4","HD":{"href":"http://media.video-cdn.espn.com/motion/2017/1226/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF_720p30_2896k.mp4"},"HLS":{"href":"http://pkg.video-cdn.espn.com/i/motion/2017/1226/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF.smil/master.m3u8","HD":{"href":"http://pkg.video-cdn.espn.com/i/motion/2017/1226/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF.smil/master.m3u8"}},"flash":{"href":"http://media.video-cdn.espn.com/motion/2017/1226/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF.smil"},"full":{"href":"http://media.video-cdn.espn.com/motion/2017/1226/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF_360p30_1464k.mp4"}}},"id":21887448,"lastModified":"2017-12-27T02:18:09Z","categories":[{"uid":"s:40~l:46","sportId":46,"leagueId":46,"league":{"description":"NBA","links":{"web":{"leagues":{"href":"http://www.espn.com/nba/"}},"mobile":{"leagues":{"href":"http://m.espn.go.com/nba/"}},"api":{"leagues":{"href":"http://api.prod.espninfra.starwave.com/v1/sports/basketball/nba"}}},"id":46},"description":"NBA","id":81036,"type":"league"},{"uid":"s:40~l:46~t:8","sportId":46,"teamId":8,"description":"Detroit Pistons","id":4422,"team":{"description":"Detroit Pistons","links":{"web":{"teams":{"href":"http://www.espn.com/nba/team/_/name/det/detroit-pistons"}},"mobile":{"teams":{"href":"http://m.espn.go.com/nba/clubhouse?teamId=8"}},"api":{"teams":{"href":"http://api.prod.espninfra.starwave.com/v1/sports/basketball/nba/teams/8"}}},"id":8},"type":"team"},{"sportId":46,"athleteId":6440,"athlete":{"description":"Tobias Harris","links":{"web":{"athletes":{"href":"http://www.espn.com/nba/player/_/id/6440/tobias-harris"}},"mobile":{"athletes":{"href":"http://m.espn.go.com/nba/playercard?playerId=6440"}},"api":{"athletes":{"href":"http://api.prod.espninfra.starwave.com/v1/sports/basketball/nba/athletes/6440"}}},"id":6440},"description":"Tobias Harris","id":92016,"type":"athlete"},{"sportId":2999,"leagueId":2999,"league":{"description":"Fantasy","links":{"web":{},"mobile":{},"api":{}},"id":2999},"description":"Fantasy","id":58918,"type":"league"},{"uid":"s:40~l:3090","sportId":3090,"leagueId":3090,"league":{"description":"Fantasy NBA","links":{"web":{},"mobile":{},"api":{}},"id":3090},"description":"Fantasy NBA","id":12025,"type":"league"}],"posterImages":{"default":{"width":576,"href":"http://media.video-cdn.espn.com/motion/2017/1226/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF_default.jpg","height":324},"full":{"href":"http://media.video-cdn.espn.com/motion/2017/1226/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF/dm_171226_NBA_PISTONS_HARRIS_GOES_OFF.jpg"}},"headline":"Harris racks up 21 points in perfect first quarter"},"uid":"s:40~l:46~e:400975244~c:400975244","competitors":[{"alternateColor":"006bb6","competitionIdPrevious":"400975222","color":"FA002C","displayName":"Detroit Pistons","type":"team","abbreviation":"DET","competitionIdNext":"400975262","uid":"s:40~l:46~t:8","homeAway":"home","score":"107","winner":true,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/det.png","record":"19-14","name":"Pistons","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/det.png","id":"8","group":"2"},{"alternateColor":"00275d","competitionIdPrevious":"400975233","color":"061642","displayName":"Indiana Pacers","type":"team","abbreviation":"IND","competitionIdNext":"400975253","uid":"s:40~l:46~t:11","homeAway":"away","score":"83","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/ind.png","record":"19-15","name":"Pacers","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/ind.png","id":"11","group":"2"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=basketball&leagueAbbrev=nba&gameId=400975244"}],"odds":{"underOdds":-110,"overUnder":207.5,"awayTeamOdds":{"spreadOdds":-110,"underdog":true,"team":{"id":"11","abbreviation":"IND"},"favorite":false,"moneyLine":110},"away":{"moneyLine":110},"provider":{"name":"Westgate","id":"25","priority":1},"details":"DET -2.0","links":[],"homeTeamOdds":{"spreadOdds":-110,"underdog":false,"team":{"id":"8","abbreviation":"DET"},"favorite":true,"moneyLine":-130},"spread":-2,"overOdds":-110,"home":{"moneyLine":-130}},"season":2018,"links":[{"rel":["event","desktop","summary"],"href":"http://espn.go.com/nba/game?gameId=400975244","text":"Summary"},{"rel":["event","desktop","boxscore"],"href":"http://espn.go.com/nba/boxscore?gameId=400975244","text":"Box Score"}],"id":"400975244","recent":true,"summary":"Final","seriesSummary":"DET wins series 3-1","seasonType":2,"competitionId":"400975244","period":4,"broadcasts":[{"callLetters":"FXDT","broadcasterId":169,"broadcastId":169,"name":"Fox Sports - Detroit","station":"FXDT","typeId":1,"type":"TV","priority":0,"shortName":"FSDT","region":"us","lang":"en","isNational":false},{"callLetters":"FXMW","broadcasterId":170,"broadcastId":170,"name":"Fox Sports - Midwest","station":"FXMW","typeId":1,"type":"TV","priority":0,"shortName":"FSMW","region":"us","lang":"en","isNational":false}],"clock":"0:00","priority":3,"onWatch":false,"location":"Little Caesars Arena","fullStatus":{"period":4,"clock":"0:00","type":{"description":"FINAL","id":3,"detail":"Final","shortDetail":"Final","state":"post"}},"status":"post"},{"date":"2017-12-27T00:00:00Z","broadcast":"","notes":[],"timeValid":true,"link":"","uid":"s:40~l:46~e:400975245~c:400975245","competitors":[{"alternateColor":"c4ced3","competitionIdPrevious":"400975235","color":"0C479D","displayName":"Dallas Mavericks","type":"team","abbreviation":"DAL","competitionIdNext":"400975253","uid":"s:40~l:46~t:6","homeAway":"home","score":"94","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/dal.png","record":"9-25","name":"Mavericks","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/dal.png","id":"6","group":"10"},{"alternateColor":"061922","competitionIdPrevious":"400975231","color":"CE0F41","displayName":"Toronto Raptors","type":"team","abbreviation":"TOR","competitionIdNext":"400975258","uid":"s:40~l:46~t:28","homeAway":"away","score":"89","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/tor.png","record":"23-8","name":"Raptors","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/tor.png","id":"28","group":"1"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=basketball&leagueAbbrev=nba&gameId=400975245"}],"odds":{"underOdds":-110,"overUnder":209.5,"awayTeamOdds":{"spreadOdds":-110,"underdog":false,"team":{"id":"28","abbreviation":"TOR"},"favorite":true,"moneyLine":-250},"away":{"moneyLine":-250},"provider":{"name":"Westgate","id":"25","priority":1},"details":"TOR -6.0","links":[],"homeTeamOdds":{"spreadOdds":-110,"underdog":true,"team":{"id":"6","abbreviation":"DAL"},"favorite":false,"moneyLine":200},"spread":6,"overOdds":-110,"home":{"moneyLine":200}},"season":2018,"links":[{"rel":["event","desktop","live"],"href":"http://espn.go.com/nba/game?gameId=400975245","text":"Gamecast"},{"rel":["event","desktop","boxscore"],"href":"http://espn.go.com/nba/boxscore?gameId=400975245","text":"Box Score"}],"id":"400975245","recent":true,"summary":"3:12 - 4th","seriesSummary":"Series starts 12/26","seasonType":2,"competitionId":"400975245","period":4,"broadcasts":[{"callLetters":"FXSW","broadcasterId":231,"broadcastId":231,"name":"Fox Sports Southwest","station":"FXSW","typeId":1,"type":"TV","priority":0,"shortName":"FSSW","region":"us","lang":"en","isNational":false},{"broadcasterId":626,"broadcastId":626,"name":"Rogers Sportsnet One","typeId":1,"type":"TV","priority":0,"shortName":"Sportsnet One","region":"us","lang":"en","isNational":false}],"clock":"3:12","priority":4,"onWatch":false,"location":"American Airlines Center","fullStatus":{"period":4,"clock":"3:12","type":{"description":"IN PROGRESS","id":2,"detail":"3:12 - 4th","shortDetail":"3:12 - 4th","state":"in"}},"status":"in"},{"date":"2017-12-27T00:30:00Z","broadcast":"","notes":[],"timeValid":true,"link":"","uid":"s:40~l:46~e:400975246~c:400975246","competitors":[{"alternateColor":"000000","competitionIdPrevious":"400975237","color":"000000","displayName":"Miami Heat","type":"team","abbreviation":"MIA","competitionIdNext":"400975269","uid":"s:40~l:46~t:14","homeAway":"home","score":"66","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/mia.png","record":"17-16","name":"Heat","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/mia.png","id":"14","group":"9"},{"alternateColor":"c4ced3","competitionIdPrevious":"400975234","color":"0860A8","displayName":"Orlando Magic","type":"team","abbreviation":"ORL","competitionIdNext":"400975262","uid":"s:40~l:46~t:19","homeAway":"away","score":"66","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/orl.png","record":"11-23","name":"Magic","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/orl.png","id":"19","group":"9"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=basketball&leagueAbbrev=nba&gameId=400975246"}],"odds":{"underOdds":-110,"overUnder":204.5,"awayTeamOdds":{"spreadOdds":-110,"underdog":true,"team":{"id":"19","abbreviation":"ORL"},"favorite":false,"moneyLine":300},"away":{"moneyLine":300},"provider":{"name":"Westgate","id":"25","priority":1},"details":"MIA -8.5","links":[],"homeTeamOdds":{"spreadOdds":-110,"underdog":false,"team":{"id":"14","abbreviation":"MIA"},"favorite":true,"moneyLine":-400},"spread":-8.5,"overOdds":-110,"home":{"moneyLine":-400}},"season":2018,"links":[{"rel":["event","desktop","live"],"href":"http://espn.go.com/nba/game?gameId=400975246","text":"Gamecast"},{"rel":["event","desktop","boxscore"],"href":"http://espn.go.com/nba/boxscore?gameId=400975246","text":"Box Score"}],"id":"400975246","recent":true,"summary":"1:12 - 3rd","seriesSummary":"ORL leads 1-0","seasonType":2,"competitionId":"400975246","period":3,"broadcasts":[{"callLetters":"FSNFL","broadcasterId":201,"broadcastId":201,"name":"Fox Sports Net Florida","station":"FSNFL","typeId":1,"type":"TV","priority":0,"shortName":"FSFL","region":"us","lang":"en","isNational":false},{"callLetters":"SUN","broadcasterId":484,"broadcastId":484,"name":"Sun Sports","station":"SUN","typeId":1,"type":"TV","priority":0,"shortName":"SUN","region":"us","lang":"en","isNational":false}],"clock":"1:12","priority":5,"onWatch":false,"location":"AmericanAirlines Arena","fullStatus":{"period":3,"clock":"1:12","type":{"description":"IN PROGRESS","id":2,"detail":"1:12 - 3rd","shortDetail":"1:12 - 3rd","state":"in"}},"status":"in"},{"date":"2017-12-27T01:00:00Z","broadcast":"NBATV","notes":[],"timeValid":true,"link":"","uid":"s:40~l:46~e:400975247~c:400975247","competitors":[{"alternateColor":"f0ebd2","competitionIdPrevious":"400975232","color":"003813","displayName":"Milwaukee Bucks","type":"team","abbreviation":"MIL","competitionIdNext":"400975264","uid":"s:40~l:46~t:15","homeAway":"home","score":"53","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/mil.png","record":"17-14","name":"Bucks","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/mil.png","id":"15","group":"2"},{"alternateColor":"000000","competitionIdPrevious":"400975236","color":"000000","displayName":"Chicago Bulls","type":"team","abbreviation":"CHI","competitionIdNext":"400975255","uid":"s:40~l:46~t:4","homeAway":"away","score":"56","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/chi.png","record":"10-22","name":"Bulls","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/chi.png","id":"4","group":"2"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=basketball&leagueAbbrev=nba&gameId=400975247"}],"odds":{"underOdds":-110,"overUnder":211.5,"awayTeamOdds":{"spreadOdds":-110,"underdog":true,"team":{"id":"4","abbreviation":"CHI"},"favorite":false,"moneyLine":250},"away":{"moneyLine":250},"provider":{"name":"Westgate","id":"25","priority":1},"details":"MIL -7.5","links":[],"homeTeamOdds":{"spreadOdds":-110,"underdog":false,"team":{"id":"15","abbreviation":"MIL"},"favorite":true,"moneyLine":-310},"spread":-7.5,"overOdds":-110,"home":{"moneyLine":-310}},"season":2018,"links":[{"rel":["event","desktop","live"],"href":"http://espn.go.com/nba/game?gameId=400975247","text":"Gamecast"},{"rel":["event","desktop","boxscore"],"href":"http://espn.go.com/nba/boxscore?gameId=400975247","text":"Box Score"}],"id":"400975247","recent":true,"summary":"12:00 - 3rd","seriesSummary":"CHI leads 1-0","seasonType":2,"competitionId":"400975247","period":3,"broadcasts":[{"callLetters":"CSNC","broadcasterId":104,"broadcastId":104,"name":"Comcast Sportsnet-Chicago","station":"CSNC","typeId":1,"type":"TV","priority":0,"shortName":"CSNC","region":"us","lang":"en","isNational":false},{"callLetters":"FSN-WI","broadcasterId":208,"broadcastId":208,"name":"Fox Sports Net North - Wisconsin","station":"FSN-WI","typeId":1,"type":"TV","priority":0,"shortName":"FSWI","region":"us","lang":"en","isNational":false},{"callLetters":"NBAT","broadcasterId":355,"broadcastId":355,"name":"NBATV","station":"NBAT","typeId":1,"type":"TV","priority":1,"shortName":"NBATV","region":"us","lang":"en","isNational":true}],"clock":"12:00","priority":6,"onWatch":false,"location":"BMO Harris Bradley Center","fullStatus":{"period":3,"clock":"12:00","type":{"description":"IN PROGRESS","id":2,"detail":"12:00 - 3rd","shortDetail":"12:00 - 3rd","state":"in"}},"status":"in"},{"date":"2017-12-27T01:30:00Z","broadcast":"","notes":[],"timeValid":true,"link":"","uid":"s:40~l:46~e:400975248~c:400975248","competitors":[{"alternateColor":"061922","competitionIdPrevious":"400975243","color":"000000","displayName":"San Antonio Spurs","type":"team","abbreviation":"SA","competitionIdNext":"400975265","uid":"s:40~l:46~t:24","homeAway":"home","score":"32","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/sa.png","record":"23-11","name":"Spurs","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/sa.png","id":"24","group":"10"},{"alternateColor":"ffffff","competitionIdPrevious":"400975233","color":"000000","displayName":"Brooklyn Nets","type":"team","abbreviation":"BKN","competitionIdNext":"400975257","uid":"s:40~l:46~t:17","homeAway":"away","score":"25","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/bkn.png","record":"12-20","name":"Nets","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/bkn.png","id":"17","group":"1"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=basketball&leagueAbbrev=nba&gameId=400975248"}],"odds":{"underOdds":-110,"overUnder":207,"awayTeamOdds":{"spreadOdds":-110,"underdog":true,"team":{"id":"17","abbreviation":"BKN"},"favorite":false,"moneyLine":575},"away":{"moneyLine":575},"provider":{"name":"Westgate","id":"25","priority":1},"details":"SA -11.5","links":[],"homeTeamOdds":{"spreadOdds":-110,"underdog":false,"team":{"id":"24","abbreviation":"SA"},"favorite":true,"moneyLine":-850},"spread":-11.5,"overOdds":-110,"home":{"moneyLine":-850}},"season":2018,"links":[{"rel":["event","desktop","live"],"href":"http://espn.go.com/nba/game?gameId=400975248","text":"Gamecast"},{"rel":["event","desktop","boxscore"],"href":"http://espn.go.com/nba/boxscore?gameId=400975248","text":"Box Score"}],"id":"400975248","recent":true,"summary":"5:55 - 2nd","seriesSummary":"Series starts 12/26","seasonType":2,"competitionId":"400975248","period":2,"broadcasts":[{"callLetters":"FXSW","broadcasterId":231,"broadcastId":231,"name":"Fox Sports Southwest","station":"FXSW","typeId":1,"type":"TV","priority":0,"shortName":"FSSW","region":"us","lang":"en","isNational":false},{"callLetters":"YES","broadcasterId":600,"broadcastId":600,"name":"Yankees Entertainment and Sports Network","station":"YES","typeId":1,"type":"TV","priority":0,"shortName":"YES","region":"us","lang":"en","isNational":false}],"clock":"5:55","priority":7,"onWatch":false,"location":"AT&T Center","fullStatus":{"period":2,"clock":"5:55","type":{"description":"IN PROGRESS","id":2,"detail":"5:55 - 2nd","shortDetail":"5:55 - 2nd","state":"in"}},"status":"in"},{"date":"2017-12-27T02:00:00Z","broadcast":"","notes":[],"timeValid":true,"link":"","uid":"s:40~l:46~e:400975249~c:400975249","competitors":[{"alternateColor":"fdb927","competitionIdPrevious":"400975240","color":"0860A8","displayName":"Denver Nuggets","type":"team","abbreviation":"DEN","competitionIdNext":"400975256","uid":"s:40~l:46~t:7","homeAway":"home","score":"8","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/den.png","record":"18-15","name":"Nuggets","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/den.png","id":"7","group":"11"},{"alternateColor":"f9a01b","competitionIdPrevious":"400975239","color":"06143F","displayName":"Utah Jazz","type":"team","abbreviation":"UTAH","competitionIdNext":"400975260","uid":"s:40~l:46~t:26","homeAway":"away","score":"9","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/utah.png","record":"15-19","name":"Jazz","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/utah.png","id":"26","group":"11"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=basketball&leagueAbbrev=nba&gameId=400975249"}],"odds":{"underOdds":-110,"overUnder":204,"awayTeamOdds":{"spreadOdds":-110,"underdog":true,"team":{"id":"26","abbreviation":"UTAH"},"favorite":false,"moneyLine":210},"away":{"moneyLine":210},"provider":{"name":"Westgate","id":"25","priority":1},"details":"DEN -6.0","links":[],"homeTeamOdds":{"spreadOdds":-110,"underdog":false,"team":{"id":"7","abbreviation":"DEN"},"favorite":true,"moneyLine":-260},"spread":-6,"overOdds":-110,"home":{"moneyLine":-260}},"season":2018,"links":[{"rel":["event","desktop","live"],"href":"http://espn.go.com/nba/game?gameId=400975249","text":"Gamecast"},{"rel":["event","desktop","boxscore"],"href":"http://espn.go.com/nba/boxscore?gameId=400975249","text":"Box Score"}],"id":"400975249","recent":true,"summary":"6:32 - 1st","seriesSummary":"UTAH leads 2-0","seasonType":2,"competitionId":"400975249","period":1,"broadcasts":[{"callLetters":"ALTITUDE SPORTS","broadcasterId":25,"broadcastId":25,"name":"Altitude Sports & Entertainmnt","station":"ALTITUDE SPORTS","typeId":1,"type":"TV","priority":0,"shortName":"ALT","region":"us","lang":"en","isNational":false},{"callLetters":"ROOT","broadcasterId":453,"broadcastId":453,"name":"Root Sports","station":"ROOT","typeId":1,"type":"TV","priority":0,"shortName":"ROOT","region":"us","lang":"en","isNational":false}],"clock":"6:32","priority":8,"onWatch":false,"location":"Pepsi Center","fullStatus":{"period":1,"clock":"6:32","type":{"description":"IN PROGRESS","id":2,"detail":"6:32 - 1st","shortDetail":"6:32 - 1st","state":"in"}},"status":"in"},{"date":"2017-12-27T02:00:00Z","broadcast":"","notes":[],"timeValid":true,"link":"","uid":"s:40~l:46~e:400975250~c:400975250","competitors":[{"alternateColor":"f1f2f3","competitionIdPrevious":"400975241","color":"23006a","displayName":"Phoenix Suns","type":"team","abbreviation":"PHX","competitionIdNext":"400975273","uid":"s:40~l:46~t:21","homeAway":"home","score":"12","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/phx.png","record":"12-23","name":"Suns","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/phx.png","id":"21","group":"4"},{"alternateColor":"7399c6","competitionIdPrevious":"400975238","color":"5D76A8","displayName":"Memphis Grizzlies","type":"team","abbreviation":"MEM","competitionIdNext":"400975261","uid":"s:40~l:46~t:29","homeAway":"away","score":"10","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/mem.png","record":"10-23","name":"Grizzlies","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/mem.png","id":"29","group":"10"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=basketball&leagueAbbrev=nba&gameId=400975250"}],"odds":{"underOdds":-110,"overUnder":204.5,"awayTeamOdds":{"spreadOdds":-110,"underdog":false,"team":{"id":"29","abbreviation":"MEM"},"favorite":true,"moneyLine":-120},"away":{"moneyLine":-120},"provider":{"name":"Westgate","id":"25","priority":1},"details":"MEM -1.5","links":[],"homeTeamOdds":{"spreadOdds":-110,"underdog":true,"team":{"id":"21","abbreviation":"PHX"},"favorite":false,"moneyLine":100},"spread":1.5,"overOdds":-110,"home":{"moneyLine":100}},"season":2018,"links":[{"rel":["event","desktop","live"],"href":"http://espn.go.com/nba/game?gameId=400975250","text":"Gamecast"},{"rel":["event","desktop","boxscore"],"href":"http://espn.go.com/nba/boxscore?gameId=400975250","text":"Box Score"}],"id":"400975250","recent":true,"summary":"6:36 - 1st","seriesSummary":"PHX leads 1-0","seasonType":2,"competitionId":"400975250","period":1,"broadcasts":[{"callLetters":"FXAZ","broadcasterId":167,"broadcastId":167,"name":"Fox Sports - Arizona","station":"FXAZ","typeId":1,"type":"TV","priority":0,"shortName":"FSAZ","region":"us","lang":"en","isNational":false}],"clock":"6:36","priority":9,"onWatch":false,"location":"Talking Stick Resort Arena","fullStatus":{"period":1,"clock":"6:36","type":{"description":"IN PROGRESS","id":2,"detail":"6:36 - 1st","shortDetail":"6:36 - 1st","state":"in"}},"status":"in"},{"date":"2017-12-27T03:30:00Z","broadcast":"NBATV","notes":[],"timeValid":true,"link":"","uid":"s:40~l:46~e:400975251~c:400975251","competitors":[{"alternateColor":"f1f2f3","competitionIdPrevious":"400975238","color":"FA0028","displayName":"LA Clippers","type":"team","abbreviation":"LAC","competitionIdNext":"400975275","uid":"s:40~l:46~t:12","homeAway":"home","score":"","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/lac.png","record":"13-19","name":"Clippers","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/lac.png","id":"12","group":"4"},{"alternateColor":"8e9090","competitionIdPrevious":"400975243","color":"393996","displayName":"Sacramento Kings","type":"team","abbreviation":"SAC","competitionIdNext":"400975259","uid":"s:40~l:46~t:23","homeAway":"away","score":"","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/nba/500-dark/scoreboard/sac.png","record":"11-21","name":"Kings","logo":"http://a.espncdn.com/i/teamlogos/nba/500/scoreboard/sac.png","id":"23","group":"4"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=basketball&leagueAbbrev=nba&gameId=400975251"}],"odds":{"underOdds":-110,"overUnder":205,"awayTeamOdds":{"spreadOdds":-110,"underdog":true,"team":{"id":"23","abbreviation":"SAC"},"favorite":false,"moneyLine":180},"away":{"moneyLine":180},"provider":{"name":"Westgate","id":"25","priority":1},"details":"LAC -5.0","links":[],"homeTeamOdds":{"spreadOdds":-110,"underdog":false,"team":{"id":"12","abbreviation":"LAC"},"favorite":true,"moneyLine":-220},"spread":-5,"overOdds":-110,"home":{"moneyLine":-220}},"season":2018,"links":[{"rel":["event","desktop","summary"],"href":"http://espn.go.com/nba/game?gameId=400975251","text":"Summary"},{"rel":["event","desktop","tickets"],"href":"https://www.vividseats.com/nba-basketball/los-angeles-clippers-tickets/clippers-vs-kings-12-26-2431012.html?wsUser=717","text":"Tickets"}],"id":"400975251","recent":false,"summary":"2017-12-27T03:30:00Z","seriesSummary":"LAC leads 1-0","seasonType":2,"competitionId":"400975251","period":0,"broadcasts":[{"callLetters":"CSAC","broadcasterId":107,"broadcastId":107,"name":"Comcast-Sacramento","station":"CSAC","typeId":1,"type":"TV","priority":0,"shortName":"CSAC","region":"us","lang":"en","isNational":false},{"callLetters":"FSW2","broadcasterId":243,"broadcastId":243,"name":"FSN Prime Ticket","station":"FSW2","typeId":1,"type":"TV","priority":0,"shortName":"FSW2","region":"us","lang":"en","isNational":false},{"callLetters":"NBAT","broadcasterId":355,"broadcastId":355,"name":"NBATV","station":"NBAT","typeId":1,"type":"TV","priority":1,"shortName":"NBATV","region":"us","lang":"en","isNational":true}],"clock":"0:00","priority":10,"onWatch":false,"location":"STAPLES Center","fullStatus":{"period":0,"clock":"0:00","type":{"description":"SCHEDULED","id":1,"detail":"2017-12-27T03:30:00Z","shortDetail":"2017-12-27T03:30:00Z","state":"pre"}},"status":"pre"}]}],"name":"basketball","id":"40","slug":"basketball"},{"uid":"s:600","leagues":[{"uid":"s:600~l:700","smartdates":["2017-12-23T08:00Z","2017-12-26T08:00Z","2017-12-27T08:00Z"],"name":"English Premier League","id":"700","shortName":"Premier League","abbreviation":"eng.1","slug":"eng.1","events":[{"date":"2017-12-26T12:30:00Z","broadcast":"","notes":[],"timeValid":true,"link":"","video":{"gameId":480712,"cerebroId":"5a425c23e4b066f53afc8401","images":[{"name":"Poster Image","alt":"","width":576,"caption":"","credit":"","url":"http://media.video-cdn.espn.com/images/ESPNi/2017/1226/int_171226_INET_FC_EPL_Spurs_Southampton_HL/int_171226_INET_FC_EPL_Spurs_Southampton_HL.jpg","height":324}],"thumbnail":"http://a.espncdn.com/media/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Spurs_Southampton_HL/int_171226_INET_FC_EPL_Spurs_Southampton_HL.jpg","ad":{"sport":"Soccer","bundle":"fcus_englishpremier_highlights"},"keywords":["Videos - Premier League Highlights","Videos - Highlights","English Premier League","Southampton","Tottenham Hotspur","Soccer"],"timeRestrictions":{"embargoDate":"2017-12-26T14:21:51Z","expirationDate":"2018-06-01T16:00:00Z"},"caption":"Harry Kane becomes 2017's top scorer, surpassing Lionel Messi, and breaks Alan Shearer's Premier League goals record as Spurs cruise past Southampton.","description":"Harry Kane becomes 2017's top scorer, surpassing Lionel Messi, and breaks Alan Shearer's Premier League goals record as Spurs cruise past Southampton.","geoRestrictions":{"countries":["US"],"type":"whitelist"},"syndicatable":true,"source":"intl","tracking":{"leagueName":"English Premier League","trackingName":"Tottenham 5-2 Southampton: Kane sets new Prem record","coverageType":"Final Game Highlight","sportName":"Soccer","trackingId":"int_171226_INET_FC_EPL_Spurs_Southampton_HL"},"duration":187,"deviceRestrictions":{"devices":["desktop","iphone","ipad","tablet","settop","handset","android"],"type":"whitelist"},"originalPublishDate":"2017-12-26T14:21:51Z","links":{"web":{"self":{"href":"http://www.espn.com/video/latest-videos/600/video/3324790"},"href":"http://www.espn.com/video/latest-videos/600/video/3324790"},"mobile":{"streaming":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/f719e07a-7cb6-4dda-8a36-36f8e69d7ad0/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3324790"},"alert":{"href":"http://m.espn.go.com/general/video/videoAlert?vid=3324790"},"progressiveDownload":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/f719e07a-7cb6-4dda-8a36-36f8e69d7ad0/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3324790"},"source":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Spurs_Southampton_HL/int_171226_INET_FC_EPL_Spurs_Southampton_HL.mp4"},"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/f719e07a-7cb6-4dda-8a36-36f8e69d7ad0/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3324790"},"api":{"self":{"href":"http://api.prod.espninfra.starwave.com/v1/video/clips/3324790?region=GB"}},"source":{"mezzanine":{"href":"http://media.video-origin.espn.com/espnvideo/ESPNi/2017/1226/int_171226_INET_FC_EPL_Spurs_Southampton_HL/int_171226_INET_FC_EPL_Spurs_Southampton_HL.mp4"},"hds":{"href":"http://hds.video-cdn.espn.com/z/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Spurs_Southampton_HL/int_171226_INET_FC_EPL_Spurs_Southampton_HL_rel.smil/manifest.f4m"},"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Spurs_Southampton_HL/int_171226_INET_FC_EPL_Spurs_Southampton_HL_360p30_1464k.mp4","HD":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Spurs_Southampton_HL/int_171226_INET_FC_EPL_Spurs_Southampton_HL_720p30_2896k.mp4"},"HLS":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Spurs_Southampton_HL/int_171226_INET_FC_EPL_Spurs_Southampton_HL.smil/master.m3u8","HD":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Spurs_Southampton_HL/int_171226_INET_FC_EPL_Spurs_Southampton_HL.smil/master.m3u8"}},"flash":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Spurs_Southampton_HL/int_171226_INET_FC_EPL_Spurs_Southampton_HL.smil"},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Spurs_Southampton_HL/int_171226_INET_FC_EPL_Spurs_Southampton_HL_360p30_1464k.mp4"}}},"id":3324790,"lastModified":"2017-12-26T20:27:01Z","posterImages":{"default":{"width":576,"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Spurs_Southampton_HL/int_171226_INET_FC_EPL_Spurs_Southampton_HL_default.jpg","height":324},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Spurs_Southampton_HL/int_171226_INET_FC_EPL_Spurs_Southampton_HL.jpg"}},"headline":"Tottenham 5-2 Southampton: Kane sets new Prem record"},"addedClock":4,"uid":"s:600~l:700~e:480712~c:480712","competitors":[{"competitionIdPrevious":"480723","color":"fafafc","displayName":"Tottenham Hotspur","type":"team","abbreviation":"TOT","competitionIdNext":"480693","uid":"s:600~t:367","homeAway":"home","score":"5","winner":true,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/367.png","form":"WLWWW","record":"11-4-5","name":"Tottenham Hotspur","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/367.png","id":"367"},{"competitionIdPrevious":"480719","color":"ED1A3B","displayName":"Southampton","type":"team","abbreviation":"SOU","competitionIdNext":"480702","uid":"s:600~t:376","homeAway":"away","score":"2","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/376.png","form":"DLLDD","record":"4-7-9","name":"Southampton","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/376.png","id":"376"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=soccer&leagueAbbrev=eng.1&gameId=480712"}],"odds":{"awayTeamOdds":{"odds":{"summary":"80/1","handicap":0,"value":81},"team":{"id":"376","abbreviation":"SOU"}},"away":{},"provider":{"name":"Bet 365","id":"1001","priority":0},"links":[{"isExternal":true,"shortText":"Home Bet","rel":["home","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506784177&odds=1/66","text":"Home Bet","isPremium":false},{"isExternal":true,"shortText":"Away Bet","rel":["away","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506784181&odds=80/1","text":"Away Bet","isPremium":false},{"isExternal":true,"shortText":"Draw Bet","rel":["draw","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506784179&odds=20/1","text":"Draw Bet","isPremium":false}],"draw":{},"drawOdds":{"summary":"20/1","handicap":0,"value":21},"homeTeamOdds":{"odds":{"summary":"1/66","handicap":0,"value":1.01},"team":{"id":"367","abbreviation":"TOT"}},"home":{}},"seasonTypeHasGroups":false,"season":2017,"links":[{"rel":["event","desktop","summary"],"href":"http://www.espn.com/soccer/match?gameId=480712","text":"Summary"},{"rel":["event","desktop","report"],"href":"http://www.espn.com/soccer/report?gameId=480712","text":"Report"}],"id":"480712","recent":false,"group":{"groupId":1,"name":"2017-2018 English Premier League","abbreviation":"2017-2018 english premier league","shortName":"2017-2018 ENGLISH PREMIER LEAGUE"},"summary":"FT","seasonType":1,"competitionId":"480712","period":2,"broadcasts":[],"clock":"90:00","priority":11,"onWatch":false,"name":"2017/18 English Premier League","location":"Wembley","fullStatus":{"period":2,"clock":"90:00","type":{"description":"FULL TIME","id":28,"detail":"FT","shortDetail":"FT","state":"post"},"addedClock":4},"status":"post"},{"date":"2017-12-26T15:00:00Z","broadcast":"","notes":[],"timeValid":true,"link":"","video":{"gameId":480707,"cerebroId":"5a427f32e4b066f53afc8e7b","images":[{"name":"Poster Image","alt":"","width":576,"caption":"","credit":"","url":"http://media.video-cdn.espn.com/images/ESPNi/2017/1226/int_171226_fc_chelsea_vs_brighton/int_171226_fc_chelsea_vs_brighton.jpg","height":324}],"thumbnail":"http://a.espncdn.com/media/motion/ESPNi/2017/1226/int_171226_fc_chelsea_vs_brighton/int_171226_fc_chelsea_vs_brighton.jpg","ad":{"sport":"Soccer","bundle":"fcus_englishpremier_highlights"},"keywords":[],"timeRestrictions":{"embargoDate":"2017-12-26T16:55:13Z","expirationDate":"2018-01-07T17:00:00Z"},"caption":"Alvaro Morata scored his first Premier League goal since December 2nd as Chelsea dispatch of Brighton & Hove Albion.","description":"Alvaro Morata scored his first Premier League goal since December 2nd as Chelsea dispatch of Brighton & Hove Albion.","geoRestrictions":{"countries":["US"],"type":"whitelist"},"syndicatable":true,"source":"intl","tracking":{"leagueName":"English Premier League","trackingName":"Chelsea 2-0 Brighton & Hove Albion: Morata & Alonso with the goals","coverageType":"Final Game Highlight","sportName":"Soccer","trackingId":"int_171226_fc_chelsea_vs_brighton"},"duration":119,"deviceRestrictions":{"devices":["desktop","iphone","ipad","tablet","settop","handset","android"],"type":"whitelist"},"originalPublishDate":"2017-12-26T16:55:13Z","links":{"web":{"self":{"href":"http://www.espn.com/video/latest-videos/600/video/3325545"},"href":"http://www.espn.com/video/latest-videos/600/video/3325545"},"mobile":{"streaming":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/0418a4a2-0abc-4593-b042-de5527fd81d5/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325545"},"alert":{"href":"http://m.espn.go.com/general/video/videoAlert?vid=3325545"},"progressiveDownload":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/0418a4a2-0abc-4593-b042-de5527fd81d5/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325545"},"source":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_fc_chelsea_vs_brighton/int_171226_fc_chelsea_vs_brighton.mp4"},"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/0418a4a2-0abc-4593-b042-de5527fd81d5/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325545"},"api":{"self":{"href":"http://api.prod.espninfra.starwave.com/v1/video/clips/3325545?region=GB"}},"source":{"mezzanine":{"href":"http://media.video-origin.espn.com/espnvideo/ESPNi/2017/1226/int_171226_fc_chelsea_vs_brighton/int_171226_fc_chelsea_vs_brighton.mp4"},"hds":{"href":"http://hds.video-cdn.espn.com/z/motion/ESPNi/2017/1226/int_171226_fc_chelsea_vs_brighton/int_171226_fc_chelsea_vs_brighton_rel.smil/manifest.f4m"},"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_fc_chelsea_vs_brighton/int_171226_fc_chelsea_vs_brighton_360p30_1464k.mp4","HD":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_fc_chelsea_vs_brighton/int_171226_fc_chelsea_vs_brighton_720p30_2896k.mp4"},"HLS":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_fc_chelsea_vs_brighton/int_171226_fc_chelsea_vs_brighton.smil/master.m3u8","HD":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_fc_chelsea_vs_brighton/int_171226_fc_chelsea_vs_brighton.smil/master.m3u8"}},"flash":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_fc_chelsea_vs_brighton/int_171226_fc_chelsea_vs_brighton.smil"},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_fc_chelsea_vs_brighton/int_171226_fc_chelsea_vs_brighton_360p30_1464k.mp4"}}},"id":3325545,"lastModified":"2017-12-26T22:15:10Z","posterImages":{"default":{"width":576,"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_fc_chelsea_vs_brighton/int_171226_fc_chelsea_vs_brighton_default.jpg","height":324},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_fc_chelsea_vs_brighton/int_171226_fc_chelsea_vs_brighton.jpg"}},"headline":"Chelsea 2-0 Brighton & Hove Albion: Morata & Alonso with the goals"},"addedClock":4,"uid":"s:600~l:700~e:480707~c:480707","competitors":[{"competitionIdPrevious":"480717","color":"034694","displayName":"Chelsea","type":"team","abbreviation":"CHE","competitionIdNext":"480703","uid":"s:600~t:363","homeAway":"home","score":"2","winner":true,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/363.png","form":"DWWWL","record":"13-3-4","name":"Chelsea","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/363.png","id":"363"},{"competitionIdPrevious":"480724","color":"000099","displayName":"Brighton & Hove Albion","type":"team","abbreviation":"BHA","competitionIdNext":"480697","uid":"s:600~t:331","homeAway":"away","score":"0","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/331.png","form":"WDLLL","record":"5-6-9","name":"Brighton & Hove Albion","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/331.png","id":"331"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=soccer&leagueAbbrev=eng.1&gameId=480707"}],"odds":{"awayTeamOdds":{"odds":{"summary":"350/1","handicap":0,"value":351},"team":{"id":"331","abbreviation":"BHA"}},"away":{},"provider":{"name":"Bet 365","id":"1001","priority":0},"links":[{"isExternal":true,"shortText":"Home Bet","rel":["home","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506785364&odds=1/500","text":"Home Bet","isPremium":false},{"isExternal":true,"shortText":"Away Bet","rel":["away","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506785366&odds=350/1","text":"Away Bet","isPremium":false},{"isExternal":true,"shortText":"Draw Bet","rel":["draw","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506785365&odds=50/1","text":"Draw Bet","isPremium":false}],"draw":{},"drawOdds":{"summary":"50/1","handicap":0,"value":51},"homeTeamOdds":{"odds":{"summary":"1/500","handicap":0,"value":1},"team":{"id":"363","abbreviation":"CHE"}},"home":{}},"seasonTypeHasGroups":false,"season":2017,"links":[{"rel":["event","desktop","summary"],"href":"http://www.espn.com/soccer/match?gameId=480707","text":"Summary"},{"rel":["event","desktop","report"],"href":"http://www.espn.com/soccer/report?gameId=480707","text":"Report"}],"id":"480707","recent":false,"group":{"groupId":1,"name":"2017-2018 English Premier League","abbreviation":"2017-2018 english premier league","shortName":"2017-2018 ENGLISH PREMIER LEAGUE"},"summary":"FT","seasonType":1,"competitionId":"480707","period":2,"broadcasts":[],"clock":"90:00","priority":12,"onWatch":false,"name":"2017/18 English Premier League","location":"Stamford Bridge","fullStatus":{"period":2,"clock":"90:00","type":{"description":"FULL TIME","id":28,"detail":"FT","shortDetail":"FT","state":"post"},"addedClock":4},"status":"post"},{"date":"2017-12-26T15:00:00Z","broadcast":"","notes":[],"timeValid":true,"link":"","video":{"gameId":480708,"cerebroId":"5a428080e4b066f53afc8ef6","images":[{"name":"Poster Image","alt":"","width":576,"caption":"","credit":"","url":"http://media.video-cdn.espn.com/images/ESPNi/2017/1226/int_171226_Man_United_vs_Burnley/int_171226_Man_United_vs_Burnley.jpg","height":324}],"thumbnail":"http://a.espncdn.com/media/motion/ESPNi/2017/1226/int_171226_Man_United_vs_Burnley/int_171226_Man_United_vs_Burnley.jpg","ad":{"sport":"Soccer","bundle":"fcus_englishpremier_highlights"},"keywords":[],"timeRestrictions":{"embargoDate":"2017-12-26T16:59:32Z","expirationDate":"2018-01-07T17:00:00Z"},"caption":"A second half brace from Jesse Lingard erased a two goal deficit as Manchester United rescue a 2-2 draw against Burnley at Old Trafford.","description":"A second half brace from Jesse Lingard erased a two goal deficit as Manchester United rescue a 2-2 draw against Burnley at Old Trafford.","geoRestrictions":{"countries":["US"],"type":"whitelist"},"syndicatable":true,"source":"intl","tracking":{"leagueName":"English Premier League","trackingName":"Manchester United 2-2 Burnley: Lingard brace rescues a draw","coverageType":"Final Game Highlight","sportName":"Soccer","trackingId":"int_171226_Man_United_vs_Burnley"},"duration":182,"deviceRestrictions":{"devices":["desktop","iphone","ipad","tablet","settop","handset","android"],"type":"whitelist"},"originalPublishDate":"2017-12-26T16:59:32Z","links":{"web":{"self":{"href":"http://www.espn.com/video/latest-videos/600/video/3325596"},"href":"http://www.espn.com/video/latest-videos/600/video/3325596"},"mobile":{"streaming":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/66fe8171-9eac-49fa-ae42-58ae09686c10/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325596"},"alert":{"href":"http://m.espn.go.com/general/video/videoAlert?vid=3325596"},"progressiveDownload":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/66fe8171-9eac-49fa-ae42-58ae09686c10/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325596"},"source":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_Man_United_vs_Burnley/int_171226_Man_United_vs_Burnley.mp4"},"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/66fe8171-9eac-49fa-ae42-58ae09686c10/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325596"},"api":{"self":{"href":"http://api.prod.espninfra.starwave.com/v1/video/clips/3325596?region=GB"}},"source":{"mezzanine":{"href":"http://media.video-origin.espn.com/espnvideo/ESPNi/2017/1226/int_171226_Man_United_vs_Burnley/int_171226_Man_United_vs_Burnley.mp4"},"hds":{"href":"http://hds.video-cdn.espn.com/z/motion/ESPNi/2017/1226/int_171226_Man_United_vs_Burnley/int_171226_Man_United_vs_Burnley_rel.smil/manifest.f4m"},"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_Man_United_vs_Burnley/int_171226_Man_United_vs_Burnley_360p30_1464k.mp4","HD":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_Man_United_vs_Burnley/int_171226_Man_United_vs_Burnley_720p30_2896k.mp4"},"HLS":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_Man_United_vs_Burnley/int_171226_Man_United_vs_Burnley.smil/master.m3u8","HD":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_Man_United_vs_Burnley/int_171226_Man_United_vs_Burnley.smil/master.m3u8"}},"flash":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_Man_United_vs_Burnley/int_171226_Man_United_vs_Burnley.smil"},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_Man_United_vs_Burnley/int_171226_Man_United_vs_Burnley_360p30_1464k.mp4"}}},"id":3325596,"lastModified":"2017-12-26T19:28:34Z","posterImages":{"default":{"width":576,"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_Man_United_vs_Burnley/int_171226_Man_United_vs_Burnley_default.jpg","height":324},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_Man_United_vs_Burnley/int_171226_Man_United_vs_Burnley.jpg"}},"headline":"Manchester United 2-2 Burnley: Lingard brace rescues a draw"},"addedClock":6,"uid":"s:600~l:700~e:480708~c:480708","competitors":[{"competitionIdPrevious":"480721","color":"DA020E","displayName":"Manchester United","type":"team","abbreviation":"MAN","competitionIdNext":"480702","uid":"s:600~t:360","homeAway":"home","score":"2","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/360.png","form":"DLWWL","record":"13-4-3","name":"Manchester United","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/360.png","id":"360"},{"competitionIdPrevious":"480723","color":"53162F","displayName":"Burnley","type":"team","abbreviation":"BUR","competitionIdNext":"480698","uid":"s:600~t:379","homeAway":"away","score":"2","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/379.png","form":"LDWWL","record":"9-6-5","name":"Burnley","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/379.png","id":"379"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=soccer&leagueAbbrev=eng.1&gameId=480708"}],"odds":{"awayTeamOdds":{"odds":{"summary":"1/7","handicap":0,"value":1.14},"team":{"id":"379","abbreviation":"BUR"}},"away":{},"provider":{"name":"Bet 365","id":"1001","priority":0},"links":[{"isExternal":true,"shortText":"Home Bet","rel":["home","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506786617&odds=40/1","text":"Home Bet","isPremium":false},{"isExternal":true,"shortText":"Away Bet","rel":["away","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506786619&odds=1/7","text":"Away Bet","isPremium":false},{"isExternal":true,"shortText":"Draw Bet","rel":["draw","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506786618&odds=9/2","text":"Draw Bet","isPremium":false}],"draw":{},"drawOdds":{"summary":"9/2","handicap":0,"value":5.5},"homeTeamOdds":{"odds":{"summary":"40/1","handicap":0,"value":41},"team":{"id":"360","abbreviation":"MAN"}},"home":{}},"seasonTypeHasGroups":false,"season":2017,"links":[{"rel":["event","desktop","summary"],"href":"http://www.espn.com/soccer/match?gameId=480708","text":"Summary"},{"rel":["event","desktop","report"],"href":"http://www.espn.com/soccer/report?gameId=480708","text":"Report"}],"id":"480708","recent":false,"group":{"groupId":1,"name":"2017-2018 English Premier League","abbreviation":"2017-2018 english premier league","shortName":"2017-2018 ENGLISH PREMIER LEAGUE"},"summary":"FT","seasonType":1,"competitionId":"480708","period":2,"broadcasts":[],"clock":"90:00","priority":13,"onWatch":false,"name":"2017/18 English Premier League","location":"Old Trafford","fullStatus":{"period":2,"clock":"90:00","type":{"description":"FULL TIME","id":28,"detail":"FT","shortDetail":"FT","state":"post"},"addedClock":6},"status":"post"},{"date":"2017-12-26T15:00:00Z","broadcast":"","notes":[],"timeValid":true,"link":"","video":{"gameId":480709,"cerebroId":"5a427dc5e4b066f53afc8e16","images":[{"name":"Poster Image","alt":"","width":576,"caption":"","credit":"","url":"http://media.video-cdn.espn.com/images/ESPNi/2017/1226/int_171226_INET_FC_West_Brom_Everton_HL/int_171226_INET_FC_West_Brom_Everton_HL.jpg","height":324}],"thumbnail":"http://a.espncdn.com/media/motion/ESPNi/2017/1226/int_171226_INET_FC_West_Brom_Everton_HL/int_171226_INET_FC_West_Brom_Everton_HL.jpg","ad":{"sport":"Soccer","bundle":"fcus_englishpremier_highlights"},"keywords":["Everton","West Brom"],"timeRestrictions":{"embargoDate":"2017-12-26T16:47:28Z","expirationDate":"2018-05-31T16:00:00Z"},"caption":"Neither side was particularly threatening in front of goal as West Brom held Everton to a scoreless draw.","description":"Neither side was particularly threatening in front of goal as West Brom held Everton to a scoreless draw.","geoRestrictions":{"countries":["US"],"type":"whitelist"},"syndicatable":true,"source":"intl","tracking":{"leagueName":"English Premier League","trackingName":"West Brom 0-0 Everton: Stalemate at the Hawthorns","coverageType":"Final Game Highlight","sportName":"Soccer","trackingId":"int_171226_INET_FC_West_Brom_Everton_HL"},"duration":91,"deviceRestrictions":{"devices":["desktop","iphone","ipad","tablet","settop","handset","android"],"type":"whitelist"},"originalPublishDate":"2017-12-26T16:47:28Z","links":{"web":{"self":{"href":"http://www.espn.com/video/latest-videos/600/video/3325489"},"href":"http://www.espn.com/video/latest-videos/600/video/3325489"},"mobile":{"streaming":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/51899fcf-6e28-4c44-aa86-9ef3b047f10a/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325489"},"alert":{"href":"http://m.espn.go.com/general/video/videoAlert?vid=3325489"},"progressiveDownload":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/51899fcf-6e28-4c44-aa86-9ef3b047f10a/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325489"},"source":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_West_Brom_Everton_HL/int_171226_INET_FC_West_Brom_Everton_HL.mp4"},"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/51899fcf-6e28-4c44-aa86-9ef3b047f10a/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325489"},"api":{"self":{"href":"http://api.prod.espninfra.starwave.com/v1/video/clips/3325489?region=GB"}},"source":{"mezzanine":{"href":"http://media.video-origin.espn.com/espnvideo/ESPNi/2017/1226/int_171226_INET_FC_West_Brom_Everton_HL/int_171226_INET_FC_West_Brom_Everton_HL.mp4"},"hds":{"href":"http://hds.video-cdn.espn.com/z/motion/ESPNi/2017/1226/int_171226_INET_FC_West_Brom_Everton_HL/int_171226_INET_FC_West_Brom_Everton_HL_rel.smil/manifest.f4m"},"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_West_Brom_Everton_HL/int_171226_INET_FC_West_Brom_Everton_HL_360p30_1464k.mp4","HD":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_West_Brom_Everton_HL/int_171226_INET_FC_West_Brom_Everton_HL_720p30_2896k.mp4"},"HLS":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_INET_FC_West_Brom_Everton_HL/int_171226_INET_FC_West_Brom_Everton_HL.smil/master.m3u8","HD":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_INET_FC_West_Brom_Everton_HL/int_171226_INET_FC_West_Brom_Everton_HL.smil/master.m3u8"}},"flash":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_West_Brom_Everton_HL/int_171226_INET_FC_West_Brom_Everton_HL.smil"},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_West_Brom_Everton_HL/int_171226_INET_FC_West_Brom_Everton_HL_360p30_1464k.mp4"}}},"id":3325489,"lastModified":"2017-12-26T19:28:32Z","posterImages":{"default":{"width":576,"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_West_Brom_Everton_HL/int_171226_INET_FC_West_Brom_Everton_HL_default.jpg","height":324},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_West_Brom_Everton_HL/int_171226_INET_FC_West_Brom_Everton_HL.jpg"}},"headline":"West Brom 0-0 Everton: Stalemate at the Hawthorns"},"addedClock":4,"uid":"s:600~l:700~e:480709~c:480709","competitors":[{"competitionIdPrevious":"480725","color":"091453","displayName":"West Bromwich Albion","type":"team","abbreviation":"WBA","competitionIdNext":"480696","uid":"s:600~t:383","homeAway":"home","score":"0","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/383.png","form":"LLDLD","record":"2-9-9","name":"West Bromwich Albion","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/383.png","id":"383"},{"competitionIdPrevious":"480717","color":"274488","displayName":"Everton","type":"team","abbreviation":"EVE","competitionIdNext":"480699","uid":"s:600~t:368","homeAway":"away","score":"0","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/368.png","form":"DWWDW","record":"7-6-7","name":"Everton","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/368.png","id":"368"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=soccer&leagueAbbrev=eng.1&gameId=480709"}],"odds":{"awayTeamOdds":{"odds":{"summary":"14/1","handicap":0,"value":15},"team":{"id":"368","abbreviation":"EVE"}},"away":{},"provider":{"name":"Bet 365","id":"1001","priority":0},"links":[{"isExternal":true,"shortText":"Home Bet","rel":["home","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506788393&odds=10/1","text":"Home Bet","isPremium":false},{"isExternal":true,"shortText":"Away Bet","rel":["away","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506788399&odds=14/1","text":"Away Bet","isPremium":false},{"isExternal":true,"shortText":"Draw Bet","rel":["draw","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506788397&odds=1/10","text":"Draw Bet","isPremium":false}],"draw":{},"drawOdds":{"summary":"1/10","handicap":0,"value":1.1},"homeTeamOdds":{"odds":{"summary":"10/1","handicap":0,"value":11},"team":{"id":"383","abbreviation":"WBA"}},"home":{}},"seasonTypeHasGroups":false,"season":2017,"links":[{"rel":["event","desktop","summary"],"href":"http://www.espn.com/soccer/match?gameId=480709","text":"Summary"},{"rel":["event","desktop","report"],"href":"http://www.espn.com/soccer/report?gameId=480709","text":"Report"}],"id":"480709","recent":false,"group":{"groupId":1,"name":"2017-2018 English Premier League","abbreviation":"2017-2018 english premier league","shortName":"2017-2018 ENGLISH PREMIER LEAGUE"},"summary":"FT","seasonType":1,"competitionId":"480709","period":2,"broadcasts":[],"clock":"90:00","priority":14,"onWatch":false,"name":"2017/18 English Premier League","location":"The Hawthorns","fullStatus":{"period":2,"clock":"90:00","type":{"description":"FULL TIME","id":28,"detail":"FT","shortDetail":"FT","state":"post"},"addedClock":4},"status":"post"},{"date":"2017-12-26T15:00:00Z","broadcast":"","notes":[],"timeValid":true,"link":"","video":{"gameId":480710,"cerebroId":"5a42847fe4b066f53afc8f85","images":[{"name":"Poster Image","alt":"","width":576,"caption":"","credit":"","url":"http://media.video-cdn.espn.com/images/ESPNi/2017/1226/int_171226_INET_FC_EPL_Watford_Leicester_HL/int_171226_INET_FC_EPL_Watford_Leicester_HL.jpg","height":324}],"thumbnail":"http://a.espncdn.com/media/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Watford_Leicester_HL/int_171226_INET_FC_EPL_Watford_Leicester_HL.jpg","ad":{"sport":"Soccer","bundle":"fcus_englishpremier_highlights"},"keywords":["Videos - Premier League Highlights","Videos - Highlights","English Premier League","Watford","Leicester City","Soccer"],"timeRestrictions":{"embargoDate":"2017-12-26T17:13:16Z","expirationDate":"2018-06-01T16:00:00Z"},"caption":"An own goal from Kasper Schmeichel and two late saves from Heurelho Gomes ensured Watford came away with a 2-1 win over Leicester.","description":"An own goal from Kasper Schmeichel and two late saves from Heurelho Gomes ensured Watford came away with a 2-1 win over Leicester.","geoRestrictions":{"countries":["US"],"type":"whitelist"},"syndicatable":true,"source":"intl","tracking":{"leagueName":"English Premier League","trackingName":"Watford 2-1 Leicester: Schmeichel own goal gives Watford win","coverageType":"Final Game Highlight","sportName":"Soccer","trackingId":"int_171226_INET_FC_EPL_Watford_Leicester_HL"},"duration":128,"deviceRestrictions":{"devices":["desktop","iphone","ipad","tablet","settop","handset","android"],"type":"whitelist"},"originalPublishDate":"2017-12-26T17:13:16Z","links":{"web":{"self":{"href":"http://www.espn.com/video/latest-videos/600/video/3325767"},"href":"http://www.espn.com/video/latest-videos/600/video/3325767"},"mobile":{"streaming":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/ec440670-4fb5-418c-98d9-15026d7a924e/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325767"},"alert":{"href":"http://m.espn.go.com/general/video/videoAlert?vid=3325767"},"progressiveDownload":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/ec440670-4fb5-418c-98d9-15026d7a924e/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325767"},"source":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Watford_Leicester_HL/int_171226_INET_FC_EPL_Watford_Leicester_HL.mp4"},"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/ec440670-4fb5-418c-98d9-15026d7a924e/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325767"},"api":{"self":{"href":"http://api.prod.espninfra.starwave.com/v1/video/clips/3325767?region=GB"}},"source":{"mezzanine":{"href":"http://media.video-origin.espn.com/espnvideo/ESPNi/2017/1226/int_171226_INET_FC_EPL_Watford_Leicester_HL/int_171226_INET_FC_EPL_Watford_Leicester_HL.mp4"},"hds":{"href":"http://hds.video-cdn.espn.com/z/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Watford_Leicester_HL/int_171226_INET_FC_EPL_Watford_Leicester_HL_rel.smil/manifest.f4m"},"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Watford_Leicester_HL/int_171226_INET_FC_EPL_Watford_Leicester_HL_360p30_1464k.mp4","HD":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Watford_Leicester_HL/int_171226_INET_FC_EPL_Watford_Leicester_HL_720p30_2896k.mp4"},"HLS":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Watford_Leicester_HL/int_171226_INET_FC_EPL_Watford_Leicester_HL.smil/master.m3u8","HD":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Watford_Leicester_HL/int_171226_INET_FC_EPL_Watford_Leicester_HL.smil/master.m3u8"}},"flash":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Watford_Leicester_HL/int_171226_INET_FC_EPL_Watford_Leicester_HL.smil"},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Watford_Leicester_HL/int_171226_INET_FC_EPL_Watford_Leicester_HL_360p30_1464k.mp4"}}},"id":3325767,"lastModified":"2017-12-26T20:16:33Z","posterImages":{"default":{"width":576,"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Watford_Leicester_HL/int_171226_INET_FC_EPL_Watford_Leicester_HL_default.jpg","height":324},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Watford_Leicester_HL/int_171226_INET_FC_EPL_Watford_Leicester_HL.jpg"}},"headline":"Watford 2-1 Leicester: Schmeichel own goal gives Watford win"},"addedClock":4,"uid":"s:600~l:700~e:480710~c:480710","competitors":[{"competitionIdPrevious":"480724","color":"FFF61B","displayName":"Watford","type":"team","abbreviation":"WAT","competitionIdNext":"480704","uid":"s:600~t:395","homeAway":"home","score":"2","winner":true,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/395.png","form":"LLLLD","record":"7-4-9","name":"Watford","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/395.png","id":"395"},{"competitionIdPrevious":"480721","color":"0053A0","displayName":"Leicester City","type":"team","abbreviation":"LEI","competitionIdNext":"480700","uid":"s:600~t:375","homeAway":"away","score":"1","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/375.png","form":"DLLWW","record":"7-6-7","name":"Leicester City","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/375.png","id":"375"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=soccer&leagueAbbrev=eng.1&gameId=480710"}],"odds":{"awayTeamOdds":{"odds":{"summary":"300/1","handicap":0,"value":301},"team":{"id":"375","abbreviation":"LEI"}},"away":{},"provider":{"name":"Bet 365","id":"1001","priority":0},"links":[{"isExternal":true,"shortText":"Home Bet","rel":["home","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506787363&odds=1/14","text":"Home Bet","isPremium":false},{"isExternal":true,"shortText":"Away Bet","rel":["away","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506787365&odds=300/1","text":"Away Bet","isPremium":false},{"isExternal":true,"shortText":"Draw Bet","rel":["draw","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506787364&odds=8/1","text":"Draw Bet","isPremium":false}],"draw":{},"drawOdds":{"summary":"8/1","handicap":0,"value":9},"homeTeamOdds":{"odds":{"summary":"1/14","handicap":0,"value":1.07},"team":{"id":"395","abbreviation":"WAT"}},"home":{}},"seasonTypeHasGroups":false,"season":2017,"links":[{"rel":["event","desktop","summary"],"href":"http://www.espn.com/soccer/match?gameId=480710","text":"Summary"},{"rel":["event","desktop","report"],"href":"http://www.espn.com/soccer/report?gameId=480710","text":"Report"}],"id":"480710","recent":false,"group":{"groupId":1,"name":"2017-2018 English Premier League","abbreviation":"2017-2018 english premier league","shortName":"2017-2018 ENGLISH PREMIER LEAGUE"},"summary":"FT","seasonType":1,"competitionId":"480710","period":2,"broadcasts":[],"clock":"90:00","priority":15,"onWatch":false,"name":"2017/18 English Premier League","location":"Vicarage Road Stadium","fullStatus":{"period":2,"clock":"90:00","type":{"description":"FULL TIME","id":28,"detail":"FT","shortDetail":"FT","state":"post"},"addedClock":4},"status":"post"},{"date":"2017-12-26T15:00:00Z","broadcast":"","notes":[],"timeValid":true,"link":"","video":{"gameId":480713,"cerebroId":"5a42817be4b066f53afc8f2d","images":[{"name":"Poster Image","alt":"","width":576,"caption":"","credit":"","url":"http://media.video-cdn.espn.com/images/ESPNi/2017/1226/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL.jpg","height":324}],"thumbnail":"http://a.espncdn.com/media/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL.jpg","ad":{"sport":"Soccer","bundle":"fcus_englishpremier_highlights"},"keywords":["Premier League","Huddersfield","Stoke City"],"timeRestrictions":{"embargoDate":"2017-12-26T17:00:28Z","expirationDate":"2018-05-13T16:00:00Z"},"caption":"Ramadan Sobhi's second-half goal canceled out Tom Ince's opener to give Stoke an away draw at Huddersfield.","description":"Ramadan Sobhi's second-half goal canceled out Tom Ince's opener to give Stoke an away draw at Huddersfield.","geoRestrictions":{"countries":["US"],"type":"whitelist"},"syndicatable":true,"source":"intl","tracking":{"leagueName":"English Premier League","trackingName":"Huddersfield 1-1 Stoke: Terriers and Potters split points","coverageType":"Final Game Highlight","sportName":"Soccer","trackingId":"int_171226_INET_FC_EPL_Huddersfield_Stoke_HL"},"duration":134,"deviceRestrictions":{"devices":["desktop","iphone","ipad","tablet","settop","handset","android"],"type":"whitelist"},"originalPublishDate":"2017-12-26T17:00:28Z","links":{"web":{"self":{"href":"http://www.espn.com/video/latest-videos/600/video/3325653"},"href":"http://www.espn.com/video/latest-videos/600/video/3325653"},"mobile":{"streaming":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/2996fcab-05f2-4dcf-b20d-4277d8e795f9/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325653"},"alert":{"href":"http://m.espn.go.com/general/video/videoAlert?vid=3325653"},"progressiveDownload":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/2996fcab-05f2-4dcf-b20d-4277d8e795f9/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325653"},"source":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL.mp4"},"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/2996fcab-05f2-4dcf-b20d-4277d8e795f9/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325653"},"api":{"self":{"href":"http://api.prod.espninfra.starwave.com/v1/video/clips/3325653?region=GB"}},"source":{"mezzanine":{"href":"http://media.video-origin.espn.com/espnvideo/ESPNi/2017/1226/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL.mp4"},"hds":{"href":"http://hds.video-cdn.espn.com/z/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL_rel.smil/manifest.f4m"},"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL_360p30_1464k.mp4","HD":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL_720p30_2896k.mp4"},"HLS":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL.smil/master.m3u8","HD":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL.smil/master.m3u8"}},"flash":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL.smil"},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL_360p30_1464k.mp4"}}},"id":3325653,"lastModified":"2017-12-26T19:28:33Z","posterImages":{"default":{"width":576,"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL_default.jpg","height":324},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL/int_171226_INET_FC_EPL_Huddersfield_Stoke_HL.jpg"}},"headline":"Huddersfield 1-1 Stoke: Terriers and Potters split points"},"addedClock":5,"uid":"s:600~l:700~e:480713~c:480713","competitors":[{"competitionIdPrevious":"480719","color":"0271B9","displayName":"Huddersfield Town","type":"team","abbreviation":"HUD","competitionIdNext":"480698","uid":"s:600~t:335","homeAway":"home","score":"1","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/335.png","form":"DWLWL","record":"6-5-9","name":"Huddersfield Town","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/335.png","id":"335"},{"competitionIdPrevious":"480725","color":"E03A3E","displayName":"Stoke City","type":"team","abbreviation":"STK","competitionIdNext":"480703","uid":"s:600~t:336","homeAway":"away","score":"1","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/336.png","form":"WLLLW","record":"5-5-10","name":"Stoke City","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/336.png","id":"336"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=soccer&leagueAbbrev=eng.1&gameId=480713"}],"odds":{"awayTeamOdds":{"odds":{"summary":"14/1","handicap":0,"value":15},"team":{"id":"336","abbreviation":"STK"}},"away":{},"provider":{"name":"Bet 365","id":"1001","priority":0},"links":[{"isExternal":true,"shortText":"Home Bet","rel":["home","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506785946&odds=10/1","text":"Home Bet","isPremium":false},{"isExternal":true,"shortText":"Away Bet","rel":["away","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506785948&odds=14/1","text":"Away Bet","isPremium":false},{"isExternal":true,"shortText":"Draw Bet","rel":["draw","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506785947&odds=1/9","text":"Draw Bet","isPremium":false}],"draw":{},"drawOdds":{"summary":"1/9","handicap":0,"value":1.11},"homeTeamOdds":{"odds":{"summary":"10/1","handicap":0,"value":11},"team":{"id":"335","abbreviation":"HUD"}},"home":{}},"seasonTypeHasGroups":false,"season":2017,"links":[{"rel":["event","desktop","summary"],"href":"http://www.espn.com/soccer/match?gameId=480713","text":"Summary"},{"rel":["event","desktop","report"],"href":"http://www.espn.com/soccer/report?gameId=480713","text":"Report"}],"id":"480713","recent":false,"group":{"groupId":1,"name":"2017-2018 English Premier League","abbreviation":"2017-2018 english premier league","shortName":"2017-2018 ENGLISH PREMIER LEAGUE"},"summary":"FT","seasonType":1,"competitionId":"480713","period":2,"broadcasts":[],"clock":"90:00","priority":16,"onWatch":false,"name":"2017/18 English Premier League","location":"John Smith's Stadium","fullStatus":{"period":2,"clock":"90:00","type":{"description":"FULL TIME","id":28,"detail":"FT","shortDetail":"FT","state":"post"},"addedClock":5},"status":"post"},{"date":"2017-12-26T15:00:00Z","broadcast":"","notes":[],"timeValid":true,"link":"","video":{"gameId":480715,"cerebroId":"5a429388e4b066f53afc923e","images":[{"name":"Poster Image","alt":"","width":576,"caption":"","credit":"","url":"http://media.video-cdn.espn.com/images/ESPNi/2017/1226/int_171226_INET_FC_Bournemouth_Watford_HL/int_171226_INET_FC_Bournemouth_Watford_HL.jpg","height":324}],"thumbnail":"http://a.espncdn.com/media/motion/ESPNi/2017/1226/int_171226_INET_FC_Bournemouth_Watford_HL/int_171226_INET_FC_Bournemouth_Watford_HL.jpg","ad":{"sport":"Soccer","bundle":"fcus_englishpremier_highlights"},"keywords":["Videos - Premier League Highlights","Videos - Highlights English Premier League","AFC Bournemouth","West Ham United","Soccer"],"timeRestrictions":{"embargoDate":"2017-12-26T18:20:37Z","expirationDate":"2018-06-01T16:00:00Z"},"caption":"Bournemouth were awarded a controversial equalizer late in the second half to secure a point in a 3-3 draw with West Ham.","description":"Bournemouth were awarded a controversial equalizer late in the second half to secure a point in a 3-3 draw with West Ham.","geoRestrictions":{"countries":["US"],"type":"whitelist"},"syndicatable":true,"source":"intl","tracking":{"leagueName":"English Premier League","trackingName":"Bournemouth 3-3 West Ham: Cherries' score controversial equalizer","coverageType":"Final Game Highlight","sportName":"Soccer","trackingId":"int_171226_INET_FC_Bournemouth_Watford_HL"},"duration":194,"deviceRestrictions":{"devices":["desktop","iphone","ipad","tablet","settop","handset","android"],"type":"whitelist"},"originalPublishDate":"2017-12-26T18:20:37Z","links":{"web":{"self":{"href":"http://www.espn.com/video/latest-videos/600/video/3325948"},"href":"http://www.espn.com/video/latest-videos/600/video/3325948"},"mobile":{"streaming":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/858588a8-1827-462c-a5b9-7e3bd3584128/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325948"},"alert":{"href":"http://m.espn.go.com/general/video/videoAlert?vid=3325948"},"progressiveDownload":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/858588a8-1827-462c-a5b9-7e3bd3584128/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325948"},"source":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_Bournemouth_Watford_HL/int_171226_INET_FC_Bournemouth_Watford_HL.mp4"},"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/858588a8-1827-462c-a5b9-7e3bd3584128/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3325948"},"api":{"self":{"href":"http://api.prod.espninfra.starwave.com/v1/video/clips/3325948?region=GB"}},"source":{"mezzanine":{"href":"http://media.video-origin.espn.com/espnvideo/ESPNi/2017/1226/int_171226_INET_FC_Bournemouth_Watford_HL/int_171226_INET_FC_Bournemouth_Watford_HL.mp4"},"hds":{"href":"http://hds.video-cdn.espn.com/z/motion/ESPNi/2017/1226/int_171226_INET_FC_Bournemouth_Watford_HL/int_171226_INET_FC_Bournemouth_Watford_HL_rel.smil/manifest.f4m"},"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_Bournemouth_Watford_HL/int_171226_INET_FC_Bournemouth_Watford_HL_360p30_1464k.mp4","HD":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_Bournemouth_Watford_HL/int_171226_INET_FC_Bournemouth_Watford_HL_720p30_2896k.mp4"},"HLS":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_INET_FC_Bournemouth_Watford_HL/int_171226_INET_FC_Bournemouth_Watford_HL.smil/master.m3u8","HD":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_INET_FC_Bournemouth_Watford_HL/int_171226_INET_FC_Bournemouth_Watford_HL.smil/master.m3u8"}},"flash":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_Bournemouth_Watford_HL/int_171226_INET_FC_Bournemouth_Watford_HL.smil"},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_Bournemouth_Watford_HL/int_171226_INET_FC_Bournemouth_Watford_HL_360p30_1464k.mp4"}}},"id":3325948,"lastModified":"2017-12-26T19:57:38Z","posterImages":{"default":{"width":576,"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_Bournemouth_Watford_HL/int_171226_INET_FC_Bournemouth_Watford_HL_default.jpg","height":324},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_INET_FC_Bournemouth_Watford_HL/int_171226_INET_FC_Bournemouth_Watford_HL.jpg"}},"headline":"Bournemouth 3-3 West Ham: Cherries' score controversial equalizer"},"addedClock":7,"uid":"s:600~l:700~e:480715~c:480715","competitors":[{"competitionIdPrevious":"480716","color":"C8142F","displayName":"AFC Bournemouth","type":"team","abbreviation":"BOU","competitionIdNext":"480699","uid":"s:600~t:349","homeAway":"home","score":"3","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/349.png","form":"LLLLD","record":"4-5-11","name":"AFC Bournemouth","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/349.png","id":"349"},{"competitionIdPrevious":"480722","color":"60223B","displayName":"West Ham United","type":"team","abbreviation":"WHU","competitionIdNext":"480695","uid":"s:600~t:371","homeAway":"away","score":"3","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/371.png","form":"LLWDW","record":"4-6-10","name":"West Ham United","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/371.png","id":"371"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=soccer&leagueAbbrev=eng.1&gameId=480715"}],"odds":{"awayTeamOdds":{"odds":{"summary":"1/16","handicap":0,"value":1.06},"team":{"id":"371","abbreviation":"WHU"}},"away":{},"provider":{"name":"Bet 365","id":"1001","priority":0},"links":[{"isExternal":true,"shortText":"Home Bet","rel":["home","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506784674&odds=350/1","text":"Home Bet","isPremium":false},{"isExternal":true,"shortText":"Away Bet","rel":["away","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506784676&odds=1/16","text":"Away Bet","isPremium":false},{"isExternal":true,"shortText":"Draw Bet","rel":["draw","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506784675&odds=9/1","text":"Draw Bet","isPremium":false}],"draw":{},"drawOdds":{"summary":"9/1","handicap":0,"value":10},"homeTeamOdds":{"odds":{"summary":"350/1","handicap":0,"value":351},"team":{"id":"349","abbreviation":"BOU"}},"home":{}},"seasonTypeHasGroups":false,"season":2017,"links":[{"rel":["event","desktop","summary"],"href":"http://www.espn.com/soccer/match?gameId=480715","text":"Summary"},{"rel":["event","desktop","report"],"href":"http://www.espn.com/soccer/report?gameId=480715","text":"Report"}],"id":"480715","recent":false,"group":{"groupId":1,"name":"2017-2018 English Premier League","abbreviation":"2017-2018 english premier league","shortName":"2017-2018 ENGLISH PREMIER LEAGUE"},"summary":"FT","seasonType":1,"competitionId":"480715","period":2,"broadcasts":[],"clock":"90:00","priority":17,"onWatch":false,"name":"2017/18 English Premier League","location":"Vitality Stadium","fullStatus":{"period":2,"clock":"90:00","type":{"description":"FULL TIME","id":28,"detail":"FT","shortDetail":"FT","state":"post"},"addedClock":7},"status":"post"},{"date":"2017-12-26T17:30:00Z","broadcast":"","notes":[],"timeValid":true,"link":"","video":{"gameId":480714,"cerebroId":"5a429fd1e4b066f53afc95bd","images":[{"name":"Poster Image","alt":"","width":576,"caption":"","credit":"","url":"http://media.video-cdn.espn.com/images/ESPNi/2017/1226/int_171226_fc_liverpool_swansea_hl/int_171226_fc_liverpool_swansea_hl.jpg","height":324}],"thumbnail":"http://a.espncdn.com/media/motion/ESPNi/2017/1226/int_171226_fc_liverpool_swansea_hl/int_171226_fc_liverpool_swansea_hl.jpg","ad":{"sport":"Soccer","bundle":"fcus_englishpremier_highlights"},"keywords":[],"timeRestrictions":{"embargoDate":"2017-12-26T19:14:08Z","expirationDate":"2018-01-07T17:00:00Z"},"caption":"Liverpool scored five goals for the third time this season as they blast hapless Swansea City at Anfield.","description":"Liverpool scored five goals for the third time this season as they blast hapless Swansea City at Anfield.","geoRestrictions":{"countries":["US"],"type":"whitelist"},"syndicatable":true,"source":"intl","tracking":{"leagueName":"English Premier League","trackingName":"Liverpool 5-0 Swansea City: Anfield goal-fest","coverageType":"Final Game Highlight","sportName":"Soccer","trackingId":"int_171226_fc_liverpool_swansea_hl"},"duration":197,"deviceRestrictions":{"devices":["desktop","iphone","ipad","tablet","settop","handset","android"],"type":"whitelist"},"originalPublishDate":"2017-12-26T19:14:08Z","links":{"web":{"self":{"href":"http://www.espn.com/video/latest-videos/600/video/3326130"},"href":"http://www.espn.com/video/latest-videos/600/video/3326130"},"mobile":{"streaming":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/38d5c075-e32f-4d24-94cb-99257dc9cf91/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3326130"},"alert":{"href":"http://m.espn.go.com/general/video/videoAlert?vid=3326130"},"progressiveDownload":{"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/38d5c075-e32f-4d24-94cb-99257dc9cf91/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3326130"},"source":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_fc_liverpool_swansea_hl/int_171226_fc_liverpool_swansea_hl.mp4"},"href":"http://once.unicornmedia.com/now/od/auto/07355f66-a73e-46c2-885b-e769dac7c817/20879ce0-ad85-4acf-b0b4-f4a91a6c1517/38d5c075-e32f-4d24-94cb-99257dc9cf91/content.once?UMADPARAMreferer=http://espnfc.com/video/espnfc/video?id=3326130"},"api":{"self":{"href":"http://api.prod.espninfra.starwave.com/v1/video/clips/3326130?region=GB"}},"source":{"mezzanine":{"href":"http://media.video-origin.espn.com/espnvideo/ESPNi/2017/1226/int_171226_fc_liverpool_swansea_hl/int_171226_fc_liverpool_swansea_hl.mp4"},"hds":{"href":"http://hds.video-cdn.espn.com/z/motion/ESPNi/2017/1226/int_171226_fc_liverpool_swansea_hl/int_171226_fc_liverpool_swansea_hl_rel.smil/manifest.f4m"},"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_fc_liverpool_swansea_hl/int_171226_fc_liverpool_swansea_hl_360p30_1464k.mp4","HD":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_fc_liverpool_swansea_hl/int_171226_fc_liverpool_swansea_hl_720p30_2896k.mp4"},"HLS":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_fc_liverpool_swansea_hl/int_171226_fc_liverpool_swansea_hl.smil/master.m3u8","HD":{"href":"http://pkg.video-cdn.espn.com/i/motion/ESPNi/2017/1226/int_171226_fc_liverpool_swansea_hl/int_171226_fc_liverpool_swansea_hl.smil/master.m3u8"}},"flash":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_fc_liverpool_swansea_hl/int_171226_fc_liverpool_swansea_hl.smil"},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_fc_liverpool_swansea_hl/int_171226_fc_liverpool_swansea_hl_360p30_1464k.mp4"}}},"id":3326130,"lastModified":"2017-12-26T22:33:21Z","posterImages":{"default":{"width":576,"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_fc_liverpool_swansea_hl/int_171226_fc_liverpool_swansea_hl_default.jpg","height":324},"full":{"href":"http://media.video-cdn.espn.com/motion/ESPNi/2017/1226/int_171226_fc_liverpool_swansea_hl/int_171226_fc_liverpool_swansea_hl.jpg"}},"headline":"Liverpool 5-0 Swansea City: Anfield goal-fest"},"addedClock":4,"uid":"s:600~l:700~e:480714~c:480714","competitors":[{"competitionIdPrevious":"480720","color":"D00027","displayName":"Liverpool","type":"team","abbreviation":"LIV","competitionIdNext":"480700","uid":"s:600~t:364","homeAway":"home","score":"5","winner":true,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/364.png","form":"DWDDW","record":"10-8-2","name":"Liverpool","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/364.png","id":"364"},{"competitionIdPrevious":"480718","color":"000000","displayName":"Swansea City","type":"team","abbreviation":"SWA","competitionIdNext":"480704","uid":"s:600~t:318","homeAway":"away","score":"0","winner":false,"logoDark":"http://a.espncdn.com/i/teamlogos/soccer/500-dark/318.png","form":"DLLWL","record":"3-4-13","name":"Swansea City","logo":"http://a.espncdn.com/i/teamlogos/soccer/500/318.png","id":"318"}],"appLinks":[{"rel":["event","app","sportscenter"],"href":"sportscenter://x-callback-url/showGame?sportName=soccer&leagueAbbrev=eng.1&gameId=480714"}],"odds":{"awayTeamOdds":{"odds":{"summary":"200/1","handicap":0,"value":201},"team":{"id":"318","abbreviation":"SWA"}},"away":{},"provider":{"name":"Bet 365","id":"1001","priority":0},"links":[{"isExternal":true,"shortText":"Home Bet","rel":["home","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506789018&odds=1/250","text":"Home Bet","isPremium":false},{"isExternal":true,"shortText":"Away Bet","rel":["away","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506789020&odds=200/1","text":"Away Bet","isPremium":false},{"isExternal":true,"shortText":"Draw Bet","rel":["draw","desktop","bets","bet-365"],"language":"en","href":"http://www.bet365.com/instantbet/default.asp?affiliatecode=365_307577&Instantbet=1&participantid=1506789019&odds=40/1","text":"Draw Bet","isPremium":false}],"draw":{},"drawOdds":{"summary":"40/1","handicap":0,"value":41},"homeTeamOdds":{"odds":{"summary":"1/250","handicap":0,"value":1},"team":{"id":"364","abbreviation":"LIV"}},"home":{}},"seasonTypeHasGroups":false,"season":2017,"links":[{"rel":["event","desktop","summary"],"href":"http://www.espn.com/soccer/match?gameId=480714","text":"Summary"},{"rel":["event","desktop","report"],"href":"http://www.espn.com/soccer/report?gameId=480714","text":"Report"}],"id":"480714","recent":false,"group":{"groupId":1,"name":"2017-2018 English Premier League","abbreviation":"2017-2018 english premier league","shortName":"2017-2018 ENGLISH PREMIER LEAGUE"},"summary":"FT","seasonType":1,"competitionId":"480714","period":2,"broadcasts":[],"clock":"90:00","priority":18,"onWatch":false,"name":"2017/18 English Premier League","location":"Anfield","fullStatus":{"period":2,"clock":"90:00","type":{"description":"FULL TIME","id":28,"detail":"FT","shortDetail":"FT","state":"post"},"addedClock":4},"status":"post"}]}],"name":"soccer","id":"600","slug":"soccer"},{"uid":"s:200","leagues":[{"uid":"s:200~l:10883","smartdates":["2017-12-25T08:00:00Z","2017-12-26T08:00:00Z","2017-12-27T08:00:00Z"],"name":"England tour of Australia and New Zealand 2017/18","id":"10883","shortName":"ENG tour of AUS and NZ 2017/18","abbreviation":"ENG tour of AUS and NZ 2017-18","slug":"eng-tour-of-aus-and-nz-2017-18","isTournament":false,"events":[{"date":"2017-12-25T23:30:00Z","notes":[{"href":"http://www.espncricinfo.com/ci/engine/records/index.html?class=1","type":"matchnumber"},{"href":"http://www.espncricinfo.com/ci/engine/series/index.html?season=2017/18","type":"season"},{"type":"matchdays"},{"type":"hoursofplay"},{"type":"toss"},{"type":"livecommentator"},{"type":"livescorer"},{"dayNumber":"1","id":"493106","type":"matchnote"},{"dayNumber":"1","id":"493107","type":"matchnote"},{"dayNumber":"1","id":"493108","type":"matchnote"},{"dayNumber":"1","id":"493109","type":"matchnote"},{"dayNumber":"1","id":"493110","type":"matchnote"},{"dayNumber":"1","id":"493111","type":"matchnote"},{"dayNumber":"1","id":"493112","type":"matchnote"},{"dayNumber":"1","id":"493116","type":"matchnote"},{"dayNumber":"1","id":"493117","type":"matchnote"},{"dayNumber":"1","id":"493124","type":"matchnote"},{"dayNumber":"1","id":"493126","type":"matchnote"},{"dayNumber":"1","id":"493128","type":"matchnote"},{"dayNumber":"1","id":"493134","type":"matchnote"},{"dayNumber":"1","id":"493137","type":"matchnote"},{"dayNumber":"1","id":"493138","type":"matchnote"},{"dayNumber":"1","id":"493139","type":"matchnote"},{"dayNumber":"1","id":"493143","type":"matchnote"},{"dayNumber":"1","id":"493144","type":"matchnote"},{"dayNumber":"2","id":"493187","type":"matchnote"},{"dayNumber":"2","id":"493188","type":"matchnote"},{"dayNumber":"2","id":"493189","type":"matchnote"},{"dayNumber":"2","id":"493190","type":"matchnote"},{"dayNumber":"2","id":"493191","type":"matchnote"},{"dayNumber":"2","id":"493192","type":"matchnote"},{"dayNumber":"2","id":"493193","type":"matchnote"},{"dayNumber":"2","id":"493194","type":"matchnote"},{"date":"","dayNumber":"1","id":"154521","type":"closeofplay"}],"endDate":"2017-12-30T23:59:00Z","timeValid":true,"link":"http://www.espn.in/cricket/series/10883/game/1072308/australia-vs-england-4th-test-eng-tour-of-aus-and-nz-2017-18/","description":"4th Test, England tour of Australia and New Zealand at Melbourne, Dec 26-30 2017","title":"4th Test","addedClock":0,"uid":"s:200~e:1072308~c:1072308","competitors":[{"lastName":"","competitionIdPrevious":"1072307","color":"","displayName":"Australia","type":"team","abbreviation":"AUS","competitionIdNext":"1072309","uid":"s:200~t:2","homeAway":"home","score":"326/9 (116.4 ov)","firstName":"","winner":false,"record":"0-0","name":"AUS","logo":"http://a.espncdn.com/i/teamlogos/cricket/500/2.png","middleName":"","id":"2","place":1,"shortName":"","order":1,"isNational":true},{"lastName":"","competitionIdPrevious":"1072307","color":"","displayName":"England","type":"team","abbreviation":"ENG","competitionIdNext":"1072309","uid":"s:200~t:1","homeAway":"away","score":"","firstName":"","winner":false,"record":"0-0","name":"ENG","logo":"http://a.espncdn.com/i/teamlogos/cricket/500/1.png","middleName":"","id":"1","place":1,"shortName":"","order":2,"isNational":true}],"appLinks":[],"odds":{"awayTeamOdds":{"odds":{"summary":"10/3","handicap":0,"value":0},"team":{"id":"1","abbreviation":"ENG"}},"away":{},"provider":{"name":"Bet 365","id":1,"priority":0},"links":[{"shortText":"Home Bet","rel":["home","desktop","hometeamodds","bet-365","desktop"],"href":"http://www.bet365.com/instantbet/default.asp?participantid=1495508698&affiliatecode=365_307576&odds=4/6&Instantbet=1","text":"homeTeamOdds"},{"shortText":"Away Bet","rel":["home","desktop","awayteamodds","bet-365","desktop"],"href":"http://www.bet365.com/instantbet/default.asp?participantid=1495508700&affiliatecode=365_307576&odds=10/3&Instantbet=1","text":"awayTeamOdds"},{"shortText":"Draw Bet","rel":["home","desktop","drawodds","bet-365","desktop"],"href":"http://www.bet365.com/instantbet/default.asp?participantid=1495508699&affiliatecode=365_307576&odds=15/4&Instantbet=1","text":"drawOdds"}],"draw":{},"drawOdds":{"summary":"15/4","handicap":0,"value":0},"homeTeamOdds":{"odds":{"summary":"4/6","handicap":0,"value":0},"team":{"id":"2","abbreviation":"AUS"}},"home":{}},"seasonTypeHasGroups":false,"season":2017,"links":[{"rel":["event","boxscore","match","live","summary","desktop"],"href":"http://www.espn.in/cricket/series/10883/game/1072308/australia-vs-england-4th-test-eng-tour-of-aus-and-nz-2017-18/","text":"Summary"}],"id":"1072308","locationAndDate":"at Melbourne, Dec 26-30 2017","group":{"groupId":"1","name":"Regular Season","abbreviation":"England tour of Australia and New Zealand","shortName":"ENGLAND TOUR OF AUSTRALIA AND NEW ZEALAND"},"summary":"Live","seasonType":"1","competitionId":"1072308","period":1,"clock":"0'","eventType":"Test","priority":19,"seasonEndDate":"2018-04-03T23:59:00Z","onWatch":false,"seasonStartDate":"2017-11-04T00:00:00Z","preCommentaryAvailable":false,"name":"Australia v England","location":"Melbourne Cricket Ground","shortName":"AUS v ENG","fullStatus":{"summary":"Australia won the toss and elected to bat","period":1,"battingTeamId":2,"displayClock":"0'","session":"Day 2  Session 2","dayNumber":2,"clock":0,"presentLocalTime":"13:18","type":{"description":"Live","id":"0","detail":"Live","shortDetail":"Live","state":"in"},"addedClock":0},"status":"in"}]}],"name":"Cricket","id":"200"}]},
				queue: []
			};

			

		</script>


	<script type='text/javascript'>jQuery.subscribe('espn.defer.end', function () { espn.scoreboard.init(); });</script>

	<script>
	(function() {
		function loadDefer() {
			var deferScripts = [
				'http://a.espncdn.com/redesign/0.379.11/js/espn-defer.js',
				'http://a.espncdn.com/redesign/0.379.11/js/espn-defer-low.js'
			];

			$.when(deferScripts.map(function (script) {
				var deferred = $.Deferred();
				$.getScriptCache(script, deferred.resolve);
				return deferred;
			})).done(function () {
				if(espn.siteType === 'data-lite' && typeof espn.ads.loadGPT === 'function') {
					espn.ads.loadGPT();
				}
			});
		}

		if(window.espn.loadType === "loadEnd" && espn_ui.deviceType !== 'desktop') {
			var race = [];
			$.when(function () {
				var deferred = $.Deferred();
				$(window).load(deferred.resolve);
				if(espn.siteType !== 'data-lite') {
					setTimeout( deferred.resolve, 5000 );
				}
				return deferred;
			}()).then(loadDefer)

		}else{
			loadDefer();
		}
		
	})();
	</script>



	<script>espn_ui.Helpers.translate.init();</script>

</body>
</html>
<style>
#global-viewport #pane-main {
	padding-top: 116px;
}
</style>


<div class="layout-abc">



	<section class="col-b">

		<section class="module game-block">




			<header class="game-strip nba pre  ">



				<div class="game-details header">
					<span class="cscore_notes_game">SPORT CHAMPIONSHIP PRES. BY
						CAPITAL ONE - EAST REGION - ELITE 8</span> <span
						class="cscore_notes_series">Team Leads Series 4-0</span>
				</div>

				<a class="competitors">

					<div class="team away possession">
						<div class="team__content">
							<div class="team__banner" style="background-color: #c4ced3">
								<div class="team__banner__wrapper">
									<img src="picture/6ea9bfca02524c0f90adba9179c13e95.gif"
										class="imageLoaded">


									<svg class="team__svg team__svg--primary"
										xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink"
										viewBox="0 0 176 80">
	<defs>
		<linearGradient id="linear-gradient" x1="108.61" y1="752.49"
											x2="90.78" y2="770.32" gradientTransform="translate(-5 -710)"
											gradientUnits="userSpaceOnUse">
			<stop offset="0" stop-opacity="0" />
			<stop offset="1" />
		</linearGradient>
	</defs>
	<polygon class="team__stroke" points="81 80 80 80 0 0 1 0 81 80" />
	<polygon class="team__gradient"
											points="170.1 80 122.1 80 42.1 0 90.1 0 170.1 80" />
</svg>

									<svg class="team__svg team__svg--left" data-name="Layer 1"
										xmlns="http://www.w3.org/2000/svg" viewBox="0 0 176 80">
	<polygon class="team__left" points="0 80 80 80 0 0 0 80" />
</svg>

									<svg class="team__svg team__svg--right"
										xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink"
										viewBox="0 0 176 80">
	<polygon class="team__right" points="176 0 96 0 176 80 176 0" />
</svg>
								</div>
							</div>
							<div class="team-container">
								<div class="team-info">
									<div class="team-info-wrapper">



										<span class="team-name"><span class="long-name">Minnesota</span><span
											class="short-name">Timberwolves</span><span class="abbrev">MIN</span></span>
									</div>


									<span class="record">00-00<span class="inner-record">,
											00-00 away</span></span>
								</div>
								<div class="team-info-logo">
									<div class="logo">
										<img class="team-logo"
											src="picture/6ea9bfca02524c0f90adba9179c13e95.gif">
									</div>
									<span class="possession away icon-font-before">Poss</span>
								</div>
							</div>
							<div class="score-container">
								<span class="score icon-font-after"> </span> <span
									class="timeouts"><span class="timeout"></span><span
									class="timeout"></span><span class="timeout"></span><span
									class="timeout"></span><span class="timeout used"></span><span
									class="timeout used"></span><span class="timeout used"></span></span>
								<span class="bonus">Bonus</span>
							</div>
						</div>
					</div>

					<div class="game-status">


						<span class="network"><span>ESPN</span>/<span>ESPN2</span></span>
						<span data-date="2015-09-11T00:30Z" data-behavior="date_time">
							<span class="game-date">00/00</span> <span class="game-time">

								00:00 PM GMT</span>
						</span> <span class="possession home icon-font-before icon-font-after">Poss</span>






						<table class="miniTable">
							<thead>
								<tr>
									<th class="network">ESPN</th>
									<th>1</th>
									<th>2</th>
									<th>3</th>
									<th>4</th>
									<th class="overtime">OT</th>
									<th class="final-score">T</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="team-name">MIN</td>
									<td>00</td>
									<td>00</td>
									<td>00</td>
									<td>00</td>
									<td class="overtime">00</td>
									<td class="final-score">51</td>
								</tr>
								<tr>
									<td class="team-name">OKC</td>
									<td>00</td>
									<td>00</td>
									<td>00</td>
									<td>00</td>
									<td class="overtime">00</td>
									<td class="final-score">47</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="team home">
						<div class="team__content">
							<div class="team__banner" style="background-color: #C67C03">
								<div class="team__banner__wrapper">
									<img src="picture/ec06146e11ca4272bcbc43599409e530.gif"
										class="imageLoaded">


									<svg class="team__svg team__svg--primary"
										xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink"
										viewBox="0 0 176 80">
	<defs>
		<linearGradient id="linear-gradient" x1="108.61" y1="752.49"
											x2="90.78" y2="770.32" gradientTransform="translate(-5 -710)"
											gradientUnits="userSpaceOnUse">
			<stop offset="0" stop-opacity="0" />
			<stop offset="1" />
		</linearGradient>
	</defs>
	<polygon class="team__stroke" points="81 80 80 80 0 0 1 0 81 80" />
	<polygon class="team__gradient"
											points="170.1 80 122.1 80 42.1 0 90.1 0 170.1 80" />
</svg>

									<svg class="team__svg team__svg--left" data-name="Layer 1"
										xmlns="http://www.w3.org/2000/svg" viewBox="0 0 176 80">
	<polygon class="team__left" points="0 80 80 80 0 0 0 80" />
</svg>

									<svg class="team__svg team__svg--right"
										xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink"
										viewBox="0 0 176 80">
	<polygon class="team__right" points="176 0 96 0 176 80 176 0" />
</svg>
								</div>
							</div>
							<div class="score-container">
								<span class="score icon-font-before"> </span> <span
									class="timeouts"><span class="timeout"></span><span
									class="timeout"></span><span class="timeout"></span><span
									class="timeout"></span><span class="timeout used"></span><span
									class="timeout used"></span><span class="timeout used"></span></span>
								<span class="bonus double">Bonus +</span>
							</div>
							<div class="team-container">
								<div class="team-info-logo">
									<div class="logo">
										<img class="team-logo"
											src="picture/ec06146e11ca4272bcbc43599409e530.gif">
									</div>
									<span class="possession icon-font-after">Poss</span>
								</div>
								<div class="team-info">
									<div class="team-info-wrapper">



										<span class="team-name"><span class="long-name">Oklahoma
												City</span><span class="short-name">Thunder</span><span
											class="abbrev">OKC</span></span>
									</div>


									<span class="record">00-00<span class="inner-record">,
											00-00 home</span></span>
								</div>
							</div>
						</div>
					</div>
				</a>

			</header>
		</section>


		<div id="news-feed-content">
			<div class="container-wrapper">
				<div class="container">

					<article class="news-feed-item news-feed-story-package">
						<a class="story-link" href="#"></a>
						<figure class="feed-item-figure ">
							<a class="img-wrap" href="#"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
								<source
									data-srcset="http://a.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0727%2Fnba_g_mjlbts_1296x518.jpg&amp;w=375&amp;h=150&amp;scale=crop&amp;location=origin, http://a.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0727%2Fnba_g_mjlbts_1296x518.jpg&amp;w=768&amp;h=307&amp;scale=crop&amp;location=origin 2x"
									media="(max-width: 375px)"
									srcset="http://a.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0727%2Fnba_g_mjlbts_1296x518.jpg&amp;w=375&amp;h=150&amp;scale=crop&amp;location=origin, http://a.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0727%2Fnba_g_mjlbts_1296x518.jpg&amp;w=768&amp;h=307&amp;scale=crop&amp;location=origin 2x">
								<source
									data-srcset="http://a.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0727%2Fnba_g_mjlbts_1296x518.jpg&amp;w=768&amp;h=307&amp;scale=crop&amp;location=origin, http://a.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0727%2Fnba_g_mjlbts_1296x518.jpg&amp;w=1296&amp;h=518&amp;scale=crop&amp;location=origin 2x"
									media="(min-width: 376px)"
									srcset="http://a.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0727%2Fnba_g_mjlbts_1296x518.jpg&amp;w=768&amp;h=307&amp;scale=crop&amp;location=origin, http://a.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0727%2Fnba_g_mjlbts_1296x518.jpg&amp;w=1296&amp;h=518&amp;scale=crop&amp;location=origin 2x">
								<!--[if IE 9]></video><![endif]--> <img
									data-default-src="picture/nba_g_mjlbts_1296x518.jpg"
									class=" imageLoaded lazyloaded"
									data-image-container=".feed-item-figure"> </picture>
							</a>
							<span class="credit">Nathaniel S. Butler/NBAE/Getty Images</span>
						</figure>
						<div class="text-container no-headlines">
							<div class="item-info-wrap">
								<div class="news-feed_item-meta ">
									<span class="timestamp">2d</span><span class="author">Patrick
										Dorsey</span>
								</div>
								<h1>
									<a href="#" class=" realStory">Bird Says Jordan Would
										'Kill' Him In 1-On-1</a>
								</h1>
								<p>The Celtics legend isn't about to start a war of words
									with MJ.</p>
							</div>
						</div>
					</article>

					<article
						class="news-feed-item news-now news-feed-instagram module_bloom_behavior has-media ">
						<figure class="feed-item-figure ">
							<a class="img-wrap external" href="#"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
								<source
									data-srcset="https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/e15/11374020_877422075668143_1023090763_n.jpg"
									srcset="https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/e15/11374020_877422075668143_1023090763_n.jpg">
								<!--[if IE 9]></video><![endif]--> <img
									data-default-src="picture/11374020_877422075668143_1023090763_n.jpg"
									class=" imageLoaded lazyloaded"
									data-image-container=".feed-item-figure"> </picture>
							</a>
						</figure>
						<div class="now-content bloom-content">
							<a href="#">
								<div class="img-container" data-main-container=".now-feed-item">
									<img class="focus-image  imageLoaded lazyloaded"
										data-lazyload="true"
										data-src="picture/11352845_826961484067566_633806234_a.jpg"
										src="https://igcdn-photos-g-a.akamaihd.net/hphotos-ak-xfa1/t51.2885-19/11352845_826961484067566_633806234_a.jpg">
								</div>
							</a><a href="#"><h1>
									Joakim Noah <span>@stickity13</span>
								</h1></a>
							<p>
								Great few weeks of training <a href="#">@p3sportscience</a> and
								proud to be a part of the <a href="#">@ronniecoleman8</a>
								family. Get well soon big guy! #TeamRCSS
							</p>
						</div>
						<div class="now-feed_item-meta display-share">
							<div class="now-share">
								<span class="share-count icon-font-after icon-share-solid-after">Share</span>
								<div class="share-actions">
									<div class="btn-close icon-font-before icon-close-solid-before"></div>
									<ul>
										<li><a href="#"
											class="btn-social sm icon-font-before icon-facebook-solid-before Instagram"></a>
										</li>
										<li><a href="#"
											class="btn-social sm icon-font-before icon-twitter-solid-before Instagram"></a>
										</li>
									</ul>
								</div>
							</div>
							<a href="#" target="_blank"
								class="instagram icon-font-before icon-instagram-solid-before"><img
								class="nowSocialIcon imageLoaded"
								src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7">
							</a> <span class="timestamp">2d</span>
						</div>
					</article>

					<article
						class="news-feed-item news-now module_bloom_behavior has-media ">
						<figure class="feed-item-figure ">
							<a class="img-wrap" href="#"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
								<source
									data-srcset="http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=278, http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=556 2x"
									media="(min-width: 1280px)"
									srcset="http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=278, http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=556 2x">
								<source
									data-srcset="http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=320, http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=640 2x"
									media="(min-width: 1024px) and (max-width: 1279px)"
									srcset="http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=320, http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=640 2x">
								<source
									data-srcset="http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=284, http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=568 2x"
									media="(min-width: 768px) and (max-width: 1023px)"
									srcset="http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=284, http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=568 2x">
								<source
									data-srcset="http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=729, http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=1458 2x"
									media="(max-width: 767px)"
									srcset="http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=729, http://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2015%2F0514%2Fnba_g_gasol_thompson1x_1296x729.jpg&amp;w=1458 2x">
								<!--[if IE 9]></video><![endif]--> <img
									data-default-src="picture/nba_g_gasol_thompson1x_1296x729.jpg"
									class=" imageLoaded lazyloaded"
									data-image-container=".feed-item-figure"> </picture>
							</a>
							<span class="credit">Jonathan Daniel/Getty Images</span>
						</figure>
						<div class="now-content bloom-content">
							<h1>
								Pau Gasol named 'Global Impact Player'
								<div class="now-feed_item-meta">
									<span class="timestamp">7d</span>
								</div>
							</h1>
							<p>Pau Gasol, of Spain, was named "Global Impact Player" at
								the NBPA and BET Players' Awards. Gasol, a 14-year NBA vet, has
								represented Spain three times in the Olympic Games.</p>
						</div>
						<div class="now-feed_item-meta display-share">
							<div class="now-share">
								<span class="share-count icon-font-after icon-share-solid-after">1
									Share</span>
								<div class="share-actions">
									<div class="btn-close icon-font-before icon-close-solid-before"></div>
									<ul>
										<li><a href="#"
											class="btn-social sm icon-font-before icon-facebook-solid-before Module"></a>
										</li>
										<li><a href="#"
											class="btn-social sm icon-font-before icon-twitter-solid-before Module"></a>
										</li>
										<li><a href="#"
											class="btn-social sm email icon-font-before icon-email-solid-before Module"></a>
										</li>
									</ul>
								</div>
							</div>
							<span class="timestamp">7d</span>
						</div>
					</article>

					<article class="news-feed-item ">
						<a class="story-link" href="#"></a>
						<figure class="feed-item-figure ">
							<a class="img-wrap" href="#"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
								<source
									data-srcset="http://a2.espncdn.com/combiner/i?img=%2Fi%2Fespnradio%2Fstations%2Fespn%2Fpodcasts%2Fmm_288.jpg&amp;w=78&amp;h=78&amp;scale=crop&amp;cquality=90&amp;location=center, http://a2.espncdn.com/combiner/i?img=%2Fi%2Fespnradio%2Fstations%2Fespn%2Fpodcasts%2Fmm_288.jpg&amp;w=156&amp;h=156&amp;scale=crop&amp;cquality=90&amp;location=center 2x"
									media="(max-width: 413px)"
									srcset="http://a2.espncdn.com/combiner/i?img=%2Fi%2Fespnradio%2Fstations%2Fespn%2Fpodcasts%2Fmm_288.jpg&amp;w=78&amp;h=78&amp;scale=crop&amp;cquality=90&amp;location=center, http://a2.espncdn.com/combiner/i?img=%2Fi%2Fespnradio%2Fstations%2Fespn%2Fpodcasts%2Fmm_288.jpg&amp;w=156&amp;h=156&amp;scale=crop&amp;cquality=90&amp;location=center 2x">
								<source
									data-srcset="http://a2.espncdn.com/combiner/i?img=%2Fi%2Fespnradio%2Fstations%2Fespn%2Fpodcasts%2Fmm_288.jpg&amp;w=210&amp;h=118&amp;scale=crop&amp;cquality=90&amp;location=origin, http://a2.espncdn.com/combiner/i?img=%2Fi%2Fespnradio%2Fstations%2Fespn%2Fpodcasts%2Fmm_288.jpg&amp;w=420&amp;h=236&amp;scale=crop&amp;cquality=90&amp;location=origin 2x"
									media="(min-width: 414px)"
									srcset="http://a2.espncdn.com/combiner/i?img=%2Fi%2Fespnradio%2Fstations%2Fespn%2Fpodcasts%2Fmm_288.jpg&amp;w=210&amp;h=118&amp;scale=crop&amp;cquality=90&amp;location=origin, http://a2.espncdn.com/combiner/i?img=%2Fi%2Fespnradio%2Fstations%2Fespn%2Fpodcasts%2Fmm_288.jpg&amp;w=420&amp;h=236&amp;scale=crop&amp;cquality=90&amp;location=origin 2x">
								<!--[if IE 9]></video><![endif]--> <img
									data-default-src="picture/mm_288.jpg"
									class=" imageLoaded lazyloaded"
									data-image-container=".feed-item-figure"> </picture><span
								class="audio-play-button"
								data-src="http://c.espnradio.com/audio/2521775/bestofmm_2015-07-22-114215.mp3">Play</span>
							</a>
						</figure>
						<div class="text-container no-headlines">
							<div class="item-info-wrap">
								<div class="news-feed_item-meta ">
									<span class="timestamp">7d</span>
								</div>
								<h1>
									<a href="#" class=" realStory">Best of M&amp;M: Peter King,
										Art Briles</a>
								</h1>
								<p>Greeny and Golic weigh in on who would have the strongest
									all-time lineup for an NBA franchise. Plus, Peter King on Tom
									Brady's Deflategate appeal timetable and Art Briles on the CFP
									and Baylor in 2015.</p>
							</div>
						</div>
					</article>

					<article class="news-feed-item video-standalone video">
						<a class="story-link" href="#"></a>
						<figure class="feed-item-figure video ">
							<div class="img-wrap">
								<picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
								<source
									data-srcset="http://a2.espncdn.com/combiner/i?img=%2Fmedia%2Fmotion%2F2015%2F0728%2Fdm_150728_nba_bird_jordan_one_on_one%2Fdm_150728_nba_bird_jordan_one_on_one.jpg&amp;w=375&amp;h=150&amp;scale=crop&amp;location=origin, http://a2.espncdn.com/combiner/i?img=%2Fmedia%2Fmotion%2F2015%2F0728%2Fdm_150728_nba_bird_jordan_one_on_one%2Fdm_150728_nba_bird_jordan_one_on_one.jpg&amp;w=768&amp;h=307&amp;scale=crop&amp;location=origin 2x"
									media="(max-width: 375px)"
									srcset="http://a2.espncdn.com/combiner/i?img=%2Fmedia%2Fmotion%2F2015%2F0728%2Fdm_150728_nba_bird_jordan_one_on_one%2Fdm_150728_nba_bird_jordan_one_on_one.jpg&amp;w=375&amp;h=150&amp;scale=crop&amp;location=origin, http://a2.espncdn.com/combiner/i?img=%2Fmedia%2Fmotion%2F2015%2F0728%2Fdm_150728_nba_bird_jordan_one_on_one%2Fdm_150728_nba_bird_jordan_one_on_one.jpg&amp;w=768&amp;h=307&amp;scale=crop&amp;location=origin 2x">
								<source
									data-srcset="http://a2.espncdn.com/combiner/i?img=%2Fmedia%2Fmotion%2F2015%2F0728%2Fdm_150728_nba_bird_jordan_one_on_one%2Fdm_150728_nba_bird_jordan_one_on_one.jpg&amp;w=768&amp;h=307&amp;scale=crop&amp;location=origin, http://a2.espncdn.com/combiner/i?img=%2Fmedia%2Fmotion%2F2015%2F0728%2Fdm_150728_nba_bird_jordan_one_on_one%2Fdm_150728_nba_bird_jordan_one_on_one.jpg&amp;w=1296&amp;h=518&amp;scale=crop&amp;location=origin 2x"
									media="(min-width: 376px)"
									srcset="http://a2.espncdn.com/combiner/i?img=%2Fmedia%2Fmotion%2F2015%2F0728%2Fdm_150728_nba_bird_jordan_one_on_one%2Fdm_150728_nba_bird_jordan_one_on_one.jpg&amp;w=768&amp;h=307&amp;scale=crop&amp;location=origin, http://a2.espncdn.com/combiner/i?img=%2Fmedia%2Fmotion%2F2015%2F0728%2Fdm_150728_nba_bird_jordan_one_on_one%2Fdm_150728_nba_bird_jordan_one_on_one.jpg&amp;w=1296&amp;h=518&amp;scale=crop&amp;location=origin 2x">
								<!--[if IE 9]></video><![endif]--> <img
									data-default-src="picture/dm_150728_nba_bird_jordan_one_on_one.jpg"
									class=" imageLoaded lazyloaded"
									data-image-container=".feed-item-figure"> </picture>
								<span class="video-play-button ">Play</span>
							</div>
							<figcaption>
								<div class="caption-wrapper">
									<div class="text-container">
										<span class="headline">Bird: Jordan would kill me in
											one-on-one right now (4:28)</span>
									</div>
								</div>
							</figcaption>
						</figure>
					</article>

					<article
						class="news-feed-item news-now module_bloom_behavior has-media ">
						<figure class="feed-item-figure ">
							<a class="img-wrap" href="#"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
								<source
									data-srcset="http://a4.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F16%2F481008184.jpg&amp;w=278, http://a4.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F16%2F481008184.jpg&amp;w=556 2x"
									media="(min-width: 1280px)">
								<source
									data-srcset="http://a4.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F16%2F481008184.jpg&amp;w=320, http://a4.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F16%2F481008184.jpg&amp;w=640 2x"
									media="(min-width: 1024px) and (max-width: 1279px)">
								<source
									data-srcset="http://a4.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F16%2F481008184.jpg&amp;w=284, http://a4.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F16%2F481008184.jpg&amp;w=568 2x"
									media="(min-width: 768px) and (max-width: 1023px)">
								<source
									data-srcset="http://a4.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F16%2F481008184.jpg&amp;w=729, http://a4.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F16%2F481008184.jpg&amp;w=1458 2x"
									media="(max-width: 767px)">
								<!--[if IE 9]></video><![endif]--> <img
									data-default-src="picture/481008184.jpg" class=" lazyload"
									data-image-container=".feed-item-figure"> </picture>
							</a>
							<span class="credit">Getty</span>
						</figure>
						<div class="now-content bloom-content">
							<h1>
								What happens in Vegas ... doesn't happen?
								<div class="now-feed_item-meta">
									<span class="timestamp">10d</span>
								</div>
							</h1>
							<p>Bulls rookie Bobby Portis is averaging 14.5 PPG and 8.7
								RPG in Las Vegas Summer League action. But off the court, he's
								been more limited. When a fan asked on Twitter how he was doing
								at the tables, Portis responded: "Not old enough to gamble. Only
								20 years old."</p>
						</div>
						<div class="now-feed_item-meta display-share">
							<div class="now-share">
								<span class="share-count icon-font-after icon-share-solid-after">2
									Shares</span>
								<div class="share-actions">
									<div class="btn-close icon-font-before icon-close-solid-before"></div>
									<ul>
										<li><a href="#"
											class="btn-social sm icon-font-before icon-facebook-solid-before Module"></a>
										</li>
										<li><a href="#"></a></li>
										<li><a href="#"
											class="btn-social sm email icon-font-before icon-email-solid-before Module"></a>
										</li>
									</ul>
								</div>
							</div>
							<span class="timestamp">10d</span>
						</div>
					</article>

					<article
						class="news-feed-item news-now news-feed-instagram module_bloom_behavior has-media ">
						<figure class="feed-item-figure ">
							<a class="img-wrap external" href="#"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
								<source
									data-srcset="https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/e15/11419066_391849084349873_986574762_n.jpg">
								<!--[if IE 9]></video><![endif]--> <img
									data-default-src="picture/11419066_391849084349873_986574762_n.jpg"
									class=" lazyload" data-image-container=".feed-item-figure">
								</picture>
							</a>
						</figure>
						<div class="now-content bloom-content">
							<a href="#">
								<div class="img-container">
									<img class="focus-image lazyload" data-lazyload="true"
										data-src="picture/11352845_826961484067566_633806234_a.jpg">
								</div>
							</a><a href="#"><h1>
									Joakim Noah <span>@stickity13</span>
								</h1></a>
							<p>
								Art can be interpreted so many different ways. I saw a heart
								with a whole in it. <a href="#">@marko_jaric10</a> didn't seem
								to agree with me.
							</p>
						</div>
						<div class="now-feed_item-meta display-share">
							<div class="now-share">
								<span class="share-count icon-font-after icon-share-solid-after">Share</span>
								<div class="share-actions">
									<div class="btn-close icon-font-before icon-close-solid-before"></div>
									<ul>
										<li><a href="#"
											class="btn-social sm icon-font-before icon-facebook-solid-before Instagram"></a>
										</li>
										<li><a href="#"
											class="btn-social sm icon-font-before icon-twitter-solid-before Instagram"></a>
										</li>
									</ul>
								</div>
							</div>
							<a href="#"
								class="instagram icon-font-before icon-instagram-solid-before"><img
								class="nowSocialIcon imageLoaded"
								src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7">
							</a> <span class="timestamp">10d</span>
						</div>
					</article>

					<article
						class="news-feed-item news-now module_bloom_behavior has-media ">
						<figure class="feed-item-figure ">
							<a class="img-wrap" href="#" data-sport="nba"> <picture>
								<!--[if IE 9]><video style="display: none;"><![endif]-->
								<source
									data-srcset="http://a3.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481273006.jpg&amp;w=278, http://a3.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481273006.jpg&amp;w=556 2x"
									media="(min-width: 1280px)">
								<source
									data-srcset="http://a3.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481273006.jpg&amp;w=320, http://a3.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481273006.jpg&amp;w=640 2x"
									media="(min-width: 1024px) and (max-width: 1279px)">
								<source
									data-srcset="http://a3.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481273006.jpg&amp;w=284, http://a3.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481273006.jpg&amp;w=568 2x"
									media="(min-width: 768px) and (max-width: 1023px)">
								<source
									data-srcset="http://a3.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481273006.jpg&amp;w=729, http://a3.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481273006.jpg&amp;w=1458 2x"
									media="(max-width: 767px)">
								<!--[if IE 9]></video><![endif]--> <img
									data-default-src="picture/481273006.jpg" class=" lazyload"
									data-image-container=".feed-item-figure"> </picture>
							</a>
							<span class="credit">Getty</span>
						</figure>
						<div class="now-content bloom-content">
							<h1>
								Warren's 31 lead Suns to win
								<div class="now-feed_item-meta">
									<span class="timestamp">10d</span>
								</div>
							</h1>
							<p>T.J. Warren scored 31 points, matching the high at Las
								Vegas Summer League this season, to lead the Suns to a win over
								the Bulls. Phoenix advances to Sunday's semifinal round.</p>
						</div>
						<div class="now-feed_item-meta display-share">
							<div class="now-share">
								<span class="share-count icon-font-after icon-share-solid-after">3
									Shares</span>
								<div class="share-actions">
									<div class="btn-close icon-font-before icon-close-solid-before"></div>
									<ul>
										<li><a href="h#"
											class="btn-social sm icon-font-before icon-facebook-solid-before Module"></a>
										</li>
										<li><a href="#"
											class="btn-social sm icon-font-before icon-twitter-solid-before Module"></a>
										</li>
										<li><a href="#"
											class="btn-social sm email icon-font-before icon-email-solid-before Module"></a>
										</li>
									</ul>
								</div>
							</div>
							<span class="timestamp">10d</span>
						</div>
					</article>

					<article
						class="news-feed-item news-now module_bloom_behavior has-media ">
						<figure class="feed-item-figure ">
							<a class="img-wrap" href="#"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
								<source
									data-srcset="http://a1.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481272492.jpg&amp;w=278, http://a1.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481272492.jpg&amp;w=556 2x"
									media="(min-width: 1280px)">
								<source
									data-srcset="http://a1.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481272492.jpg&amp;w=320, http://a1.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481272492.jpg&amp;w=640 2x"
									media="(min-width: 1024px) and (max-width: 1279px)">
								<source
									data-srcset="http://a1.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481272492.jpg&amp;w=284, http://a1.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481272492.jpg&amp;w=568 2x"
									media="(min-width: 768px) and (max-width: 1023px)">
								<source
									data-srcset="http://a1.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481272492.jpg&amp;w=729, http://a1.espncdn.com/combiner/i?img=%2Fmedia%2Fgettyphoto%2F2015%2F07%2F18%2F481272492.jpg&amp;w=1458 2x"
									media="(max-width: 767px)">
								<!--[if IE 9]></video><![endif]--> <img
									data-default-src="picture/481272492.jpg" class=" lazyload"
									data-image-container=".feed-item-figure"> </picture>
							</a>
							<span class="credit">Getty</span>
						</figure>
						<div class="now-content bloom-content">
							<h1>
								James' dunks keep Suns close
								<div class="now-feed_item-meta">
									<span class="timestamp">11d</span>
								</div>
							</h1>
							<p>Mike James is only 3-of-10 from the field tonight, but
								he's thrown down a pair of rim-rocking slams in the third
								quarter, and the Suns trail the Bulls by 5 in Las Vegas.</p>
						</div>
						<div class="now-feed_item-meta display-share">
							<div class="now-share">
								<span class="share-count icon-font-after icon-share-solid-after">2
									Shares</span>
								<div class="share-actions">
									<div class="btn-close icon-font-before icon-close-solid-before"></div>
									<ul>
										<li><a href="#"
											class="btn-social sm icon-font-before icon-facebook-solid-before Module"></a>
										</li>
										<li><a href="#"
											class="btn-social sm icon-font-before icon-twitter-solid-before Module"></a>
										</li>
										<li><a href="#"
											class="btn-social sm email icon-font-before icon-email-solid-before Module"></a>
										</li>
									</ul>
								</div>
							</div>
							<span class="timestamp">11d</span>
						</div>
					</article>

				</div>
			</div>
		</div>
	</section>

	<section class="col-c">


		<article class="sub-module standings">
			<header>
				<h1>2014-15 Central Standings</h1>
			</header>
			<div class="content">
				<table class="mod-data">
					<thead>
						<tr>
							<th scope="col" title="Team">TEAM</th>
							<th scope="col" class="right" title="Wins">W</th>
							<th scope="col" class="right" title="Losses">L</th>
							<th scope="col" class="right" title="Win Percentage">PCT</th>
							<th scope="col" class="right" title="Games Back">GB</th>
							<th scope="col" class="right" title="Streak">STRK</th>
						</tr>
					</thead>
					<tbody>
						<tr class="">
							<td><a href="#">Cleveland</a></td>
							<td class="right">53</td>
							<td class="right">29</td>
							<td class="right">.646</td>
							<td class="right">-</td>
							<td class="right">W2</td>
						</tr>
						<tr class="highlight">
							<td><a href="#">Chicago</a></td>
							<td class="right">50</td>
							<td class="right">32</td>
							<td class="right">.610</td>
							<td class="right">3</td>
							<td class="right">W4</td>
						</tr>
						<tr class="">
							<td><a href="#">Milwaukee</a></td>
							<td class="right">41</td>
							<td class="right">41</td>
							<td class="right">.500</td>
							<td class="right">12</td>
							<td class="right">L1</td>
						</tr>
						<tr class="">
							<td><a href="#">Indiana</a></td>
							<td class="right">38</td>
							<td class="right">44</td>
							<td class="right">.463</td>
							<td class="right">15</td>
							<td class="right">L1</td>
						</tr>
						<tr class="">
							<td><a href="#">Detroit</a></td>
							<td class="right">32</td>
							<td class="right">50</td>
							<td class="right">.390</td>
							<td class="right">21</td>
							<td class="right">W1</td>
						</tr>
					</tbody>
				</table>
			</div>
			<footer>
				<a href="#">Full Standings</a>
			</footer>
		</article>

		<article class="sub-module performers">
			<header>
				<h1>2014-15 Team Leaders</h1>
			</header>
			<div class="tab-container">
				<ul class="tabs" data-behavior="tabs_transform">
					<li class="active"><span>Offense</span></li>
					<li><span>Defense</span></li>
				</ul>
			</div>
			<div class="tab-content">
				<div class="tab-pane  active">
					<ul class="module-list performers">
						<li>
							<h2>Points Per Game</h2>
							<div class="content-wrapper">
								<div class="img-container player">
									<a href="#0"><img class="focus-image headshot imageLoaded"
										data-behavior="fix_broken_images"
										src="picture/3b1efe86464140549923b25e13d72c4b.gif"> </a>
								</div>
								<div class="content-meta">
									<p>
										<a href="#">Jimmy Butler</a>, SG
									</p>
									<p class="number">20.0</p>
								</div>
							</div>
						</li>
						<li>
							<h2>Assists Per Game</h2>
							<div class="content-wrapper">
								<div class="img-container player">
									<a href="#4"><img class="focus-image headshot imageLoaded"
										data-behavior="fix_broken_images"
										src="picture/d7f5ee0484b745098e8cc719db63b16b.gif"> </a>
								</div>
								<div class="content-meta">
									<p>
										<a href="#">Joakim Noah</a>, C
									</p>
									<p class="number">4.7</p>
								</div>
							</div>
						</li>
						<li>
							<h2>Field Goal Percentage</h2>
							<div class="content-wrapper">
								<div class="img-container player">
									<a href="#"><img class="focus-image headshot imageLoaded"
										data-behavior="fix_broken_images"
										src="picture/11bfbfa7c49148ee98bb697d5118c6c5.gif"> </a>
								</div>
								<div class="content-meta">
									<p>
										<a href="#">Pau Gasol</a>, PF
									</p>
									<p class="number">49.4</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="tab-pane ">
					<ul class="module-list performers">
						<li>
							<h2>Rebounds Per Game</h2>
							<div class="content-wrapper">
								<div class="img-container player">
									<a href="#"><img class="focus-image headshot imageLoaded"
										data-behavior="fix_broken_images"
										src="picture/11bfbfa7c49148ee98bb697d5118c6c5.gif"> </a>
								</div>
								<div class="content-meta">
									<p>
										<a href="#">Pau Gasol</a>, PF
									</p>
									<p class="number">11.8</p>
								</div>
							</div>
						</li>
						<li>
							<h2>Steals Per Game</h2>
							<div class="content-wrapper">
								<div class="img-container player">
									<a href="#"><img class="focus-image headshot imageLoaded"
										data-behavior="fix_broken_images"
										src="picture/3b1efe86464140549923b25e13d72c4b.gif"> </a>
								</div>
								<div class="content-meta">
									<p>
										<a href="#0">Jimmy Butler</a>, SG
									</p>
									<p class="number">1.8</p>
								</div>
							</div>
						</li>
						<li>
							<h2>Blocks Per Game</h2>
							<div class="content-wrapper">
								<div class="img-container player">
									<a href="#"><img class="focus-image headshot imageLoaded"
										data-behavior="fix_broken_images"
										src="picture/11bfbfa7c49148ee98bb697d5118c6c5.gif"> </a>
								</div>
								<div class="content-meta">
									<p>
										<a href="#">Pau Gasol</a>, PF
									</p>
									<p class="number">1.9</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<footer>
				<a href="#">Full Team Statistics</a>
			</footer>
		</article>

		<article class="sub-module rankings">
			<header>
				<h1>2014-15 Team Stats</h1>
			</header>
			<div class="content">
				<div class="grid-rank">
					<span>Points Per Game</span><span class="number">100.8</span><span>15<sup>th</sup></span>
				</div>
				<div class="grid-rank">
					<span>Rebounds Per Game</span><span class="number">45.7</span><span>3<sup>rd</sup></span>
				</div>
				<div class="grid-rank">
					<span>Assists Per Game</span><span class="number">21.7</span><span>14<sup>th</sup></span>
				</div>
				<div class="grid-rank">
					<span>Points Allowed</span><span class="number">97.8</span><span>9<sup>th</sup></span>
				</div>
			</div>
			<footer>
				<a href="#">All Team Rankings</a>
			</footer>
		</article>

		<article class="sub-module">
			<header>
				<h1>Injuries</h1>
			</header>
			<div class="content">
				<ul class="module-list">
					<li>
						<div class="img-container player">
							<a href="#"><img data-behavior="fix_broken_images"
								class="focus-image headshot imageLoaded"
								src="picture/0b8cca29f54d416880faf742f05fb97c.gif"> </a>
						</div>
						<div class="content-meta">
							<h2 class="player-name">
								<a href="#">Taj Gibson</a><span>PF</span>
							</h2>
							<p>Out</p>
						</div>
					</li>
				</ul>
			</div>
			<footer>
				<a name="&amp;lpos=nba:injuries:full"
					href="http://espn.go.com/nba/injuries?team=chi">Team Injuries</a>
			</footer>
		</article>

		<article class="sub-module teamseasonhistory">
			<header>
				<h1>Team History</h1>
			</header>
			<div class="content">
				<table class="mod-data">
					<thead>
						<tr>
							<th scope="col" title="Year">Year</th>
							<th scope="col" class="right" title="Wins">W</th>
							<th scope="col" class="right" title="Losses">L</th>
							<th scope="col" class="right" title="Win Percentage">PCT</th>
						</tr>
					</thead>
					<tbody>
						<tr class="">
							<td>2014-15</td>
							<td class="right">50</td>
							<td class="right">32</td>
							<td class="right">.609</td>
						</tr>
						<tr class="">
							<td>2013-14</td>
							<td class="right">48</td>
							<td class="right">34</td>
							<td class="right">.585</td>
						</tr>
						<tr class="">
							<td>2012-13</td>
							<td class="right">45</td>
							<td class="right">37</td>
							<td class="right">.548</td>
						</tr>
						<tr class="">
							<td>2011-12</td>
							<td class="right">50</td>
							<td class="right">16</td>
							<td class="right">.757</td>
						</tr>
						<tr class="">
							<td>2010-11</td>
							<td class="right">62</td>
							<td class="right">20</td>
							<td class="right">.756</td>
						</tr>
					</tbody>
				</table>
			</div>
		</article>

		<article class="sub-module powered-by" data-module="powered-by">
			<header class="powered-by__header">
				<h1>
					<div class="powered-by__headline">Find Tickets</div>
					<div class="powered-by__logo">
						<a class="powered-by__vividseats" target="_blank" name="" href="#">VividSeats</a>
					</div>
				</h1>
			</header>

			<div class="content">
				<ul class="powered-by__details">
					<li class="powered-by__details--game"><span>Patriots vs
							Saints</span> Gillette Stadium - Thu 8/11 <a href="#">1,126 tickets
							available from $64</a></li>

					<li class="powered-by__details--buy">Buy <a href="#">Patriots
							tickets</a> at <a href="#">Gillette Stadium</a> with <a href="#">Vivid
							Seats</a>
					</li>

					<li class="powered-by__details--search">Other Games

						<div class="dropdown-wrapper hoverable"
							data-behavior="button_dropdown">
							<button class="button-filter med dropdown-toggle">Search
								by Team</button>
							<ul class="dropdown-menu med" role="menu">
								<li><a name="" href="#" target="_blank">Item</a></li>
								<li><a name="" href="#" target="_blank">Item</a></li>
								<li><a name="" href="#" target="_blank">Item</a></li>
								<li><a name="" href="#" target="_blank">Item</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</article>

		<article class="sub-module fanshop">
			<header>
				<h1>
					ESPN Fan Shop <span>Powered By <a href="#"><img
							src="picture/dicks_logo.png" class="imageLoaded"></a></span>
				</h1>
			</header>
			<ul class="content">
				<li class="text-container"><a href="#"><img
						src="picture/pdsp1-14411800nm.jpg" width="100" height="100"
						class="imageLoaded"> </a>
					<p>
						adidas Youth Chicago Bulls Joakim Noah #13 Road Red Replica Jersey<span><a
							href="#">Shop</a></span>
					</p></li>
				<li class="text-container"><a href="#"><img
						src="picture/pdsp1-14413953nm.jpg" width="100" height="100"
						class="imageLoaded"> </a>
					<p>
						adidas Men's Chicago Bulls "D-Rose" #1 Red T-Shirt<span>Price:
							$32.00 <a href="#">Shop</a>
						</span>
					</p></li>
			</ul>
			<footer>
				<a href="#">See All Items</a>
			</footer>
		</article>
	</section>
</div>