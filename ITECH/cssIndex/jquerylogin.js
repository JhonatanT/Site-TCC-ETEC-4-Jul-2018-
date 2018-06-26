$(document).ready(function(){
    $(".btnCadastro").click(function(){
        $(".principal").animate({left:"22.5%"},400); 
        $(".principal").animate({left:"30%"},500); 
        $(".login").css("visibility","hidden");
        $(".login").animate({left:"25%"},400);
        
        $(".Cadastro").animate({left:"17%"},400);
        $(".Cadastro").animate({left:"30%"},500);
        $(".Cadastro").css("visibility","visible");
    }); 
    
    $(".btnLogin").click(function(){
        $(".principal").animate({left:"77.5%"},400); 
        $(".principal").animate({left:"70%"},500);
        $(".Cadastro").css("visibility","hidden");
        $(".Cadastro").animate({left:"75%"},400);
        
        $(".login").animate({left:"83.5%"},400);
        $(".login").animate({left:"70%"},500);
        $(".login").css("visibility","visible");
    });
});








