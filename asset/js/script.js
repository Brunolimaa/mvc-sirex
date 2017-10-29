$("#salvar3").click(function(){
    //alert(1);
    var ext = $("#atExtensao").val();
    var mod = $("#modalidadeExt").val();
    var tem = $("#areaTematica").val();
    var und = $("#unidade").val();
    var set = $("#cursoSetor").val();

    var nome = $("#cordeNome").val();
    var email = $("#cordeEmail").val();
    var fone = $("#cordeFone").val();
    var coord =  $("#seleCoordenador option:selected").val();
    var rt = $("#regimeTrabalho").val();

    var jus = $("#jusAtividade").val();
    var obj = $("#objAtividade").val();
    var disc = $("#discriminar").val();

    var local = $("#local").val();
    var inicio = $("#inicio").val();
    var termino = $("#termino").val();
    var duracao = $("#duracao").val();
    var docente = $("#docente").val();
    var discente = $("#discente").val();
    var func = $("#funcionario").val();
    var doce = $("#docente").val();


    $.ajax({
       url:'http://localhost/mvc-sirex/ajax/cadastro',
       type:'POST',
        data:{
            extensao:ext,
            modalidade:mod,
            tematica:tem,
            unidade:und,
            curso:set,
            cordeNome:nome,
            email:email,
            fone:fone,
            coord:coord,
            regime:rt,
            jus:jus,
            obj:obj,
            disc:disc,
            local:local,
            inicio:inicio,
            termino:termino,
            duracao:duracao,
            docente:docente,
            discente:discente,
            func:func,
            doce:doce,
        },
        success:function(r){
            $(".swal-button--confirm").click(function(){
                location.href="http://localhost/mvc-sirex/painel/acompanhar";
            });
        }

    });


});

$("#cadastroAtividade").click(function(){
    var sele = $("#seleAtividadeExt").val();
    var nome = $("#nomeAtividadeExt").val();
    var func = $("#funcaoAtividadeExt").val();
    var setor = $("#setorAtividadeExt").val();
    var horario = $("#horarioAtividadeExt").val();

    $.ajax({
        url:'http://localhost/mvc-sirex/ajax/cadastroAtividade',
        type:'POST',
        data:{sele:sele,nome:nome,func:func,setor:setor,horario:horario},
        success:function(r){
            swal("Bom trabalho!", "Adicionado com sucesso!", "success");
            $('.swal-button--confirm').click(function() {
                lista();
                //location.href = "http://localhost/mvc-sirex/acompanhar";
            });

        }
    });
});



/*
$("#salvar2").click(function(){
    var jus = $("#jusAtividade").val();
    var obj = $("#objAtividade").val();
    var disc = $("#discriminar").val();
    //alert(2);
    $.ajax({
        url:'http://localhost/mvc-sirex/ajax/cadastroTable2',
        type:'POST',
        data:{
            jus:jus,
            obj:obj,
            disc:disc,
        },
        success:function(r){
            alert(" Segundo form "+r);
        }

    });
});

$("#salvar3").click(function(){
    //alert(3);
    var local = $("#local").val();
    var inicio = $("#inicio").val();
    var termino = $("#termino").val();
    var duracao = $("#duracao").val();
    var docente = $("#docente").val();
    var discente = $("#discente").val();
    var func = $("#funcionario").val();
    var doce = $("#docente").val();

    $.ajax({
        url:'http://localhost/mvc-sirex/ajax/cadastroTable3',
        type:'POST',
        data:{
            local:local,
            inicio:inicio,
            termino:termino,
            duracao:duracao,
            docente:docente,
            discente:discente,
            func:func,
            doce:doce,
        },
        success:function(r){
            alert(" tercei form "+r);
        }

    });


});*/

$("#inscrever").click(function(){
    var nome = $("#nome").val();
    var cpf = $("#cpf").val();
    var setor = $("#setor").val();
    var telefone = $("#fone").val();
    var email = $("#email").val();

    $.ajax({
        url:'http://localhost/mvc-sirex/cadastro/registro',
        type:'POST',
        data:{nome:nome, cpf:cpf, setor:setor, telefone:telefone, email:email },
        success:function(r){
            swal("Bom trabalho!", "Cadastro realizado com sucesso!", "success");
            $(".swal-button--confirm").click(function(){
                location.href="http://localhost/mvc-sirex/";
            });
        }
    });
});