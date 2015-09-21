
<!DOCTYPE html>
<html lang="en-us">
<head>
<meta charset="utf-8">
<!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

<title>PB Admin Home</title>
<meta name="description" content="">
<meta name="author" content="">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Basic Styles -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${request.contextPath}/admin/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${request.contextPath}/admin/css/font-awesome.min.css">

<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${request.contextPath}/admin/css/smartadmin-production-plugins.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${request.contextPath}/admin/css/smartadmin-production.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${request.contextPath}/admin/css/smartadmin-skins.min.css">

<!-- SmartAdmin RTL Support -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${request.contextPath}/admin/css/smartadmin-rtl.min.css">

<!-- We recommend you use "your_style.css" to override SmartAdmin
		     specific styles this will also ensure you retrain your customization with each SmartAdmin update.
		<link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${request.contextPath}/admin/css/demo.min.css">

<!-- FAVICONS -->
<link rel="shortcut icon"
	href="${request.contextPath}/admin/img/favicon/favicon.ico"
	type="image/x-icon">
<link rel="icon"
	href="${request.contextPath}/admin/img/favicon/favicon.ico"
	type="image/x-icon">

<!-- GOOGLE FONT -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

<!-- Specifying a Webpage Icon for Web Clip 
			 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
<link rel="apple-touch-icon"
	href="${request.contextPath}/admin/img/splash/sptouch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="${request.contextPath}/admin/img/splash/touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="${request.contextPath}/admin/img/splash/touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="${request.contextPath}/admin/img/splash/touch-icon-ipad-retina.png">

<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<!-- Startup image for web apps -->
<link rel="apple-touch-startup-image"
	href="${request.contextPath}/admin/img/splash/ipad-landscape.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
<link rel="apple-touch-startup-image"
	href="${request.contextPath}/admin/img/splash/ipad-portrait.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
<link rel="apple-touch-startup-image"
	href="${request.contextPath}/admin/img/splash/iphone.png"
	media="screen and (max-device-width: 320px)">
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
	var TogetherJSConfig_disableWebRTC = true;
	//var TogetherJSConfig_youtube = true;

	//var TogetherJSConfig_getUserName = function() {
		//return 'Ranjeet Y';
	//};

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

<!--

	TABLE OF CONTENTS.
	
	Use search to find needed section.
	
	===================================================================
	
	|  01. #CSS Links                |  all CSS links and file paths  |
	|  02. #FAVICONS                 |  Favicon links and file paths  |
	|  03. #GOOGLE FONT              |  Google font link              |
	|  04. #APP SCREEN / ICONS       |  app icons, screen backdrops   |
	|  05. #BODY                     |  body tag                      |
	|  06. #HEADER                   |  header tag                    |
	|  07. #PROJECTS                 |  project lists                 |
	|  08. #TOGGLE LAYOUT BUTTONS    |  layout buttons and actions    |
	|  09. #MOBILE                   |  mobile view dropdown          |
	|  10. #SEARCH                   |  search field                  |
	|  11. #NAVIGATION               |  left panel & navigation       |
	|  12. #RIGHT PANEL              |  right panel userlist          |
	|  13. #MAIN PANEL               |  main panel                    |
	|  14. #MAIN CONTENT             |  content holder                |
	|  15. #PAGE FOOTER              |  page footer                   |
	|  16. #SHORTCUT AREA            |  dropdown shortcuts area       |
	|  17. #PLUGINS                  |  all scripts and plugins       |
	
	===================================================================
	
	-->

<!-- #BODY -->
<!-- Possible Classes

		* 'smart-style-{SKIN#}'
		* 'smart-rtl'         - Switch theme mode to RTL
		* 'menu-on-top'       - Switch to top navigation (no DOM change required)
		* 'no-menu'			  - Hides the menu completely
		* 'hidden-menu'       - Hides the main menu but still accessable by hovering over left edge
		* 'fixed-header'      - Fixes the header
		* 'fixed-navigation'  - Fixes the main menu
		* 'fixed-ribbon'      - Fixes breadcrumb
		* 'fixed-page-footer' - Fixes footer
		* 'container'         - boxed layout mode (non-responsive: will not work with fixed-navigation & fixed-ribbon)
	-->
