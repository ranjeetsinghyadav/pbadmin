<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${assetPath(src: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${assetPath(src: 'apple-touch-icon-retina.png')}">
<asset:stylesheet src="application.css" />
<asset:javascript src="application.js" />
<script>
	//var TogetherJSConfig_hubBase = "http://10.0.8.23:7070";
//	var TogetherJSConfig_hubBase = "http://vijay:1337";
	var TogetherJSConfig_cloneClicks = true;
	//var TogetherJSConfig_enableShortcut = true;
//	var TogetherJSConfig_useMinimizedCode = true;
	//var TogetherJSConfig_findRoom = {prefix: "PB Users", max: 5};
	//var TogetherJSConfig_autoStart = true;
	var TogetherJSConfig_suppressJoinConfirmation = true;
//	var TogetherJSConfig_suppressInvite = true;
//	var TogetherJSConfig_disableWebRTC = true;
	//var TogetherJSConfig_youtube = true;

	var TogetherJSConfig_getUserName = function() {
		return 'RSY';
	};

	//TogetherJS.on("ready", function () {
	//	console.log("Co-browsing session is ready !!");
	//	})
	//	TogetherJS.on("close", function () {
	//	console.log("Co-browsing session is closed !!");
	//	})
	//TogetherJS.reinitialize();

	//Sometimes instead of having the user invite someone to TogetherJS you might want to handle the invitation internally in your app. 
	//So typically when the person started TogetherJS, you'd want to find some other person they want to collaborate with and send the TogetherJS link to them. 
	//To get at the TogetherJS link:
	//TogetherJSConfig_on_ready = function () {
	//  sendTogetherJSURLToServer(TogetherJS.shareUrl());
	//};
</script>
<script src="https://togetherjs.com/togetherjs-min.js"></script>

<g:layoutHead />
</head>
<body>
	<button id="start-togetherjs" type="button"
		onclick="TogetherJS(this); return false"
		data-end-togetherjs-html="End Co-Browsing">Start Co-Browsing
	</button>
	<div id="grailsLogo" role="banner">
		<a href="www.policybazaar.com"> <asset:image src="pb-logo.png"
				alt="Grails" />
		</a>
		<sec:ifLoggedIn>
				Logged in as <sec:loggedInUserInfo field="username" />
			<g:link controller="logout">Logout</g:link>
		</sec:ifLoggedIn>
		<sec:ifNotLoggedIn>
			<g:link controller='login' action='auth'>Login</g:link>
		</sec:ifNotLoggedIn>
	</div>
	<g:layoutBody />

	<div class="footer" role="contentinfo"></div>

	<div id="spinner" class="spinner" style="display: none;">
		<g:message code="spinner.alt" default="Loading&hellip;" />
	</div>
</body>
</html>
