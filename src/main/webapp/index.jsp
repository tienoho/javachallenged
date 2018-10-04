<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Simple Sidebar - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/resources/css/simple-sidebar.css" rel="stylesheet">

</head>

<body>

	<div id="wrapper">

		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="#" class="tablink"
					onclick="openCity(event, 'Dashboard')">TỔNG QUAN</a></li>
				<li><a href="#menu-toggle1" class="btn btn-secondary"
					id="menu-toggle1">ẨN MENU</a></li>
				<li><a href="#" class="tablink" onclick="openCity(event, 'S1')">Hướng
						dẫn upload java web lên heroku</a></li>

			</ul>
		</div>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">ẨN
					MENU</a> <a href="https://tuanvumustache.com/"
					class="btn btn-secondary">QUAY VỀ TUANVUMUSTACHE.COM</a> <br /> <br />
				<div id="Dashboard" class="city" style="display: block;">
					<h1>TỔNG QUAN</h1>
					<p>Đây sẽ là nơi chưa các bài thực hành, hướng dẫn, và các
						project của bản thân trong tương lai.</p>
					<p>Các bạn có thể ghé qua github của mình để download về nhé.</p>
				</div>

				<div id="S1" class="city" style="display: none">
					<h1>Hướng dẫn upload java web lên heroku</h1>
					<p>
						<code></code>

					</p>
				</div>
			</div>
		</div>
		<!-- /#page-content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- Bootstrap core JavaScript -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Menu Toggle Script -->
	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
	</script>
	<script>
		$("#menu-toggle1").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
	</script>

	<script>
		function openCity(evt, cityName) {
			var i, x, tablinks;
			x = document.getElementsByClassName("city");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablink");
			for (i = 0; i < x.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" w3-red", "");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.className += " w3-red";
		}
	</script>

</body>

</html>


