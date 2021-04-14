<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    google.charts.load('current', {packages: ['corechart', 'bar']});
    google.charts.setOnLoadCallback(drawBasic);

    function drawBasic() {

          var data = google.visualization.arrayToDataTable([
            ['sell', '수익',],
            ['아우터', 8175000],
            ['상의', 3792000],
            ['하의', 2695000],
            ['신발', 2099000],
            ['악세사리', 1526000]
          ]);

          var options = {
            title: '총 매출 현황',
            fontSize : 14,
            width: 720,
            height : 400,
            chartArea: {width: '77%', height : '300'},
            hAxis: {
              minValue: 0
            },
            vAxis: {

            }
          };

          var chart = new google.visualization.BarChart(document.getElementById('chart_div6'));

          chart.draw(data, options);
        }
    </script>
</head>
<body>
	<div id="chart_div6" style="height: 400px;"></div>
</body>
</html>