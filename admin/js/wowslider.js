// -----------------------------------------------------------------------------------
// http://wowslider.com/
// JavaScript Wow Slider is a free software that helps you easily generate delicious 
// slideshows with gorgeous transition effects, in a few clicks without writing a single line of code.
// Generated by WOW Slider
//
//***********************************************
// Obfuscated by Javascript Obfuscator
// http://javascript-source.com
//***********************************************
function ws_caption_move(t,e,n,i){var a=[{left1:"100%",top2:"100%"},{left1:"80%",left2:"-50%"},{top1:"-100%",top2:"100%",distance:.7,easing:"easeOutBack"},{top1:"-80%",top2:"-80%",distance:.3,easing:"easeOutBack"},{top1:"-80%",left2:"80%"},{left1:"80%",left2:"80%"}];a=a[Math.floor(Math.random()*a.length)];var s=.5,o="easeOutElastic1";e.stop(1,1).fadeOut(t.captionDuration/3,function(){function n(e){var n=$(r[e]).css("opacity");$(r[e]).css({visibility:"visible"}).css({opacity:0}).animate({opacity:n},t.captionDuration,"easeOutCirc").animate({top:0,left:0},{duration:t.captionDuration,easing:a.easing||o,queue:!1})}e.html(i);var r=e.find(">span,>div").get();$(r).css({position:"relative",visibility:"hidden"}),e.show();for(var u in a)if(/\%/.test(a[u])){a[u]=parseInt(a[u])/100;var l=e.offset()[/left/.test(u)?"left":"top"],c=/left/.test(u)?"width":"height";a[u]*=a[u]<0?l:t.$this[c]()-e[c]()-l}$(r[0]).css({left:(a.left1||0)+"px",top:(a.top1||0)+"px"}),$(r[1]).css({left:(a.left2||0)+"px",top:(a.top2||0)+"px"}),n(0),setTimeout(function(){n(1)},t.captionDuration*(a.distance||s))})}

function wowsliderVideo(t,e,n){function i(t){return h("iframe",b[t])}function a(t){var e=i(t);return e=e[0]?e[0].src:"",/youtube/.test(e)?"youtube":/vimeo/.test(e)?"vimeo":!1}function s(t){m.removeClass("ws_vimeo ws_youtube").addClass("ws_"+a(t)),v&&v.addClass("ws_hide")}function o(t){m.removeClass("ws_vimeo ws_youtube"),t&&v&&v.removeClass("ws_hide")}function r(e,n){var r=i(e);f=!1,t[0].wsRestart(),r[0]&&x[e]?(t.removeClass(/MSIE|Trident/.test(navigator.userAgent)?"ws_video_playing_ie":"ws_video_playing"),g.show(),y&&y.show(),w.fadeIn(300),s(e),"youtube"==a(e)&&x[e].getPlayerState&&1==x[e].getPlayerState()?x[e].pauseVideo():"vimeo"==a(e)&&x[e].api("paused",function(t){t||x[e].api("pause")}),n&&o(1),r.css("opacity")>0?r.animate({opacity:0},500,n?n:0):n&&n()):n&&n()}function u(s,r,u){var l=i(s);l[0]&&(r||l.attr("data-autoplay-video")||e.autoPlayVideo)?(f=a(s),t.addClass(/MSIE|Trident/.test(navigator.userAgent)?"ws_video_playing_ie":"ws_video_playing"),t[0].wsStop(),w.fadeOut(300),n(),g.hide(),y&&y.hide(),o(),"youtube"==f&&x[s]&&x[s].playVideo?x[s].playVideo():"vimeo"==f&&x[s]&&x[s].api("play"),l.css("opacity")<1?l.css("zIndex",1).animate({opacity:1},500,u?u:0):u&&u()):u&&u()}function l(n,i){(i.attr("data-autoplay-video")||e.autoPlayVideo)&&(f="youtube",t[0].wsStop()),x[n]=new YT.Player(i[0],{events:{onStateChange:function(t){1==t.data||3==t.data?u(n,1):2!=t.data&&0!=t.data||"youtube"!=f||r(n)},onReady:function(){i.css.zIndex=1,u(n)}}})}function c(n,i){(i.attr("data-autoplay-video")||e.autoPlayVideo)&&(f="vimeo",t[0].wsStop()),x[n]=$f(i[0]),x[n].addEvent("ready",function(){i.css.zIndex=1,x[n].addEvent("play",function(){u(n,1)}),x[n].addEvent("pause",function(){"vimeo"==f&&r(n)}),x[n].addEvent("finish",function(){"vimeo"==f&&r(n)}),u(n)})}var f,d,p,h=jQuery,m=h(".ws_video_btn",t),v=h(".ws_playpause",t),w=h(".ws-title-wrapper",t),g=h(".ws_frame",t),y=h(".ws_cover",t),b=h("ul li",t),x={},_=function(t){var e=i(t);if(f){f=!1;for(var n in x)n!=t&&r(n)}e[0]?(s(t),x[t]?u(t):d&&"youtube"==a(t)?l(t,e):p&&"vimeo"==a(t)&&c(t,e)):o(!0)};this.start=_,this.check=a,this.pause=r,this.play=u,this.playing=function(){return f},this.vimeo=function(t){p=t},this.youtube=function(t){d=t}}

