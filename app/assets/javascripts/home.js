// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$( document ).ready(function() {
  var chartElement = document.getElementById("profitEvolutionChart");
  var profitEvolutionChart = new Chart(chartElement, {
    type: 'line',
    data: {
      labels: [],
      datasets: [{
        data: [],
        lineTension: 0,
        backgroundColor: 'transparent',
        borderColor: '#007bff',
        borderWidth: 4,
        pointBackgroundColor: '#007bff'
      }]
    },
    options: {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: false
          }
        }]
      },
      legend: {
        display: false,
      }
    }
  });

  function updateChart (data) {
    profitEvolutionChart.data.labels = data.labels;
    profitEvolutionChart.data.datasets[0].data = data.data;
    profitEvolutionChart.update();
  }
  
  function fetchNewData () {
    $.get("/profit_evolution", function (data) {
      updateChart(data)
    })
  }

  fetchNewData();

  setInterval(fetchNewData, 1000 * 60 * 5);
});
