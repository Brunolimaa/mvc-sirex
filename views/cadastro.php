<div class="container">

    <form class="form-signin" method="POST" action="">
        <div class="panel periodic-login">
            <div class="panel-body text-center">
                <h4 class="atomic-symbol titleLogin">SireX</h4>
                <p class="element-name">Cadastro</p>
                <div class="form-group form-animate-text" style="margin-top:40px !important;">
                    <input type="text" class="form-text" name="nome" id="nome" required>
                    <span class="bar"></span>
                    <label>Nome Completo</label>
                </div>
                <div class="form-group form-animate-text" style="margin-top:40px !important;">
                    <input type="text" class="form-text mask-cpf" name="cpf" id="cpf" maxlength="14" required>
                    <span class="bar"></span>
                    <label>CPF</label>
                </div>
                <div class="form-group form-animate-text" style="margin-top:40px !important;">
                    <!--<input type="text" class="form-text" name="setor" required>-->
                    <span class="bar"></span>
                    <!--<label>Setor</label>-->
                    <select name="setor" id="setor" class="form-control selecFormPersonal">
                        <option default>Situacao</option>
                        <option value="1">Docente</option>
                        <option value="2">Externo</option>
                        <option value="3">Aluno de Graduação Bolsista</option>
                        <option value="4">Aluno de Graduação não Bolsista</option>
                        <option value="5">Aluno de Pós-Graduação</option>
                        <option value="6">Outro</option>
                    </select>
                </div>
                <div class="form-group form-animate-text" style="margin-top:40px !important;">
                    <input type="text" class="form-text mask-phone_with_ddd" name="telefone" id="fone" maxlength="13" required>
                    <span class="bar"></span>
                    <label>Telefone ex.: 00-00000-0000</label>
                </div>
                <div class="form-group form-animate-text" style="margin-top:40px !important;">
                    <input type="email" class="form-text mail" name="email" id="email" required>
                    <span class="bar"></span>
                    <label>E-mail</label>
                </div>
                <label class="pull-left">
                    <input type="checkbox" class="icheck pull-left" name="checkbox1"/> &nbsp Aceita os termos e a política
                </label>
                <button type="button" class="btn col-md-12 btn-success" id="inscrever" name="inscrever">Inscrever-se</button>
            </div>
            <div class="text-center" style="padding:5px;">
                <a href="home">já tem uma conta?</a>
            </div>
        </div>
    </form>

</div>