<body class="fixed-header fixed-page-footer fixed-ribbon">

	<!-- HEADER -->
	<header id="header">
		<div id="logo-group">

			<!-- PLACE YOUR LOGO HERE -->
			<span id="logo"> <img
				src="${request.contextPath}/admin/img/pb-logo.png" alt="SmartAdmin">
			</span>
			<!-- END LOGO PLACEHOLDER -->

			<!-- Note: The activity badge color changes when clicked and resets the number to 0
				Suggestion: You may want to set a flag when this happens to tick off all checked messages / notifications -->
			<span id="activity" class="activity-dropdown"> <i
				class="fa fa-user"></i> <b class="badge"> 21 </b>
			</span>

			<!-- AJAX-DROPDOWN : control this dropdown height, look and feel from the LESS variable file -->
			<div class="ajax-dropdown">

				<!-- the ID links are fetched via AJAX to the ajax container "ajax-notifications" -->
				<div class="btn-group btn-group-justified" data-toggle="buttons">
					<label class="btn btn-default"> <input type="radio"
						name="activity"
						id="${request.contextPath}/admin/ajax/notify/mail.html">
						Msgs (14)
					</label> <label class="btn btn-default"> <input type="radio"
						name="activity"
						id="${request.contextPath}/admin/ajax/notify/notifications.html">
						notify (3)
					</label> <label class="btn btn-default"> <input type="radio"
						name="activity"
						id="${request.contextPath}/admin/ajax/notify/tasks.html">
						Tasks (4)
					</label>
				</div>

				<!-- notification content -->
				<div class="ajax-notifications custom-scroll">

					<div class="alert alert-transparent">
						<h4>Click a button to show messages here</h4>
						This blank page message helps protect your privacy, or you can
						show the first message here automatically.
					</div>

					<i class="fa fa-lock fa-4x fa-border"></i>

				</div>
				<!-- end notification content -->

				<!-- footer: refresh area -->
				<span> Last updated on: 12/12/2013 9:43AM
					<button type="button"
						data-loading-text="<i class='fa fa-refresh fa-spin'></i> Loading..."
						class="btn btn-xs btn-default pull-right">
						<i class="fa fa-refresh"></i>
					</button>
				</span>
				<!-- end footer -->

			</div>
			<!-- END AJAX-DROPDOWN -->
		</div>

		<!-- projects dropdown -->
		<div class="project-context hidden-xs">

			<span class="label">Projects:</span> <span
				class="project-selector dropdown-toggle" data-toggle="dropdown">Recent
				projects <i class="fa fa-angle-down"></i>
			</span>

			<!-- Suggestion: populate this list with fetch and push technique -->
			<ul class="dropdown-menu">
				<li><a href="javascript:void(0);">Online e-merchant
						management system - attaching integration with the iOS</a></li>
				<li><a href="javascript:void(0);">Notes on pipeline
						upgradee</a></li>
				<li><a href="javascript:void(0);">Assesment Report for
						merchant account</a></li>
				<li class="divider"></li>
				<li><a href="javascript:void(0);"><i
						class="fa fa-power-off"></i> Clear</a></li>
			</ul>
			<!-- end dropdown-menu-->

		</div>
		<!-- end projects dropdown -->

		<!-- pulled right: nav area -->
		<div class="pull-right">

			<!-- collapse menu button -->
			<div id="hide-menu" class="btn-header pull-right">
				<span> <a href="javascript:void(0);" data-action="toggleMenu"
					title="Collapse Menu"><i class="fa fa-reorder"></i></a>
				</span>
			</div>
			<!-- end collapse menu -->

			<!-- #MOBILE -->
			<!-- Top menu profile link : this shows only when top menu is active -->
			<ul id="mobile-profile-img"
				class="header-dropdown-list hidden-xs padding-5">
				<li class=""><a href="#"
					class="dropdown-toggle no-margin userdropdown"
					data-toggle="dropdown"> <img
						src="${request.contextPath}/admin/img/avatars/sunny.png"
						alt="John Doe" class="online" />
				</a>
					<ul class="dropdown-menu pull-right">
						<li><a href="javascript:void(0);"
							class="padding-10 padding-top-0 padding-bottom-0"><i
								class="fa fa-cog"></i> Setting</a></li>
						<li class="divider"></li>
						<li><a href="profile.html"
							class="padding-10 padding-top-0 padding-bottom-0"> <i
								class="fa fa-user"></i> <u>P</u>rofile
						</a></li>
						<li class="divider"></li>
						<li><a href="javascript:void(0);"
							class="padding-10 padding-top-0 padding-bottom-0"
							data-action="toggleShortcut"><i class="fa fa-arrow-down"></i>
								<u>S</u>hortcut</a></li>
						<li class="divider"></li>
						<li><a href="javascript:void(0);"
							class="padding-10 padding-top-0 padding-bottom-0"
							data-action="launchFullscreen"><i class="fa fa-arrows-alt"></i>
								Full <u>S</u>creen</a></li>
						<li class="divider"></li>
						<li><a href="login.html"
							class="padding-10 padding-top-5 padding-bottom-5"
							data-action="userLogout"><i class="fa fa-sign-out fa-lg"></i>
								<strong><u>L</u>ogout</strong></a></li>
					</ul></li>
			</ul>

			<!-- logout button -->
			<div id="logout" class="btn-header transparent pull-right">
				<span> <a href="${request.contextPath}/admin/login.html"
					title="Sign Out" data-action="userLogout"
					data-logout-msg="You can improve your security further after logging out by closing this opened browser"><i
						class="fa fa-sign-out"></i></a>
				</span>
			</div>
			<!-- end logout button -->

			<!-- search mobile button (this is hidden till mobile view port) -->
			<div id="search-mobile" class="btn-header transparent pull-right">
				<span> <a href="javascript:void(0)" title="Search"><i
						class="fa fa-search"></i></a>
				</span>
			</div>
			<!-- end search mobile button -->

			<!-- input: search field -->
			<form action="${request.contextPath}/admin/search.html"
				class="header-search pull-right">
				<input id="search-fld" type="text" name="param"
					placeholder="Find reports and more"
					data-autocomplete='[
					"ActionScript",
					"AppleScript",
					"Asp",
					"BASIC",
					"C",
					"C++",
					"Clojure",
					"COBOL",
					"ColdFusion",
					"Erlang",
					"Fortran",
					"Groovy",
					"Haskell",
					"Java",
					"JavaScript",
					"Lisp",
					"Perl",
					"PHP",
					"Python",
					"Ruby",
					"Scala",
					"Scheme"]'>
				<button type="submit">
					<i class="fa fa-search"></i>
				</button>
				<a href="javascript:void(0);" id="cancel-search-js"
					title="Cancel Search"><i class="fa fa-times"></i></a>
			</form>
			<!-- end input: search field -->

			<!-- fullscreen button -->
			<div id="fullscreen" class="btn-header transparent pull-right">
				<span> <a href="javascript:void(0);"
					data-action="launchFullscreen" title="Full Screen"><i
						class="fa fa-arrows-alt"></i></a>
				</span>
			</div>
			<!-- end fullscreen button -->

			<!-- #Voice Command: Start Speech -->
			<div id="speech-btn"
				class="btn-header transparent pull-right hidden-sm hidden-xs">
				<div>
					<a href="javascript:void(0)" title="Voice Command"
						data-action="voiceCommand"><i class="fa fa-microphone"></i></a>
					<div class="popover bottom">
						<div class="arrow"></div>
						<div class="popover-content">
							<h4 class="vc-title">
								Voice command activated <br> <small>Please speak
									clearly into the mic</small>
							</h4>
							<h4 class="vc-title-error text-center">
								<i class="fa fa-microphone-slash"></i> Voice command failed <br>
								<small class="txt-color-red">Must <strong>"Allow"</strong>
									Microphone
								</small> <br> <small class="txt-color-red">Must have <strong>Internet
										Connection</strong></small>
							</h4>
							<a href="javascript:void(0);" class="btn btn-success"
								onclick="commands.help()">See Commands</a> <a
								href="javascript:void(0);"
								class="btn bg-color-purple txt-color-white"
								onclick="$('#speech-btn .popover').fadeOut(50);">Close Popup</a>
						</div>
					</div>
				</div>
			</div>
			<!-- end voice command -->

			<!-- multiple lang dropdown : find all flags in the flags page -->
			<ul class="header-dropdown-list hidden-xs">
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img src="${request.contextPath}/admin/img/blank.gif"
						class="flag flag-us" alt="United States"> <span>
							English (US) </span> <i class="fa fa-angle-down"></i>
				</a>
					<ul class="dropdown-menu pull-right">
						<li class="active"><a href="javascript:void(0);"><img
								src="${request.contextPath}/admin/img/blank.gif"
								class="flag flag-us" alt="United States"> English (US)</a></li>
						<li><a href="javascript:void(0);"><img
								src="${request.contextPath}/admin/img/blank.gif"
								class="flag flag-fr" alt="France"> Français</a></li>
						<li><a href="javascript:void(0);"><img
								src="${request.contextPath}/admin/img/blank.gif"
								class="flag flag-es" alt="Spanish"> Español</a></li>
						<li><a href="javascript:void(0);"><img
								src="${request.contextPath}/admin/img/blank.gif"
								class="flag flag-de" alt="German"> Deutsch</a></li>
						<li><a href="javascript:void(0);"><img
								src="${request.contextPath}/admin/img/blank.gif"
								class="flag flag-jp" alt="Japan"> 日本語</a></li>
						<li><a href="javascript:void(0);"><img
								src="${request.contextPath}/admin/img/blank.gif"
								class="flag flag-cn" alt="China"> 中文</a></li>
						<li><a href="javascript:void(0);"><img
								src="${request.contextPath}/admin/img/blank.gif"
								class="flag flag-it" alt="Italy"> Italiano</a></li>
						<li><a href="javascript:void(0);"><img
								src="${request.contextPath}/admin/img/blank.gif"
								class="flag flag-pt" alt="Portugal"> Portugal</a></li>
						<li><a href="javascript:void(0);"><img
								src="${request.contextPath}/admin/img/blank.gif"
								class="flag flag-ru" alt="Russia"> Русский язык</a></li>
						<li><a href="javascript:void(0);"><img
								src="${request.contextPath}/admin/img/blank.gif"
								class="flag flag-kr" alt="Korea"> 한국어</a></li>

					</ul></li>
			</ul>
			<!-- end multiple lang -->

		</div>
		<!-- end pulled right: nav area -->

	</header>
	<!-- END HEADER -->

	<!-- Left panel : Navigation area -->
	<!-- Note: This width of the aside area can be adjusted through LESS variables -->
	<aside id="left-panel">

		<!-- User info -->
		<div class="login-info">
			<span><!-- User image size is adjusted inside CSS, it should stay as it -->

				<a href="javascript:void(0);" id="show-shortcut"
				data-action="toggleShortcut"> <img
					src="${request.contextPath}/admin/img/avatars/male.png" alt="me"
					class="online" /> <span> Ranjeet Singh Yadav </span> <i
					class="fa fa-angle-down"></i>
			</a>

			</span>
		</div>
		<!-- end user info -->

		<!-- NAVIGATION : This navigation is also responsive-->
		<nav>
			<ul>
				<li><a href="${request.contextPath}/admin/index.html"
					title="Dashboard"><i class="fa fa-lg fa-fw fa-home"></i> <span
						class="menu-item-parent">Dashboard</span></a></li>
				<li><a href="${request.contextPath}/admin/inbox.html"><i
						class="fa fa-lg fa-fw fa-inbox"></i> <span
						class="menu-item-parent">Inbox</span><span
						class="badge pull-right inbox-badge">14</span></a></li>
				<li><a href="#"><i class="fa fa-lg fa-fw fa-bar-chart-o"></i>
						<span class="menu-item-parent">Graphs</span></a>
					<ul>
						<li><a href="${request.contextPath}/admin/flot.html">Flot
								Chart</a></li>
						<li><a href="${request.contextPath}/admin/morris.html">Morris
								Charts</a></li>
						<li><a href="${request.contextPath}/admin/inline-charts.html">Inline
								Charts</a></li>
						<li><a href="${request.contextPath}/admin/dygraphs.html">Dygraphs</a>
						</li>
						<li><a href="${request.contextPath}/admin/chartjs.html">Chart.js
								<span class="badge pull-right inbox-badge bg-color-yellow">new</span>
						</a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-lg fa-fw fa-table"></i> <span
						class="menu-item-parent">Tables</span></a>
					<ul>
						<li><a href="${request.contextPath}/admin/table.html">Normal
								Tables</a></li>
						<li><a href="${request.contextPath}/admin/datatables.html">Data
								Tables <span class="badge inbox-badge bg-color-greenLight">v1.10</span>
						</a></li>
						<li><a href="${request.contextPath}/admin/jqgrid.html">Jquery
								Grid</a></li>
					</ul></li>
				<li class="active"><a href="#"><i
						class="fa fa-lg fa-fw fa-pencil-square-o"></i> <span
						class="menu-item-parent">Forms</span></a>
					<ul>
						<li><a href="${request.contextPath}/admin/form-elements.html">Smart
								Form Elements</a></li>
						<li><a
							href="${request.contextPath}/admin/form-templates.html">Smart
								Form Layouts</a></li>
						<li><a href="${request.contextPath}/admin/validation.html">Smart
								Form Validation</a></li>
						
						<li><g:link controller="admin" action="formElements">Form Elements</g:link></li>
						<li><a
							href="${request.contextPath}/admin/bootstrap-validator.html">Bootstrap
								Form Validation</a></li>
						<li><a href="${request.contextPath}/admin/plugins.html">Form
								Plugins</a></li>
						
						<li class="active"><g:link controller="admin" action="wizard">Wizards</g:link></li>
							
						<li><a href="${request.contextPath}/admin/other-editors.html">Bootstrap
								Editors</a></li>
						<li><a href="${request.contextPath}/admin/dropzone.html">Dropzone
						</a></li>
						<li><a href="${request.contextPath}/admin/image-editor.html">Image
								Cropping <span
								class="badge pull-right inbox-badge bg-color-yellow">new</span>
						</a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-lg fa-fw fa-desktop"></i> <span
						class="menu-item-parent">UI Elements</span></a>
					<ul>
						<li><a
							href="${request.contextPath}/admin/general-elements.html">General
								Elements</a></li>
						<li><a href="${request.contextPath}/admin/buttons.html">Buttons</a>
						</li>
						<li><a href="#">Icons</a>
							<ul>
								<li><a href="${request.contextPath}/admin/fa.html"><i
										class="fa fa-plane"></i> Font Awesome</a></li>
								<li><a href="${request.contextPath}/admin/glyph.html"><i
										class="glyphicon glyphicon-plane"></i> Glyph Icons</a></li>
								<li><a href="${request.contextPath}/admin/flags.html"><i
										class="fa fa-flag"></i> Flags</a></li>
							</ul></li>
						<li><a href="${request.contextPath}/admin/grid.html">Grid</a>
						</li>
						<li><a href="${request.contextPath}/admin/treeview.html">Tree
								View</a></li>
						<li><a href="${request.contextPath}/admin/nestable-list.html">Nestable
								Lists</a></li>
						<li><a href="${request.contextPath}/admin/jqui.html">JQuery
								UI</a></li>
						<li><a href="${request.contextPath}/admin/typography.html">Typography</a>
						</li>
						<li><a href="#">Six Level Menu</a>
							<ul>
								<li><a href="#"><i class="fa fa-fw fa-folder-open"></i>
										Item #2</a>
									<ul>
										<li><a href="#"><i class="fa fa-fw fa-folder-open"></i>
												Sub #2.1 </a>
											<ul>
												<li><a href="#"><i class="fa fa-fw fa-file-text"></i>
														Item #2.1.1</a></li>
												<li><a href="#"><i class="fa fa-fw fa-plus"></i>
														Expand</a>
													<ul>
														<li><a href="#"><i class="fa fa-fw fa-file-text"></i>
																File</a></li>
														<li><a href="#"><i class="fa fa-fw fa-trash-o"></i>
																Delete</a></li>
													</ul></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-fw fa-folder-open"></i>
										Item #3</a>

									<ul>
										<li><a href="#"><i class="fa fa-fw fa-folder-open"></i>
												3ed Level </a>
											<ul>
												<li><a href="#"><i class="fa fa-fw fa-file-text"></i>
														File</a></li>
												<li><a href="#"><i class="fa fa-fw fa-file-text"></i>
														File</a></li>
											</ul></li>
									</ul></li>
							</ul></li>
					</ul></li>

				<li><a href="${request.contextPath}/admin/calendar.html"><i
						class="fa fa-lg fa-fw fa-calendar"><em>3</em></i> <span
						class="menu-item-parent">Calendar</span></a></li>
				<li><a href="${request.contextPath}/admin/widgets.html"><i
						class="fa fa-lg fa-fw fa-list-alt"></i> <span
						class="menu-item-parent">Widgets</span></a></li>
				<li><a href="#"><i class="fa fa-lg fa-fw fa-puzzle-piece"></i>
						<span class="menu-item-parent">App Views</span></a>
					<ul>
						<li><a href="${request.contextPath}/admin/projects.html"><i
								class="fa fa-file-text-o"></i> Projects</a></li>
						<li><a href="${request.contextPath}/admin/blog.html"><i
								class="fa fa-paragraph"></i> Blog</a></li>
						<li><a href="${request.contextPath}/admin/gallery.html"><i
								class="fa fa-picture-o"></i> Gallery</a></li>

						<li><a href="#"><i class="fa fa-comments"></i> Forum
								Layout</a>
							<ul>
								<li><a href="${request.contextPath}/admin/forum.html">General
										View</a></li>
								<li><a href="${request.contextPath}/admin/forum-topic.html">Topic
										View</a></li>
								<li><a href="${request.contextPath}/admin/forum-post.html">Post
										View</a></li>
							</ul></li>
						<li><a href="${request.contextPath}/admin/profile.html"><i
								class="fa fa-group"></i> Profile</a></li>
						<li><a href="${request.contextPath}/admin/timeline.html"><i
								class="fa fa-clock-o"></i> Timeline</a></li>
					</ul></li>
				<li><a href="${request.contextPath}/admin/gmap-xml.html"><i
						class="fa fa-lg fa-fw fa-map-marker"></i> <span
						class="menu-item-parent">GMap Skins</span><span
						class="badge bg-color-greenLight pull-right inbox-badge">9</span></a>
				</li>
				<li><a href="#"><i class="fa fa-lg fa-fw fa-windows"></i> <span
						class="menu-item-parent">Miscellaneous</span></a>
					<ul>
						
						<li><a href="${request.contextPath}/admin/login.html"
							target="_top">Login</a></li>
						<li><a href="${request.contextPath}/admin/register.html"
							target="_top">Register</a></li>
						<li><a href="${request.contextPath}/admin/lock.html"
							target="_top">Locked Screen</a></li>
						<li><a href="${request.contextPath}/admin/error404.html">Error
								404</a></li>
						<li><a href="${request.contextPath}/admin/error500.html">Error
								500</a></li>
						<li><a href="${request.contextPath}/admin/blank_.html">Blank
								Page</a></li>
						<li><a
							href="${request.contextPath}/admin/email-template.html">Email
								Template</a></li>
						<li><a href="${request.contextPath}/admin/search.html">Search
								Page</a></li>
						<li><a href="${request.contextPath}/admin/ckeditor.html">CK
								Editor</a></li>
					</ul></li>
				
				<li class="chat-users top-menu-invisible"><a href="#"><i
						class="fa fa-lg fa-fw fa-comment-o"><em
							class="bg-color-pink flash animated">!</em></i> <span
						class="menu-item-parent">Smart Chat API <sup>beta</sup></span></a>
					<ul>
						<li>
							<!-- DISPLAY USERS -->
							<div class="display-users">

								<input class="form-control chat-user-filter"
									placeholder="Filter" type="text"> <a href="#"
									class="usr" data-chat-id="cha1" data-chat-fname="Sadi"
									data-chat-lname="Orlaf" data-chat-status="busy"
									data-chat-alertmsg="Sadi Orlaf is in a meeting. Please do not disturb!"
									data-chat-alertshow="true" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='img/avatars/5.png' alt='Sadi Orlaf'>
												<div class='usr-card-content'>
													<h3>Sadi Orlaf</h3>
													<p>Marketing Executive</p>
												</div>
											</div>
										">
									<i></i>Sadi Orlaf
								</a> <a href="#" class="usr" data-chat-id="cha2"
									data-chat-fname="Jessica" data-chat-lname="Dolof"
									data-chat-status="online" data-chat-alertmsg=""
									data-chat-alertshow="false" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='${request.contextPath}/admin/img/avatars/1.png' alt='Jessica Dolof'>
												<div class='usr-card-content'>
													<h3>Jessica Dolof</h3>
													<p>Sales Administrator</p>
												</div>
											</div>
										">
									<i></i>Jessica Dolof
								</a> <a href="#" class="usr" data-chat-id="cha3"
									data-chat-fname="Zekarburg" data-chat-lname="Almandalie"
									data-chat-status="online" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='${request.contextPath}/admin/img/avatars/3.png' alt='Ranjeet Singh Yadav'>
												<div class='usr-card-content'>
													<h3>Ranjeet Singh Yadav</h3>
													<p>Tech Lead</p>
												</div>
											</div>
										">
									<i></i>Ranjeet Singh Yadav
								</a> <a href="#" class="usr" data-chat-id="cha4"
									data-chat-fname="Barley" data-chat-lname="Krazurkth"
									data-chat-status="away" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='${request.contextPath}/admin/img/avatars/4.png' alt='Barley Krazurkth'>
												<div class='usr-card-content'>
													<h3>Barley Krazurkth</h3>
													<p>Sales Director</p>
												</div>
											</div>
										">
									<i></i>Barley Krazurkth
								</a> <a href="#" class="usr offline" data-chat-id="cha5"
									data-chat-fname="Farhana" data-chat-lname="Amrin"
									data-chat-status="incognito" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='${request.contextPath}/admin/img/avatars/female.png' alt='Farhana Amrin'>
												<div class='usr-card-content'>
													<h3>Farhana Amrin</h3>
													<p>Support Admin <small><i class='fa fa-music'></i> Playing Beethoven Classics</small></p>
												</div>
											</div>
										">
									<i></i>Farhana Amrin (offline)
								</a> <a href="#" class="usr offline" data-chat-id="cha6"
									data-chat-fname="Lezley" data-chat-lname="Jacob"
									data-chat-status="incognito" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='${request.contextPath}/admin/img/avatars/male.png' alt='Lezley Jacob'>
												<div class='usr-card-content'>
													<h3>Lezley Jacob</h3>
													<p>Sales Director</p>
												</div>
											</div>
										">
									<i></i>Lezley Jacob (offline)
								</a> <a href="${request.contextPath}/admin/ajax/chat.html"
									class="btn btn-xs btn-default btn-block sa-chat-learnmore-btn">About
									the API</a>

							</div> <!-- END DISPLAY USERS -->
						</li>
					</ul></li>

			</ul>
		</nav>
		<span class="minifyme" data-action="minifyMenu"> <i
			class="fa fa-arrow-circle-left hit"></i>
		</span>

	</aside>
	<!-- END NAVIGATION -->

	<!-- MAIN PANEL -->
	<div id="main" role="main">

		<!-- RIBBON -->
		<div id="ribbon">

			<span class="ribbon-button-alignment"> <span id="refresh"
				class="btn btn-ribbon" data-action="resetWidgets"
				data-title="refresh" rel="tooltip" data-placement="bottom"
				data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings."
				data-html="true"> <i class="fa fa-refresh"></i>
			</span>
			</span>

			<!-- breadcrumb -->
			<ol class="breadcrumb">
				<li><a class="home" href="${createLink(uri: '/')}">Go to Home Page</a></li>
			</ol>
			<!-- end breadcrumb -->

				<!-- You can also add more buttons to the
				ribbon for further usability

				Example below:
			 
				<span class="ribbon-button-alignment pull-right">
				<span id="search" class="btn btn-ribbon hidden-xs" data-title="search"><i class="fa-grid"></i> Change Grid</span>
				<span id="add" class="btn btn-ribbon hidden-xs" data-title="add"><i class="fa-plus"></i> Add</span>
				<span id="search" class="btn btn-ribbon" data-title="search"><i class="fa-search"></i> <span class="hidden-mobile">Search</span></span>
				</span> 
				-->
				<span class="ribbon-button-alignment pull-middle">
					<span id="search" class="btn btn-primary" data-title="Co-Browse">
						<button id="start-togetherjs" type="button"
							onclick="TogetherJS(this); return false"
							data-end-togetherjs-html="End Co-Browsing">Co-Browse
						</button>
					</span>
				</span>

			</div>
			<!-- END RIBBON -->

			<!-- MAIN CONTENT -->
			<div id="content">
				<g:layoutBody/>
			</div>
			<!-- END MAIN CONTENT -->

		</div>
		<!-- END MAIN PANEL -->

		<!-- PAGE FOOTER -->
		<div class="page-footer">
			<div class="row">
				<div class="col-xs-12 col-sm-6">
					<span class="txt-color-white">PB SmartAdmin <span class="hidden-xs"> - Web Application</span> © 2014-2015</span>
				</div>

				<div class="col-xs-6 col-sm-6 text-right hidden-xs">
					<div class="txt-color-white inline-block">
						<i class="txt-color-blueLight hidden-mobile">Last account activity <i class="fa fa-clock-o"></i> <strong>52 mins ago &nbsp;</strong> </i>
						<div class="btn-group dropup">
							<button class="btn btn-xs dropdown-toggle bg-color-blue txt-color-white" data-toggle="dropdown">
								<i class="fa fa-link"></i> <span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right text-left">
								<li>
									<div class="padding-5">
										<p class="txt-color-darken font-sm no-margin">Download Progress</p>
										<div class="progress progress-micro no-margin">
											<div class="progress-bar progress-bar-success" style="width: 50%;"></div>
										</div>
									</div>
								</li>
								<li class="divider"></li>
								<li>
									<div class="padding-5">
										<p class="txt-color-darken font-sm no-margin">Server Load</p>
										<div class="progress progress-micro no-margin">
											<div class="progress-bar progress-bar-success" style="width: 20%;"></div>
										</div>
									</div>
								</li>
								<li class="divider"></li>
								<li>
									<div class="padding-5">
										<p class="txt-color-darken font-sm no-margin">Memory Load <span class="text-danger">*critical*</span></p>
										<div class="progress progress-micro no-margin">
											<div class="progress-bar progress-bar-danger" style="width: 70%;"></div>
										</div>
									</div>
								</li>
								<li class="divider"></li>
								<li>
									<div class="padding-5">
										<button class="btn btn-block btn-default">refresh</button>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END PAGE FOOTER -->

		<!-- SHORTCUT AREA : With large tiles (activated via clicking user name tag)
		Note: These tiles are completely responsive,
		you can add as many as you like
		-->
		<div id="shortcut">
			<ul>
				<li>
					<a href="${request.contextPath}/admin/inbox.html" class="jarvismetro-tile big-cubes bg-color-blue"> <span class="iconbox"> <i class="fa fa-envelope fa-4x"></i> <span>Mail <span class="label pull-right bg-color-darken">14</span></span> </span> </a>
				</li>
				<li>
					<a href="${request.contextPath}/admin/calendar.html" class="jarvismetro-tile big-cubes bg-color-orangeDark"> <span class="iconbox"> <i class="fa fa-calendar fa-4x"></i> <span>Calendar</span> </span> </a>
				</li>
				<li>
					<a href="${request.contextPath}/admin/gmap-xml.html" class="jarvismetro-tile big-cubes bg-color-purple"> <span class="iconbox"> <i class="fa fa-map-marker fa-4x"></i> <span>Maps</span> </span> </a>
				</li>
				<li>
					<a href="${request.contextPath}/admin/invoice.html" class="jarvismetro-tile big-cubes bg-color-blueDark"> <span class="iconbox"> <i class="fa fa-book fa-4x"></i> <span>Invoice <span class="label pull-right bg-color-darken">99</span></span> </span> </a>
				</li>
				<li>
					<a href="${request.contextPath}/admin/gallery.html" class="jarvismetro-tile big-cubes bg-color-greenLight"> <span class="iconbox"> <i class="fa fa-picture-o fa-4x"></i> <span>Gallery </span> </span> </a>
				</li>
				<li>
					<a href="${request.contextPath}/admin/profile.html" class="jarvismetro-tile big-cubes selected bg-color-pinkDark"> <span class="iconbox"> <i class="fa fa-user fa-4x"></i> <span>My Profile </span> </span> </a>
				</li>
			</ul>
		</div>
		<!-- END SHORTCUT AREA -->

		<!--================================================== -->

		<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
		<script data-pace-options='{ "restartOnRequestAfter": true }' src="${request.contextPath}/admin/js/plugin/pace/pace.min.js"></script>

		<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script>
			if (!window.jQuery) {
				document.write('<script src="${request.contextPath}/admin/js/libs/jquery-2.1.1.min.js"><\/script>');
			}
		</script>

		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
		<script>
			if (!window.jQuery.ui) {
				document.write('<script src="${request.contextPath}/admin/js/libs/jquery-ui-1.10.3.min.js"><\/script>');
			}
		</script>

		<!-- IMPORTANT: APP CONFIG -->
		<script src="${request.contextPath}/admin/js/app.config.js"></script>

		<!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
		<script src="${request.contextPath}/admin/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> 

		<!-- BOOTSTRAP JS -->
		<script src="${request.contextPath}/admin/js/bootstrap/bootstrap.min.js"></script>

		<!-- CUSTOM NOTIFICATION -->
		<script src="${request.contextPath}/admin/js/notification/SmartNotification.min.js"></script>

		<!-- JARVIS WIDGETS -->
		<script src="${request.contextPath}/admin/js/smartwidgets/jarvis.widget.min.js"></script>

		<!-- EASY PIE CHARTS -->
		<script src="${request.contextPath}/admin/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

		<!-- SPARKLINES -->
		<script src="${request.contextPath}/admin/js/plugin/sparkline/jquery.sparkline.min.js"></script>

		<!-- JQUERY VALIDATE -->
		<script src="${request.contextPath}/admin/js/plugin/jquery-validate/jquery.validate.min.js"></script>

		<!-- JQUERY MASKED INPUT -->
		<script src="${request.contextPath}/admin/js/plugin/masked-input/jquery.maskedinput.min.js"></script>

		<!-- JQUERY SELECT2 INPUT -->
		<script src="${request.contextPath}/admin/js/plugin/select2/select2.min.js"></script>

		<!-- JQUERY UI + Bootstrap Slider -->
		<script src="${request.contextPath}/admin/js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

		<!-- browser msie issue fix -->
		<script src="${request.contextPath}/admin/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

		<!-- FastClick: For mobile devices -->
		<script src="${request.contextPath}/admin/js/plugin/fastclick/fastclick.min.js"></script>

		<!--[if IE 8]>

		<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

		<![endif]-->

		<!-- Demo purpose only -->
		<script src="${request.contextPath}/admin/js/demo.min.js"></script>

		<!-- MAIN APP JS FILE -->
		<script src="${request.contextPath}/admin/js/app.min.js"></script>

		<!-- ENHANCEMENT PLUGINS : NOT A REQUIREMENT -->
		<!-- Voice command : plugin -->
		<script src="${request.contextPath}/admin/js/speech/voicecommand.min.js"></script>

		<!-- SmartChat UI : plugin -->
		<script src="${request.contextPath}/admin/js/smart-chat-ui/smart.chat.ui.min.js"></script>
		<script src="${request.contextPath}/admin/js/smart-chat-ui/smart.chat.manager.min.js"></script>

		<!-- PAGE RELATED PLUGIN(S) -->
		<script src="${request.contextPath}/admin/js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
		<script src="${request.contextPath}/admin/js/plugin/fuelux/wizard/wizard.min.js"></script>
		

		<script type="text/javascript">
		
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		
		$(document).ready(function() {
			
			pageSetUp();
			
			
	
			//Bootstrap Wizard Validations

			  var $validator = $("#wizard-1").validate({
			    
			    rules: {
			      email: {
			        required: true,
			        email: "Your email address must be in the format of name@domain.com"
			      },
			      fname: {
			        required: true
			      },
			      lname: {
			        required: true
			      },
			      country: {
			        required: true
			      },
			      city: {
			        required: true
			      },
			      postal: {
			        required: true,
			        minlength: 4
			      },
			      wphone: {
			        required: true,
			        minlength: 10
			      },
			      hphone: {
			        required: true,
			        minlength: 10
			      }
			    },
			    
			    messages: {
			      fname: "Please specify your First name",
			      lname: "Please specify your Last name",
			      email: {
			        required: "We need your email address to contact you",
			        email: "Your email address must be in the format of name@domain.com"
			      }
			    },
			    
			    highlight: function (element) {
			      $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
			    },
			    unhighlight: function (element) {
			      $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
			    },
			    errorElement: 'span',
			    errorClass: 'help-block',
			    errorPlacement: function (error, element) {
			      if (element.parent('.input-group').length) {
			        error.insertAfter(element.parent());
			      } else {
			        error.insertAfter(element);
			      }
			    }
			  });
			  
			  $('#bootstrap-wizard-1').bootstrapWizard({
			    'tabClass': 'form-wizard',
			    'onNext': function (tab, navigation, index) {
			      var $valid = $("#wizard-1").valid();
			      if (!$valid) {
			        $validator.focusInvalid();
			        return false;
			      } else {
			        $('#bootstrap-wizard-1').find('.form-wizard').children('li').eq(index - 1).addClass(
			          'complete');
			        $('#bootstrap-wizard-1').find('.form-wizard').children('li').eq(index - 1).find('.step')
			        .html('<i class="fa fa-check"></i>');
			      }
			    }
			  });
			  
		
			// fuelux wizard
			  var wizard = $('.wizard').wizard();
			  
			  wizard.on('finished', function (e, data) {
			    //$("#fuelux-wizard").submit();
			    //console.log("submitted!");
			    $.smallBox({
			      title: "Congratulations! Your form was submitted",
			      content: "<i class='fa fa-clock-o'></i> <i>1 seconds ago...</i>",
			      color: "#5F895F",
			      iconSmall: "fa fa-check bounce animated",
			      timeout: 4000
			    });
			    
			  });

		
		})

		</script>

		<!-- Your GOOGLE ANALYTICS CODE Below -->
		<script type="text/javascript">
			var _gaq = _gaq || [];
				_gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
				_gaq.push(['_trackPageview']);
			
			(function() {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			})();

		</script>

	</body>

</html>