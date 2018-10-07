<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-static-top" role="navigation"
	style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/home?account=guest">JAVACHALLENGE
			v1.0.1</a> <!-- FIX -->
	</div>

	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li><a href="/home?account=guest"><i
						class="fa fa-dashboard fa-fw"></i> TỔNG QUAN</a></li><!-- FIX -->
				<li><a href="/lab1/list/uploadheroku.jsp"><i
						class="fa fa-upload fa-fw"></i> Upload java web lên heroku</a></li><!-- FIX -->
				<li><a href="#"><i class="fa fa-graduation-cap  fa-fw"></i>
						Beginner Servlet/JSP<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="/hello"><i
								class="glyphicon glyphicon-console"></i> HelloServlet</a></li><!-- FIX -->
						<li><a href="/initParam"><i
								class="glyphicon glyphicon-console"></i> InitParamServlet</a></li><!-- FIX -->
						<li><a href="/annExample"><i
								class="glyphicon glyphicon-console"></i>
								AnnotationExampleServlet1</a></li><!-- FIX -->
						<li><a href="/annotationExample"><i
								class="glyphicon glyphicon-console"></i>
								AnnotationExampleServlet2</a></li><!-- FIX -->
						<li><a href="/any/*"><i
								class="glyphicon glyphicon-console"></i> AsteriskServlet</a></li><!-- FIX -->
						<li><a href="/forwardDemo"><i
								class="glyphicon glyphicon-console"></i> ForwardDemoServlet</a></li><!-- FIX -->
						<li><a href="/redirectDemo"><i
								class="glyphicon glyphicon-console"></i> RedirectDemoServlet</a></li><!-- FIX -->
					</ul> <!-- /.nav-second-level --></li>
				<li><a href="/lab1/list/idea.jsp"><i
						class="fa fa-coffee fa-fw"></i> Ý tưởng/Feature</a></li><!-- FIX -->
				<li><a href="/lab1/list/release.jsp"><i
						class="fa fa-coffee fa-fw"></i> Relase</a></li><!-- FIX -->
			</ul>
		</div>
		<!-- /.sidebar-collapse -->
	</div>
	<!-- /.navbar-static-side -->
</nav>