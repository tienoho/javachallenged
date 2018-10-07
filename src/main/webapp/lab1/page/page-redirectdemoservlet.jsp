<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Redirect (Chuyển hướng)</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<% String title = (String) request.getAttribute("title"); %>
			<div class="panel-heading"><%= title %></div>
			<div class="panel-body">
				<div class="row">
					<div class="col-lg-12">
						<% String param = (String) request.getAttribute("param"); %>
						<p>Context: <%= param %></p>
						<a href="/redirectDemo?redirect=true" type="button" class="btn btn-primary">Redirect</a>
						<a href="/redirectDemo" type="button" class="btn btn-primary">NO Redirect</a> <!-- FIX -->
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