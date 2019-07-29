//Submit data when enter key is pressed

jQuery('#vdLoja').keypress(function(event){

	var keycode = (event.keyCode ? event.keyCode : event.which);
	if(keycode == '13'){
		teste2();
	}

});

$(document).ready(function(){
    $(document).ajaxStart(function(){
      $("#wait").css("display", "block");
    });
    $(document).ajaxComplete(function(){
      $("#wait").css("display", "none");
    });
    $("button").click(function(){
      $("#txt").load("demo_ajax_load.asp");
    });
  });

function teste2(){
    var vdLoja = $('#vdLoja').val();
    $.ajax({
        method: "POST",
        url: "./api/visitors",
        contentType: "application/json",
        data: JSON.stringify({_id: vdLoja })
    }).done(function(data) {
    if(data == "Loja não cadastrada"){   
        document.getElementById("bandeira").value = " ";
        document.getElementById("vdLoja").value = " ";
        document.getElementById("fieldLocal").value = " ";
        document.getElementById("fieldMultifuncional").value = " ";
        document.getElementById("loja").value = " ";
        document.getElementById("endereco").value = " ";
        document.getElementById("nomeGGL").value = " ";  
        document.getElementById("emailLoja").value = " ";
        document.getElementById("telefone1").value = " ";
        document.getElementById("telefone2").value = " ";
        document.getElementById("cnpj").value = " ";
        document.getElementById("inscEstadual").value = " ";
        document.getElementById("segASex").value = " ";
        document.getElementById("sab").value = " ";
        document.getElementById("dom").value = " ";
        document.getElementById("obs").value = " ";
        document.getElementById("inauguracao").value = " ";
        document.getElementById("telefoneGGL").value = " ";
        document.getElementById("emailGGL").value = " ";
        document.getElementById("ipGerencia").value = " ";
        document.getElementById("ipBalcao").value = " ";
        document.getElementById("ipCaixa").value = " ";
        document.getElementById("ipImpressoraCupom").value = " ";
        document.getElementById("ipLink").value = " ";
        document.getElementById("ipRoteador").value = " ";
        document.getElementById("ipTiraTeima").value = " ";
        document.getElementById("ipVoip").value = " ";
        //document.getElementById("alerta").style.display = "block"; -- Aparecer alert na tela (aguardando correção de validação do java)
        alert("Loja não cadastrada"); 
        location.reload();
    }else{
        var obj = JSON.parse(data);
        
        var endCompleto = obj[5] + "-" + obj[6] + "-" + obj[7] + "-" + obj[8] + "-" + obj[9];

        document.getElementById("bandeira").value = obj[0];
        document.getElementById("vdLoja").value = obj[1];
        document.getElementById("fieldLocal").value = obj[2];
        document.getElementById("fieldMultifuncional").value = obj[3];
        document.getElementById("loja").value = obj[4];
        document.getElementById("endereco").value = endCompleto;
        document.getElementById("nomeGGL").value = obj[10];  
        document.getElementById("emailLoja").value = obj[11];
        document.getElementById("telefone1").value = obj[12];
        document.getElementById("telefone2").value = obj[13];
        document.getElementById("cnpj").value = obj[14];
        document.getElementById("inscEstadual").value = obj[15];
        document.getElementById("segASex").value = obj[16];
        document.getElementById("sab").value = obj[17];
        document.getElementById("dom").value = obj[18];
        document.getElementById("obs").value = obj[19];
        document.getElementById("inauguracao").value = obj[20];
        document.getElementById("telefoneGGL").value = obj[21];
        document.getElementById("emailGGL").value = obj[22];
        calculaIP();
        console.log(obj);
    }
});
}



