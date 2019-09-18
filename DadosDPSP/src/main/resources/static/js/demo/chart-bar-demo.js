// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

function number_format(number, decimals, dec_point, thousands_sep) {
  // *     example: number_format(1234.56, 2, ',', ' ');
  // *     return: '1 234,56'
  number = (number + '').replace(',', '').replace(' ', '');
  var n = !isFinite(+number) ? 0 : +number,
    prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
    sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
    dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
    s = '',
    toFixedFix = function(n, prec) {
      var k = Math.pow(10, prec);
      return '' + Math.round(n * k) / k;
    };
  // Fix for IE parseFloat(0.55).toFixed(0) = 0;
  s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
  if (s[0].length > 3) {
    s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
  }
  if ((s[1] || '').length < prec) {
    s[1] = s[1] || '';
    s[1] += new Array(prec - s[1].length + 1).join('0');
  }
  return s.join(dec);
}

// Bar Chart Example
var ctx = document.getElementById("myBarChart");
var andrespx = document.getElementById("andrespx").value;
var buenoga = document.getElementById("buenoga").value;
var eduaopa = document.getElementById("eduaopa").value;
var enasilva = document.getElementById("enasilva").value;
var felneves = document.getElementById("felneves").value;
var felsan = document.getElementById("felsan").value;
var ferlapx = document.getElementById("ferlapx").value;
var gabaf = document.getElementById("gabaf").value;
var gsoli = document.getElementById("gsoli").value;
var guhfs = document.getElementById("guhfs").value;
var jquei = document.getElementById("jquei").value;
var juancda = document.getElementById("juancda").value;
var leiper = document.getElementById("leiper").value;
var ligiar = document.getElementById("ligiar").value;
var lilianfp = document.getElementById("lilianfp").value;
var malonenc = document.getElementById("malonenc").value;
var marcoabj = document.getElementById("marcoabj").value;
var mariaels = document.getElementById("mariaels").value;
var mayss = document.getElementById("mayss").value;
var mfdiaspx = document.getElementById("mfdiaspx").value;
var munizn = document.getElementById("munizn").value;
var murisil = document.getElementById("murisil").value;
var ofaria = document.getElementById("ofaria").value;
var oliversi = document.getElementById("oliversi").value;
var petma = document.getElementById("petma").value;
var phperepx = document.getElementById("phperepx").value;
var pjordaot = document.getElementById("pjordaot").value;
var rafaelos = document.getElementById("rafaelos").value;
var rafsanco = document.getElementById("rafsanco").value;
var rodolfob = document.getElementById("rodolfob").value;
var rrslima = document.getElementById("rrslima").value;
var ssabrina = document.getElementById("ssabrina").value;
var tdom = document.getElementById("tdom").value;
var vilanopx = document.getElementById("vilanopx").value;
var wellinlo = document.getElementById("wellinlo").value;
var myBarChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["Andres", "Buenoga", "Eduaopa", "Enasilva", "Felneves", "Felsan", "Ferlapx", "Gabaf",
    	"Gsoli", "Guhfs", "Jquei", "Juancda", "Leiper", "Ligiar", "Lilianfp", "malonenc", "Marcoabj",
    	"Mariaels", "Mayss", "Mfdiaspx", "Munizn", "Murisil", "Ofaria", "Oliversi", "Petma", "Phperepx",
    	"Pjordaot", "Rafsanco", "Rodolfob", "Rrslima", "Ssabrina", "Tdom", "Vilanopx", "Wellinlo"],
    datasets: [{
    	label: "Desvios",
      backgroundColor: "#4e73df",
      hoverBackgroundColor: "#2e59d9",
      borderColor: "#4e73df",
      data: [andrespx, buenoga, eduaopa, enasilva, felneves, felsan, ferlapx, gabaf,
    	gsoli, guhfs, jquei, juancda, leiper, ligiar, lilianfp, malonenc, marcoabj,
    	mariaels, mayss, mfdiaspx, munizn, murisil, ofaria, oliversi, petma, phperepx,
    	pjordaot, rafsanco, rodolfob, rrslima, ssabrina, tdom, vilanopx, wellinlo],
    }],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 5,
        top: 5,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'month'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        ticks: {
          maxTicksLimit: 40
        },
        maxBarThickness: 25,
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 8,
          maxTicksLimit: 10,
          padding: 10,
          // Include a dollar sign in the ticks
          callback: function(value, index, values) {
            return number_format(value);
          }
        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          borderDash: [2],
          zeroLineBorderDash: [2]
        }
      }],
    },
    legend: {
    	display: false
    },
    tooltips: {
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 12,
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 10,
      yPadding: 10,
      displayColors: false,
      caretPadding: 10,
      callbacks: {
        label: function(tooltipItem, chart) {
          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
          return datasetLabel + ': ' + number_format(tooltipItem.yLabel);
        }
      },
    },
  }
});