jQuery.fn.wowSlider=function(t){function e(t){return O.css({left:-t+"00%"})}function n(t){return((t||0)+q)%q}function i(e){if(window["ws_"+e]){var n=F.extend({},t);"brick"==e&&(n.duration=4e3);var i=new window["ws_"+e](n,W,I);i.name="ws_"+e,B.push(i)}}function a(t,e){G?G.pause(t.curIndex,e):e()}function s(t,e){G?G.play(t,0,e):e()}function o(t,e,i){J||(isNaN(t)&&(t=L(Y,q)),t=n(t),Y!=t&&(z?z.load(t,function(){u(t,e,i)}):u(t,e,i)))}function r(t){for(var e="",n=0;n<t.length;n++)e+=String.fromCharCode(t.charCodeAt(n)^1+(t.length-n)%32);return e}function u(n,i,a){if(!J){if(i)void 0!=a&&(U=a^t.revers),e(n);else{if(J)return;K=!1,function(e,n,i){Z=Math.floor(Math.random()*B.length),F(B[Z]).trigger("effectStart",{curIndex:e,nextIndex:n,cont:F("."+B[Z].name,P),start:function(){U=void 0!=i?i^t.revers:!!(n>e)^t.revers?1:0,B[Z].go(n,e,U)}})}(Y,n,a),P.trigger(F.Event("go",{index:n}))}Y=n,Y!=t.stopOn||--t.loop||(t.autoPlay=0),t.onStep&&t.onStep(n)}}function l(){P.find(".ws_effect").fadeOut(200),e(Y).fadeIn(200).find("img").css({visibility:"visible"})}function c(t,e,n,i,a,s){new f(t,e,n,i,a,s)}function f(e,n,i,a,s,o){var r,u,l,c,f=0,d=0,p=0;e[0]||(e=F(e)),e.on((n?"mousedown ":"")+"touchstart",function(e){var n=e.originalEvent.touches?e.originalEvent.touches[0]:e;t.gestures&&P.addClass("ws_grabbing"),f=0,n?(r=n.pageX,u=n.pageY,d=p=1,a&&(d=p=a(e))):d=p=0,e.originalEvent.touches||(e.preventDefault(),e.stopPropagation())}),F(document).on((n?"mousemove ":"")+"touchmove",e,function(t){if(d){var e=t.originalEvent.touches?t.originalEvent.touches[0]:t;f=1,l=e.pageX-r,c=e.pageY-u,i&&i(t,l,c)}}),F(document).on((n?"mouseup ":"")+"touchend",e,function(e){t.gestures&&P.removeClass("ws_grabbing"),d&&(f&&s&&s(e,l,c),!f&&o&&o(e),f&&(e.preventDefault(),e.stopPropagation()),f=0,d=0)}),e.on("click",function(t){p&&(t.preventDefault(),t.stopPropagation()),p=0})}function d(t){var e=t.css("transform"),n={top:0,left:0};return e&&(e=e.match(/(-?[0-9\.]+)/g),e?"3d"==e[1]?(n.left=parseFloat(e[2])||0,n.top=parseFloat(e[3])||0):(n.left=parseFloat(e[4])||0,n.top=parseFloat(e[5])||0):(n.left=0,n.top=0)),n}function p(e,n){if(ue.length&&_(e),le.length&&x(e),t.caption&&T(e,n),Q){var i=F("A",V.get(e)).get(0);i?(Q.setAttribute("href",i.href),Q.setAttribute("target",i.target),Q.style.display="block"):Q.style.display="none"}t.responsive&&E()}function h(){ce&&(ce=0,setTimeout(function(){P.trigger(F.Event("stop",{}))},t.duration))}function m(){!ce&&t.autoPlay&&(ce=1,P.trigger(F.Event("start",{})))}function v(){g(),h()}function w(){g(),t.autoPlay?(re=setTimeout(function(){fe||o(void 0,void 0,1)},t.delay),m()):h()}function g(){re&&clearTimeout(re),re=null}function y(t,e,n){g(),t.preventDefault(),o(e,void 0,n),w(),Me&&_e&&_e.play()}function b(){function e(t){0>t&&(t=0),z&&z.loadTtip(t),F(f.get(v)).removeClass("ws_overbull"),F(f.get(t)).addClass("ws_overbull"),h.show();var e={left:f.get(t).offsetLeft-h.width()/2,"margin-top":f.get(t).offsetTop-f.get(0).offsetTop+"px","margin-bottom":-f.get(t).offsetTop+f.get(f.length-1).offsetTop+"px"},n=p.get(t),i={left:-n.offsetLeft+(F(n).outerWidth(!0)-F(n).outerWidth())/2};0>v?(h.css(e),m.css(i)):(document.all||(e.opacity=1),h.stop().animate(e,"fast"),m.stop().animate(i,"fast")),v=t}if(P.find(".ws_bullets a,.ws_thumbs a").click(function(t){y(t,F(this).index())}),le.length){le.hover(function(){we=1},function(){we=0});var n=le.find(">div");le.css({overflow:"hidden"});var i,a,s,o=P.find(".ws_thumbs");o.bind("mousemove mouseover",function(e){if(!s){clearTimeout(a);for(var o=.2,r=0;2>r;r++){var u=le[r?"width":"height"](),l=n[r?"width":"height"](),c=u-l;if(0>c){var f,p,h=(e[r?"pageX":"pageY"]-le.offset()[r?"left":"top"])/u;if(i==h)return;i=h;var m=t.support.transform&&t.support.transition?d(n)[r?"left":"top"]:n.position()[r?"left":"top"];if(n.css({transition:"0ms linear",transform:"translate3d("+m.left+"px,"+m.top+"px,0)"}),n.stop(!0),ge>0){if(h>o&&1-o>h)return;f=.5>h?0:c-1,p=ge*Math.abs(m-f)/(Math.abs(h-.5)-o)}else f=c*Math.min(Math.max((h-o)/(1-2*o),0),1),p=-ge*l/2;t.support.transform&&t.support.transition?n.css({transition:p+"ms "+(ge>0?"linear":"ease"),transform:"translate3d("+(r?f:0)+"px,"+(r?0:f)+"px,0)"}):n.animate(r?{left:f}:{top:f},p,ge>0?"linear":"easeOutCubic")}else t.support.transform&&t.support.transition||n.css(r?"left":"top",r?c/2:0)}}}),o.mouseout(function(){a=setTimeout(function(){if(n.stop(),t.support.transform&&t.support.transition){var e=d(n);n.css({transition:"0ms linear",transform:"translate3d("+e.left+"px,"+e.top+"px,0)"})}},100)}),le.trigger("mousemove");var r,u;t.gestures&&c(P,1,function(e,i,a){var s=Math.min(Math.max(r+i,le.width()-n.width()),0),o=Math.min(Math.max(u+a,le.height()-n.height()),0);t.support.transform&&t.support.transition?n.css({transition:"0ms linear",transform:"translate3d("+s+"px, "+o+"px,0)"}):(n.css("left",s),n.css("top",o))},function(e){if(!F(e.target).parents(".ws_thumbs").get(0))return!1;if(s=1,t.support.transform&&t.support.transition){var i=d(n);r=i.left,u=i.top}else r=parseFloat(n.css("left"))||0,u=parseFloat(n.css("top"))||0;return!0},function(){s=0},function(){s=0}),P.find(".ws_thumbs a").each(function(t,e){c(e,0,0,function(t){return!!F(t.target).parents(".ws_thumbs").get(0)},function(){s=1},function(t){y(t,F(e).index())})})}if(ue.length){var l=ue.find(">div"),f=F("a",ue),p=f.find("IMG");if(p.length){var h=F('<div class="ws_bulframe"/>').appendTo(l),m=F("<div/>").css({width:p.length+1+"00%"}).appendTo(F("<div/>").appendTo(h));p.appendTo(m),F("<span/>").appendTo(h);var v=-1;f.hover(function(){e(F(this).index())});var w;l.hover(function(){w&&(clearTimeout(w),w=0),e(v)},function(){f.removeClass("ws_overbull"),document.all?w||(w=setTimeout(function(){h.hide(),w=0},400)):h.stop().animate({opacity:0},{duration:"fast",complete:function(){h.hide()}})}),l.click(function(t){y(t,F(t.target).index())})}}}function x(e){F("A",le).each(function(n){if(n==e){var i=F(this);if(i.addClass("ws_selthumb"),!we){var a,s=le.find(">div"),o=i.position()||{};if(t.support.transform&&t.support.transition){a=d(s);var r=-Math.max(Math.min(o.left,-a.left),o.left+i.width()-le.width()),u=-Math.max(Math.min(o.top,0),o.top+i.height()-le.height());s.css({transition:"300ms ease",transform:"translate3d("+r+"px,"+u+"px,0)"})}else a=s.position()||{},s.stop(!0).animate({left:-Math.max(Math.min(o.left,-a.left),o.left+i.width()-le.width()),top:-Math.max(Math.min(o.top,0),o.top+i.height()-le.height())})}}else F(this).removeClass("ws_selthumb")})}function _(t){F("A",ue).each(function(e){e==t?F(this).addClass("ws_selbull"):F(this).removeClass("ws_selbull")})}function M(t){var e=V[t],n=F("img",e).attr("title"),i=F(e).data("descr");return n.replace(/\s+/g,"")||(n=""),(n?"<span>"+n+"</span>":"")+(i?"<br><div>"+i+"</div>":"")}function T(e,n){var i=M(e),a=M(n),s=t.captionEffect;(xe[F.type(s)]||xe[s]||xe.none)(F.extend({$this:P,curIdx:Y,prevIdx:X},t),ye,be,i,a,U)}function S(){return!!document[ke.fullscreenElement]}function C(){S()?document[ke.exitFullscreen]():P.wrap("<div class='ws_fs_wrapper'></div>").parent()[0][ke.requestFullscreen]()}function E(){var e=Pe?4:t.responsive,n=P.width()||t.width,i=F([W,j.find("img"),N.find("img")]);if(e>0&&document.addEventListener&&P.css("fontSize",Math.max(10*Math.min(n/t.width||1,1),6)),2==e){var a=n/t.width-1,s=t.height*(1+a);P.css("height",s),i.each(function(){F(this).css("marginTop",0)})}if(3==e){var o=window.innerHeight-(P.offset().top||0)-45,r=t.width/t.height,u=r>n/o;P.css("height",o),i.each(function(){F(this).css({width:u?"auto":"100%",height:u?"100%":"auto",marginLeft:u?(n-o*r)/2:0,marginTop:u?0:(o-n/r)/2})})}if(4==e){var l=window.innerWidth,c=window.innerHeight,r=t.width/t.height,f=r>l/c;P.css({maxWidth:f?"100%":r*c,height:""}),i.each(function(){F(this).css({width:"100%",marginLeft:0,marginTop:0})})}else P.css({maxWidth:"",top:""})}var F=jQuery,P=this,k=P.get(0);window.ws_basic=function(t,e,n){var i=F(this);this.go=function(e){n.find(".ws_list").css("transform","translate3d(0,0,0)").stop(!0).animate({left:e?-e+"00%":/Safari/.test(navigator.userAgent)?"0%":0},t.duration,"easeInOutExpo",function(){i.trigger("effectEnd")})}},t=F.extend({effect:"fade",prev:"",next:"",duration:1e3,delay:2e3,captionDuration:1e3,captionEffect:0,width:960,height:360,thumbRate:1,gestures:!0,caption:!0,controls:!0,autoPlay:!0,autoPlayVideo:!1,responsive:1,support:jQuery.fn.wowSlider.support,stopOnHover:0,preventCopy:1},t);var A=navigator.userAgent,I=F(".ws_images",P),O=I.find("ul").css("width","100%").wrap("<div class='ws_list'></div>").parent();F("<div>").css({width:"100%",visibility:"hidden","font-size":0,"line-height":0}).append(I.find("li:first img:first").clone().css({width:"100%"})).prependTo(I),O.css({position:"absolute",top:0,height:"100%",transform:/Firefox/.test(A)?"":"translate3d(0,0,0)"});var z=t.images&&new wowsliderPreloader(this,t),V=I.find("li"),q=V.length,$=(O.width()/O.find("li").width(),{position:"absolute",top:0,height:"100%",overflow:"hidden"}),j=F("<div>").addClass("ws_swipe_left").css($).prependTo(O),N=F("<div>").addClass("ws_swipe_right").css($).appendTo(O);if(/MSIE/.test(A)||/Trident/.test(A)||/Safari/.test(A)||/Firefox/.test(A)){var R=Math.pow(10,Math.ceil(Math.LOG10E*Math.log(q)));O.css({width:R+"00%"}),V.css({width:100/R+"%"}),j.css({width:100/R+"%",left:-100/R+"%"}),N.css({width:100/R+"%",left:100*q/R+"%"})}else O.css({width:q+"00%",display:"table"}),V.css({display:"table-cell","float":"none",width:"auto"}),j.css({width:100/q+"%",left:-100/q+"%"}),N.css({width:100/q+"%",left:"100%"});var L=t.onBeforeStep||function(t){return t+1};t.startSlide=n(isNaN(t.startSlide)?L(-1,q):t.startSlide),z&&z.load(t.startSlide,function(){}),e(t.startSlide);var D,Q;t.preventCopy&&!/iPhone/.test(navigator.platform)&&(D=F('<div class="ws_cover"><a href="#" style="display:none;position:absolute;left:0;top:0;width:100%;height:100%"></a></div>').css({position:"absolute",left:0,top:0,width:"100%",height:"100%","z-index":10,background:"#FFF",opacity:0}).appendTo(P),Q=D.find("A").get(0));{var W=[];F(".ws_frame",P)}V.each(function(){for(var t=F(">img:first,>iframe:first,>iframe:first+img,>a:first,>div:first",this),e=F("<div></div>"),n=0;n<this.childNodes.length;)this.childNodes[n]!=t.get(0)&&this.childNodes[n]!=t.get(1)?e.append(this.childNodes[n]):n++;F(this).data("descr")||(e.text().replace(/\s+/g,"")?F(this).data("descr",e.html().replace(/^\s+|\s+$/g,"")):F(this).data("descr","")),F(this).css({"font-size":0}),F(this).data("type",t[0].tagName);F(">iframe",this).css("opacity",0);W[W.length]=F(">a>img",this).get(0)||F(">iframe+img",this).get(0)||F(">*",this).get(0)}),W=F(W),W.css("visibility","visible"),j.append(F(W[q-1]).clone()),N.append(F(W[0]).clone());var B=[];t.effect=t.effect.replace(/\s+/g,"").split(",");for(var H in t.effect)i(t.effect[H]);B.length||i("basic");var Y=t.startSlide,X=Y,G=!1,U=1,J=0,K=!1;F(B).bind("effectStart",function(t,e){J++,a(e,function(){l(),e.cont&&F(e.cont).stop().show().css("opacity",1),e.start&&e.start(),X=Y,Y=e.nextIndex,p(Y,X)})}),F(B).bind("effectEnd",function(t,n){e(Y).stop(!0,!0).show(),setTimeout(function(){s(Y,function(){J--,w(),G&&G.start(Y)})},n?n.delay||0:0)}),t.loop=t.loop||Number.MAX_VALUE,t.stopOn=n(t.stopOn);var Z=Math.floor(Math.random()*B.length);k.wsHideEffect=l,t.gestures&&P.addClass("ws_gestures");var te=I,ee='$#"';if(ee&&(ee=r(ee))){if(t.gestures){var ne,ie,ae,se=0,oe=10;c(P,1,function(e,n){v(),O.stop(!0,!0),ae&&(K=!0,J++,ae=0,l()),se=n,n>ne&&(n=ne),-ne>n&&(n=-ne),t.support.transform&&t.support.transition?O.css("transform","translate3d("+n+"px,0,0)"):O.css("left",ie+n)},function(t){var e=/ws_playpause|ws_prev|ws_next|ws_bullets/g.test(t.target.className)||F(t.target).parents(".ws_thumbs, .ws_bullets").get(0);return e||G&&G.playing()?!1:(ae=1,ne=I.width(),ie=parseFloat(-Y*ne)||0,!0)},function(e,i){ae=0;var a=I.width(),s=n(Y+(0>i?1:-1)),o=a*i/Math.abs(i);Math.abs(se)<oe&&(s=Y,o=0);var r=200+200*(a-Math.abs(i))/a;J--,F(B[0]).trigger("effectStart",{curIndex:Y,nextIndex:s,start:function(){function e(){t.support.transform&&t.support.transition&&O.css({transition:"0ms",transform:/Firefox/.test(A)?"":"translate3d(0,0,0)"}),F(B[0]).trigger("effectEnd",{swipe:!0})}function n(){t.support.transform&&t.support.transition?(O.css({transition:r+"ms ease-out",transform:"translate3d("+o+"px,0,0)"}),setTimeout(e,r)):O.animate({left:ie+o},r,e)}K=!0,z?z.load(s,n):n()}})},function(){var t=F("A",V.get(Y)).get(0);t&&(t.click(),console.log(1))})}var re,ue=P.find(".ws_bullets"),le=P.find(".ws_thumbs"),ce=t.autoPlay,fe=!1,de=r('.P0|zt`n7+jfencqmtN{3~swuk"4S!QUWS+laacy0*041C<39');de+=r("``}dxbeg2uciewkwE$ztokvxa-ty{py*v``y!xcsm=74t{9");var pe=te||document.body;if(ee=ee.replace(/^\s+|\s+$/g,""),te=ee?F("<div>"):0,F(te).css({position:"absolute",padding:"0 0 0 0"}).appendTo(pe),te&&document.all){var he=F('<iframe src="javascript:false"></iframe>');he.css({position:"absolute",left:0,top:0,width:"100%",height:"100%",filter:"alpha(opacity=0)"}),he.attr({scrolling:"no",framespacing:0,border:0,frameBorder:"no"}),te.append(he)}if(F(te).css({zIndex:11,right:"5px",bottom:"2px"}).appendTo(pe),de+=r("czvex5oxxd1amnamp9ctTp%{sun4~v{|xj(]elgim+M{iib`?!<"),de=te?F(de):te,de&&de.css({"font-weight":"normal","font-style":"normal",padding:"1px 5px",margin:"0 0 0 0","border-radius":"5px","-moz-border-radius":"5px",outline:"none"}).attr({href:"http://"+ee.toLowerCase()}).html(ee).bind("contextmenu",function(){return!1}).show().appendTo(te||document.body).attr("target","_blank"),t.controls){var me=F('<a href="#" class="ws_next">'+t.next+"</a>"),ve=F('<a href="#" class="ws_prev">'+t.prev+"</a>");P.append(me),P.append(ve),me.bind("click",function(t){y(t,Y+1,1)}),ve.bind("click",function(t){y(t,Y-1,0)}),/iPhone/.test(navigator.platform)&&(ve.get(0).addEventListener("touchend",function(t){y(t,Y-1,1)},!1),me.get(0).addEventListener("touchend",function(t){y(t,Y+1,0)},!1))}var we,ge=t.thumbRate;if(t.caption){var ye=F("<div class='ws-title' style='display:none'></div>"),be=F("<div class='ws-title' style='display:none'></div>");F("<div class='ws-title-wrapper'>").append(ye,be).appendTo(P),ye.bind("mouseover",function(){G&&G.playing()||g()}),ye.bind("mouseout",function(){G&&G.playing()||w()})}var xe={none:function(t,e,n,i,a){e.html(a),e.show()}};xe[t.captionEffect]=window["ws_caption_"+t.captionEffect],(ue.length||le.length)&&b(),p(Y,X),t.stopOnHover&&(this.bind("mouseover",function(){G&&G.playing()||g(),fe=!0}),this.bind("mouseout",function(){G&&G.playing()||w(),fe=!1})),G&&G.playing()||w();var _e=P.find("audio").get(0),Me=t.autoPlay;if(_e){if(window.Audio&&_e.canPlayType&&_e.canPlayType("audio/mp3"))_e.loop="loop",t.autoPlay&&(_e.autoplay="autoplay",setTimeout(function(){_e.play()},100));else{_e=_e.src;var Te=_e.substring(0,_e.length-/[^\\\/]+$/.exec(_e)[0].length),Se="wsSound"+Math.round(9999*Math.random());F("<div>").appendTo(P).get(0).id=Se;var Ce="wsSL"+Math.round(9999*Math.random());window[Ce]={onInit:function(){}},swfobject.createSWF({data:Te+"player_mp3_js.swf",width:"1",height:"1"},{allowScriptAccess:"always",loop:!0,FlashVars:"listener="+Ce+"&loop=1&autoplay="+(t.autoPlay?1:0)+"&mp3="+_e},Se),_e=0}P.bind("stop",function(){Me=!1,_e?_e.pause():F(Se).SetVariable("method:pause","")}),P.bind("start",function(){_e?_e.play():F(Se).SetVariable("method:play","")})}if(k.wsStart=o,k.wsRestart=w,k.wsStop=v,t.playPause){var Ee=F('<a href="#" class="ws_playpause"></a>');Ee.addClass(t.autoPlay?"ws_pause":"ws_play"),Ee.click(function(){return t.autoPlay=!t.autoPlay,t.autoPlay?(w(),Ee.removeClass("ws_play"),Ee.addClass("ws_pause"),G&&G.start(Y)):(k.wsStop(),Ee.removeClass("ws_pause"),Ee.addClass("ws_play")),!1}),this.append(Ee)}if("function"==typeof wowsliderVideo){var Fe=F('<div class="ws_video_btn"><div></div></div>').appendTo(P);G=new wowsliderVideo(P,t,l),"undefined"!=typeof $f&&(G.vimeo(!0),G.start(Y)),window.onYouTubeIframeAPIReady=function(){G.youtube(!0),G.start(Y)},Fe.on("click touchend",function(){J||G.play(Y,1)})}var Pe=0;if(t.fullScreen){var ke=function(){for(var t,e,n=[["requestFullscreen","exitFullscreen","fullscreenElement","fullscreenchange"],["webkitRequestFullscreen","webkitExitFullscreen","webkitFullscreenElement","webkitfullscreenchange"],["webkitRequestFullScreen","webkitCancelFullScreen","webkitCurrentFullScreenElement","webkitfullscreenchange"],["mozRequestFullScreen","mozCancelFullScreen","mozFullScreenElement","mozfullscreenchange"],["msRequestFullscreen","msExitFullscreen","msFullscreenElement","MSFullscreenChange"]],i={},a=0,s=n.length;s>a;a++)if(t=n[a],t&&t[1]in document){for(a=0,e=t.length;e>a;a++)i[n[0][a]]=t[a];return i}return!1}();ke&&(document.addEventListener(ke.fullscreenchange,function(){S()?(Pe=1,E()):(P.unwrap(),Pe=0,E()),l()}),F("<a href='#' class='ws_fullscreen'></a>").on("click",C).appendTo(P),k.wsToggleFS=C)}return k.wsResponsive=function(e){if(e>=0&&3>=e){var n="";switch(e){case 0:case 1:n="boxed-mode";break;case 2:n="fullwidth-mode";break;case 3:n="fullscreen-mode"}P.removeClass("boxed-mode fullwidth-mode fullscreen-mode").addClass(n),t.responsive=e,E()}},t.responsive&&(F(E),F(window).on("load resize",E)),this}},jQuery.extend(jQuery.easing,{easeInOutExpo:function(t,e,n,i,a){return 0==e?n:e==a?n+i:(e/=a/2)<1?i/2*Math.pow(2,10*(e-1))+n:i/2*(-Math.pow(2,-10*--e)+2)+n},easeOutCirc:function(t,e,n,i,a){return i*Math.sqrt(1-(e=e/a-1)*e)+n},easeOutCubic:function(t,e,n,i,a){return i*((e=e/a-1)*e*e+1)+n},easeOutElastic1:function(t,e,n,i,a){var s=Math.PI/2,o=1.70158,r=0,u=i;if(0==e)return n;if(1==(e/=a))return n+i;if(r||(r=.3*a),u<Math.abs(i)){u=i;var o=r/4}else var o=r/s*Math.asin(i/u);return u*Math.pow(2,-10*e)*Math.sin((e*a-o)*s/r)+i+n},easeOutBack:function(t,e,n,i,a,s){return void 0==s&&(s=1.70158),i*((e=e/a-1)*e*((s+1)*e+s)+1)+n}}),jQuery.fn.wowSlider.support={transform:function(){if(!window.getComputedStyle)return!1;var t=document.createElement("div");document.body.insertBefore(t,document.body.lastChild),t.style.transform="matrix3d(1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1)";var e=window.getComputedStyle(t).getPropertyValue("transform");return t.parentNode.removeChild(t),void 0!==e?"none"!==e:!1}(),perspective:function(){for(var t="perspectiveProperty perspective WebkitPerspective MozPerspective OPerspective MsPerspective".split(" "),e=0;e<t.length;e++)if(void 0!==document.body.style[t[e]])return!!t[e];return!1}(),transition:function(){var t=document.body||document.documentElement,e=t.style;return void 0!==e.transition||void 0!==e.WebkitTransition||void 0!==e.MozTransition||void 0!==e.MsTransition||void 0!==e.OTransition}()},function(t){function e(){n&&(s(e),t.fx.tick())}for(var n,i=0,a=["webkit","moz"],s=window.requestAnimationFrame,o=window.cancelAnimationFrame;i<a.length&&!s;i++)s=window[a[i]+"RequestAnimationFrame"],o=o||window[a[i]+"CancelAnimationFrame"]||window[a[i]+"CancelRequestAnimationFrame"];if(s)window.requestAnimationFrame=s,window.cancelAnimationFrame=o,t.fx.timer=function(i){i()&&t.timers.push(i)&&!n&&(n=!0,e())},t.fx.stop=function(){n=!1};else{var r=0;window.requestAnimationFrame=function(t){if(r)return!1;r=1;var e=(new Date).getTime(),n=Math.max(0,16-(e-i)),a=window.setTimeout(function(){r=0,t(e+n)},n);return i=e+n,a},window.cancelAnimationFrame=function(t){clearTimeout(t)}}}(jQuery);