function calculaIP(){
    var vdLoja = document.getElementById("vdLoja").value;
    var bandeira = document.getElementById("bandeira").value;

    if(bandeira == "DSP"){
        if(vdLoja <= 249){
            document.getElementById("ipGerencia").value = "10."+"0."+vdLoja+".100";
            document.getElementById("ipBalcao").value = "Entre 10.0."+vdLoja+".101" + " " + "até" + " " + "10.0."+vdLoja+".109";
            document.getElementById("ipCaixa").value = "Entre 10.0."+vdLoja+".50" + " " + "até" + " " + "10.0."+vdLoja+".59";
            document.getElementById("ipImpressoraCupom").value = "10.0."+vdLoja+".118";
            document.getElementById("ipLink").value = "10.0."+vdLoja+".125";
            document.getElementById("ipRoteador").value = "10.0."+vdLoja+".254";
            document.getElementById("ipTiraTeima").value = "10.0."+vdLoja+".110";
            document.getElementById("ipVoip").value = "10.0."+vdLoja+".99";
        }else if(vdLoja >= 250 && vdLoja <=999){
            var a = vdLoja/100 | 0;
            var b = vdLoja/10%10 | 0 ;
            var c = vdLoja%10 | 0 ;
            document.getElementById("ipGerencia").value = "10."+a+b+"."+c+".100";
            document.getElementById("ipBalcao").value = "Entre 10."+a+b+"."+c+".101" + " " + "até" + " " + "10."+a+b+"."+c+".109";
            document.getElementById("ipCaixa").value = "Entre 10."+a+b+"."+c+".50" + " " + "até" + " " + "10."+a+b+"."+c+".59";
            document.getElementById("ipImpressoraCupom").value = "10."+a+b+"."+c+".118";
            document.getElementById("ipLink").value = "10."+a+b+"."+c+".125";
            document.getElementById("ipRoteador").value = "10."+a+b+"."+c+".254";
            document.getElementById("ipTiraTeima").value = "10."+a+b+"."+c+".110";
            document.getElementById("ipVoip").value = "10."+a+b+"."+c+".99";
        }else if(vdLoja >=2000 && vdLoja < 2100){
            a=vdLoja/1000 | 0;
            b=vdLoja/10%10 | 0;
            c=vdLoja%10 | 0;
            if(b == 0){
                document.getElementById("ipGerencia").value = "10."+a+"."+c+".100";
                document.getElementById("ipBalcao").value = "Entre 10."+a+"."+c+".101" + " " + "até" + " " + "10."+a+"."+c+".109";
                document.getElementById("ipCaixa").value = "Entre 10."+a+"."+c+".50" + " " + "até" + " " + "10."+a+"."+c+".59";
                document.getElementById("ipImpressoraCupom").value = "10."+a+"."+c+".118";
                document.getElementById("ipLink").value = "10."+a+"."+c+".125";
                document.getElementById("ipRoteador").value = "10."+a+"."+c+".254";
                document.getElementById("ipTiraTeima").value = "10."+a+"."+c+".110";
                document.getElementById("ipVoip").value = "10."+a+"."+c+".99";
            }else{
                document.getElementById("ipGerencia").value = "10."+a+"."+b+c+".100";
                document.getElementById("ipBalcao").value = "Entre 10."+a+"."+b+c+".101" + " " + "até" + " " + "10."+a+"."+b+c+".109";
                document.getElementById("ipCaixa").value = "Entre 10."+a+"."+b+c+".50" + " " + "até" + " " + "10."+a+"."+b+c+".59";
                document.getElementById("ipImpressoraCupom").value = "10."+a+"."+b+c+".118";
                document.getElementById("ipLink").value = "10."+a+"."+b+c+".125";
                document.getElementById("ipRoteador").value = "10."+a+"."+b+c+".254";
                document.getElementById("ipTiraTeima").value = "10."+a+"."+b+c+".110";
                document.getElementById("ipVoip").value = "10."+a+"."+b+c+".99";
            }
        }else if(vdLoja >= 2100 && vdLoja < 3000){
            a=vdLoja/1000 | 0;
            b=vdLoja/100%10 | 0;
            c=vdLoja/10%10 | 0;
            d=vdLoja%10 | 0;
            document.getElementById("ipGerencia").value = "10."+a+"."+b+c+d+".100";
            document.getElementById("ipBalcao").value = "Entre 10."+a+"."+b+c+d+".101" + " " + "até" + " " + "10."+a+"."+b+c+d+".109";
            document.getElementById("ipCaixa").value = "Entre 10."+a+"."+b+c+d+".50" + " " + "até" + " " + "10."+a+"."+b+c+d+".59";
            document.getElementById("ipImpressoraCupom").value = "10."+a+"."+b+c+d+".118";
            document.getElementById("ipLink").value = "10."+a+"."+b+c+d+".125";
            document.getElementById("ipRoteador").value = "10."+a+"."+b+c+d+".254";
            document.getElementById("ipTiraTeima").value = "10."+a+"."+b+c+d+".110";
            document.getElementById("ipVoip").value = "10."+a+"."+b+c+d+".99";
        }
    }else{
        if(vdLoja <= 1200){
            vdLoja = vdLoja - 1000;
            document.getElementById("ipGerencia").value = "10.226."+vdLoja+".1";
            document.getElementById("ipBalcao").value = "Entre 10.226."+vdLoja+".50" + " " + "até" + " " + "10.226."+vdLoja+".59";
            document.getElementById("ipCaixa").value = "Entre 10.226."+vdLoja+".2" + " " + "até" + " " + "10.226."+vdLoja+".9";
            document.getElementById("ipImpressoraCupom").value = "10.226."+vdLoja+".118";
            document.getElementById("ipLink").value = "10.226."+vdLoja+".125";
            document.getElementById("ipRoteador").value = "N/A"
            document.getElementById("ipTiraTeima").value = "10.226."+vdLoja+".140" + " " + "ou" + " " + "10.226."+vdLoja+".141";
            document.getElementById("ipVoip").value = "10.226."+vdLoja+".70" + " " + "ou" + " " + "10.226."+vdLoja+".71";
        }else if(vdLoja >= 1201 && vdLoja <= 1399){
            vdLoja = vdLoja - 1200;
            document.getElementById("ipGerencia").value = "10.228."+vdLoja+".1";
            document.getElementById("ipBalcao").value = "Entre 10.228."+vdLoja+".50" + " " + "até" + " " + "10.228."+vdLoja+".59";
            document.getElementById("ipCaixa").value = "Entre 10.229."+vdLoja+".2" + " " + "até" + " " + "10.228."+vdLoja+".9";
            document.getElementById("ipImpressoraCupom").value = "10.228."+vdLoja+".118";
            document.getElementById("ipLink").value = "10.228."+vdLoja+".125";
            document.getElementById("ipRoteador").value = "N/A"
            document.getElementById("ipTiraTeima").value = "10.228."+vdLoja+".140" + " " + "ou" + " " + "10.228."+vdLoja+".141";
            document.getElementById("ipVoip").value = "10.228."+vdLoja+".70" + " " + "ou" + " " + "10.228."+vdLoja+".71";
        }else if(vdLoja > 1400 && vdLoja < 1651){
            vdLoja = vdLoja - 1400;
            document.getElementById("ipGerencia").value = "10.229."+vdLoja+".1";
            document.getElementById("ipBalcao").value = "Entre 10.229."+vdLoja+".50" + " " + "até" + " " + "10.229."+vdLoja+".59";
            document.getElementById("ipCaixa").value = "Entre 10.229."+vdLoja+".2" + " " + "até" + " " + "10.229."+vdLoja+".9";
            document.getElementById("ipImpressoraCupom").value = "10.229."+vdLoja+".118";
            document.getElementById("ipLink").value = "10.229."+vdLoja+".125";
            document.getElementById("ipRoteador").value = "N/A"
            document.getElementById("ipTiraTeima").value = "10.229."+vdLoja+".140" + " " + "ou" + " " + "10.229."+vdLoja+".141";
            document.getElementById("ipVoip").value = "10.229."+vdLoja+".70" + " " + "ou" + " " + "10.229."+vdLoja+".71";
        }
    }
}