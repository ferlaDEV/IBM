// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// Lojas
var ctx = document.getElementById("lojas");
var dsp = document.getElementById("lojasDSP").value;
var dp = document.getElementById("lojasDP").value;
var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: ["DSP", "DP"],
    datasets: [{
      data: [dsp, dp],
      backgroundColor: ['#87CEFA', '#8B0000'],
      hoverBackgroundColor: ['#F8F8FF', '#F8F8FF'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: true
    },
    cutoutPercentage: 80,
  },
});

//Lojas DSP
var ctx = document.getElementById("dsp");
var sp = document.getElementById("sp").value;
var al = document.getElementById("al").value;
var ba = document.getElementById("ba").value;
var df = document.getElementById("df").value;
var go = document.getElementById("go").value;
var mgsp = document.getElementById("mgsp").value;
var pe = document.getElementById("pe").value;
var rjsp = document.getElementById("rjsp").value;
var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: ["SP", "AL", "BA", "DF", "GO", "MG", "PE", "RJ"],
    datasets: [{
      data: [sp, al, ba, df, go, mgsp, pe, rjsp],
      backgroundColor: ['#87CEFA', '#ADD8E6', '#00BFFF', '#1E90FF', '#4169E1', '#6495ED', '#4682B4', '#B0C4DE'],
      hoverBackgroundColor: ['#F8F8FF', '#F8F8FF', '#F8F8FF', '#F8F8FF', '#F8F8FF', '#F8F8FF', '#F8F8FF', '#F8F8FF'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: true
    },
    cutoutPercentage: 80,
  },
});

//Lojas DP
var ctx = document.getElementById("dp");
var rj = document.getElementById("rj").value;
var es = document.getElementById("es").value;
var mgrj = document.getElementById("mgrj").value;
var pr = document.getElementById("pr").value;

var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: ["RJ", "ES", "MG", "PE"],
    datasets: [{
      data: [rj, es, mgrj, pe],
      backgroundColor: ['#8B0000', '#B22222', '#FF6347', '#FA8072'],
      hoverBackgroundColor: ['#F8F8FF', '#F8F8FF', '#F8F8FF', '#F8F8FF'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: true
    },
    cutoutPercentage: 80,
  },
});

