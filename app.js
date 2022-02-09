$(function() {
    $.ajax({
      url: "http://localhost/test_db/chart_data.php",
      type: "GET",
      success: function(data) {
        chartData = data;
        var chartProperties = {
          caption: " LITUP COUNT",
          xAxisName: "date",
          yAxisName: "package",
          rotatevalues: "1",
          theme: "zune"
        };
        apiChart = new FusionCharts({
          type: "column2d",
          renderAt: "chart-container",
          width: "550",
          height: "350",
          dataFormat: "json",
          dataSource: {
            chart: chartProperties,
            data: chartData
          }
        });
        apiChart.render();
      }
    });
  });

  $.ajax({
    url: "http://localhost/phpmyadmin/index.php?route=/sql&server=1&db=test_db&table=lit_up_data&pos=0",
    type: "GET",
    success: function(data) {
      chartData = data;
    }
  });
  
  
  
  var chartProperties = {
          "caption": " Package Litup Data Sheet in the URL ",
          "xAxisName": "date",
          "yAxisName": "package",
          "rotatevalues": "1",
          "theme": "zune"
        };
        apiChart = new FusionCharts({
          type: 'column2d',
          renderAt: 'chart-container',
          width: '550',
          height: '350',
          dataFormat: 'json',
          dataSource: {
            "chart": chartProperties,
            "data": chartData
          }
        });
        apiChart.render();
  }