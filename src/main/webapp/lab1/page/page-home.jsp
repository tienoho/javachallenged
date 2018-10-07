<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*"%>
<!DOCTYPE html>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Dashboard</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-book fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">8</div>
						<div>Bài học mới</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-green">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-pencil fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">0</div>
						<div>Bài tập mới</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-yellow">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-coffee fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">4</div>
						<div>Ý tưởng mới</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fa-clock-o fa-fw"></i> Nhật ký vọc vạch
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<ul class="timeline">
					<li>
						<div class="timeline-badge" style="background-color: green;">
							<i class="fa fa-check"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">UP JSP ĐƠN GIẢN LÊN HEROKU</h4>
								<p>
									<small class="text-muted"><i class="fa fa-clock-o"></i>
										ngày 04 tháng 09 năm 2018</small>
								</p>
							</div>
							<div class="timeline-body">
								<p>Đây là ngày đầu tiên chuyên mục java của tuanvumustache.com ra đời.</p>
								<p>Cũng ngày đầu tiên sử dụng kho github của bản thân một cách nghiêm túc.</p>
							</div>
						</div>
					</li>
					<li class="timeline-inverted">
						<div class="timeline-badge" style="background-color: green;">
							<i class="fa fa-check"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">Update giao diện</h4>
							</div>
							<p>
									<small class="text-muted"><i class="fa fa-clock-o"></i>
										ngày 06 tháng 09 năm 2018</small>
								</p>
							<div class="timeline-body">
								<p>Tiến hành update từ template sb admin v2.</p>
							</div>
						</div>
					</li>
					<li>
						<div class="timeline-badge" style="background-color: green;">
							<i class="fa fa-check"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">Thực hành với servlet căn bản</h4>
							</div>
							<p>
									<small class="text-muted"><i class="fa fa-clock-o"></i>
										ngày 07 tháng 09 năm 2018</small>
								</p>
							<div class="timeline-body">
								<p>Các phần đã thực hành tốt bao gồm: Hello Servlet, Init Param Servlet, Annotation Servlet, Url Pattern Servlet, FORWARD Servlet, REDIRECT Servlet.</p>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-8 -->
	<div class="col-lg-4">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fa-gears fa-fw"></i> Thông tin hệ thống
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="list-group">
					<% String requestURL = (String) request.getAttribute("requestURL"); %>
					<a href="#" class="list-group-item">
                        <i class="fa fa-gear fa-fw"></i> requestURL: <br><%=requestURL%>
                    </a>
                    
					<% String requestURI = (String) request.getAttribute("requestURI"); %>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-gear fa-fw"></i> requestURI: <br><%=requestURI%>
                    </a>
                    
                    <% String contextPath = (String) request.getAttribute("contextPath"); %>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-gear fa-fw"></i> contextPath: <br><%=contextPath%>
                    </a>
                    
                    <% String servletPath = (String) request.getAttribute("servletPath"); %>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-gear fa-fw"></i> servletPath: <br><%=servletPath%>
                    </a>
                    
                    <% String queryString = (String) request.getAttribute("queryString"); %>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-gear fa-fw"></i> queryString: <br><%=queryString%>
                    </a>
                    
                    <% String param1 = (String) request.getAttribute("param1"); %>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-gear fa-fw"></i> User: <br><%=param1%>
                    </a>
                    
                    <% String serverName = (String) request.getAttribute("serverName"); %>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-gear fa-fw"></i> serverName: <br><%=serverName%>
                    </a>
                    
                    <% String serverPort = (String) request.getAttribute("serverPort"); %>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-gear fa-fw"></i> serverPort: <br><%=serverPort%>
                    </a>
                    
                    <% String remoteAddr = (String) request.getAttribute("remoteAddr"); %>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-gear fa-fw"></i> remoteAddr: <br><%=remoteAddr%>
                    </a>
                    
                    <% String remoteHost = (String) request.getAttribute("remoteHost"); %>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-gear fa-fw"></i> remoteHost: <br><%=remoteHost%>
                    </a>
                    
                    <% String remotePort = (String) request.getAttribute("remotePort"); %>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-gear fa-fw"></i> remotePort: <br><%=remotePort%>
                    </a>
                    
                    <% String remoteUser = (String) request.getAttribute("remoteUser"); %>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-gear fa-fw"></i> remoteUser: <br><%=remoteUser%>
                    </a>
                    
                    <%  Enumeration<String> headers =  (Enumeration) request.getAttribute("headers"); %>
                    <%  
                    while (headers.hasMoreElements()) {
                        String header = headers.nextElement();%>
                    	<a href="#" class="list-group-item">
                        	<i class="fa fa-gear fa-fw"></i> <%=header%>: <br><%=request.getHeader(header)%>
                    	</a>    
                    <% }%>
                    
                     <% String realPath = (String) request.getAttribute("realPath"); %>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-gear fa-fw"></i> realPath: <br><%=realPath%>
                    </a>
				</div>
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-4 -->
</div>
<!-- /.row -->