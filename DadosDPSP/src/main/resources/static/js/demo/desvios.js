// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// Lojas
var ctx = document.getElementById("lojas");
var grupoDPSP = document.getElementById("desvioDPSP").value;
var sdIBM = document.getElementById("desvioSD").value;
var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: ["Grupo DPSP", "SD IBM"],
    datasets: [{
      data: [grupoDPSP, sdIBM],
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
var proativo = document.getElementById("proativo").value;
var reativo = document.getElementById("reativo").value;
var dpsp = document.getElementById("dpsp").value;

var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: ["Proativo", "Reativo", "DPSP"],
    datasets: [{
      data: [proativo, reativo, dpsp],
      backgroundColor: ['#87CEFA', '#ADD8E6', '#00BFFF'],
      hoverBackgroundColor: ['#F8F8FF', '#F8F8FF', '#F8F8FF'],
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
var problemProat = document.getElementById("problemProat").value;
var parado = document.getElementById("parado").value;
var categoria = document.getElementById("categoria").value;
var notificacao = document.getElementById("notificacao").value;
var script = document.getElementById("script").value;

var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: ["[PROATIVO] - Problem Determination", "[PROATIVO] - Chamado parado sem justificativa", "[PROATIVO] - Categoria incorreta / nao alterada", "[PROATIVO] - Notificacao de chamado", "[PROATIVO] - Script/Descricao"],
    datasets: [{
      data: [problemProat, parado, categoria, notificacao, script],
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

//Desvios Reativos
var ctx = document.getElementById("reativos");
var problemReat = document.getElementById("problemReat").value;
var positivacao = document.getElementById("positivacao").value;
var descricao = document.getElementById("descricao").value;
var direcionamento = document.getElementById("direcionamento").value;

var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: ["[REATIVO] - Problem Determination", "[REATIVO] - Falta de Positivação dos Dados", "[REATIVO] - Descrição Incompleta ou Errada", "[REATIVO] - Direcionamento Indevido"],
    datasets: [{
      data: [problemReat, positivacao, descricao, direcionamento],
      backgroundColor: ['#8B0000', '#B22222', '#FF6347'],
      hoverBackgroundColor: ['#F8F8FF', '#F8F8FF', '#F8F8FF'],
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
var ctx = document.getElementById("Desvios_DPSP");
var indevido = document.getElementById("indevido").value;
var justificativa = document.getElementById("justificativa").value;
var informacao = document.getElementById("informacao").value;

var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: ["[DPSP] - Chamado devolvido indevidamente", "[DPSP] - Chamado devolvido sem justificativa em log", "[DPSP] - Solicitado informações que já constam no chamado"],
    datasets: [{
      data: [indevido, justificativa, informacao],
      backgroundColor: ['#87CEFA', '#ADD8E6', '#00BFFF'],
      hoverBackgroundColor: ['#F8F8FF', '#F8F8FF', '#F8F8FF'],
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

