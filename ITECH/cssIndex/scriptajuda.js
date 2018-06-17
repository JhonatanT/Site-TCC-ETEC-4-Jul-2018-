$(document).ready(function(){
    $("#btnClick").click(function(){
        $("#dvConteudo").slideToggle("fast");
        if($("#btnClick").html() == "+"){
            $("#btnClick").text("-");
        }else{
            $("#btnClick").text("+");
        }
    });
    });


