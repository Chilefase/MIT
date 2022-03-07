
//  dataset is a two dimensional array 
//  the inner format is [job, salary, style]
//  the first position is used for  
//  for column names and point labels
// -------------------------------------
var dataset = [['job', 'salary', { role: 'annotation' }]];


//  build dataset
// -------------------------------------
function generateDataset(points){
  var datapoint = [];
  var index = 1;
  var length = points.length;
  for (var i=0; i<length; i++){
      var p = points[i];
      var prettySalary = numberWithCommas(Math.floor(p.salary));
      var point = [p.job, Math.floor(p.salary), prettySalary];
      dataset[index] = point;
      index++;
  }
  return dataset;
}

function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
//  draw graph
// -------------------------------------
google.load("visualization", "1", {packages:["corechart"]});

function drawChart(dataset) {

  var data = google.visualization.arrayToDataTable(dataset);  

  var options = {
    title: 'Is it good to be a government employee?',
    subtitle: 'exploration of government salaries',
    'chartArea': {'width': '50%', 'height': '95%'}
  };

  var target = document.getElementById('chart_div');
  var chart = new google.visualization.BarChart(target);
  chart.draw(data, options);
}
