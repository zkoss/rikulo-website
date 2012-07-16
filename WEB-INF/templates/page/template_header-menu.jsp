<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.potix.website.rikulo.*,com.potix.website.rikulo.util.*"%>
<%
	String ua = request.getHeader("user-agent");
	if (ua != null)
		ua = ua.toLowerCase();
	String name = request.getAttribute(Consts.MENU_CATEGORY) == null ? ""
			: request.getAttribute(Consts.MENU_CATEGORY).toString();
	String selClass = "menuitem-sel";
	boolean oldBrowser = false;//(WebUtil.isMSIE(ua) && WebUtil.getIEVer(ua) < 9);
%>
<div id="main_menu">
	<nav class="navigation_menu"> 
		<header>
			<h5>Navigation Menu</h5>
		</header>
		<ul class='menu <%=oldBrowser ? "old-style" : "new-style"%>'>
			<li class='menuitem <%=name.equals(Consts.MENU_CATEGORY_CONTRIBUTE) ? selClass: ""%>'>
				<div class="menuitem-right">
					<a href="/contribute/" class="menulink">Contribute</a>
				</div>
			</li>
			<li class='menuitem <%=name.equals(Consts.MENU_CATEGORY_DISCUSS) ? selClass: ""%>'>
				<div class="menuitem-right">
					<a href="/discuss/" class="menulink">Discuss</a>
				</div>
			</li>
			<li class='menuitem <%=name.equals(Consts.MENU_CATEGORY_LEARN) ? selClass: ""%>'>
				<div class="menuitem-right">
					<a href="/learn/" class="menulink">Learn</a>
				</div>
			</li>
			<li class='menuitem <%=name.equals(Consts.MENU_CATEGORY_BLOG) ? selClass: ""%>'>
				<div class="menuitem-right">
					<a href="http://blog.rikulo.org" class="menulink">Blog</a>
				</div>
			</li>
		</ul>
	</nav>
</div>