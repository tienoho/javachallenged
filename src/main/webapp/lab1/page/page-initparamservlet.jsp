<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Ví dụ tham số khởi tạo Servlet</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Init Param</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-lg-12">
						<% String obj1 = (String) request.getAttribute("myObject1"); %>
						<% String obj2 = (String) request.getAttribute("myObject2"); %>
						<p>My name is: <%= obj1 %></p>
						<p>Or my name is: <%= obj2 %></p>
					</div>
				</div>
				<!-- /.row (nested) -->
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->