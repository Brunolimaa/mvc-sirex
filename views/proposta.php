<div class="container">
    <div class="row">
        <section>
            <div class="wizard">
                <div class="wizard-inner">
                    <div class="connecting-line"></div>
                    <ul class="nav nav-tabs" role="tablist">

                        <li role="presentation" class="active">
                            <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1">
                                      <span class="round-tab">
                                          <i>1</i>
                                      </span>
                            </a>
                        </li>

                        <li role="presentation" class="disabled">
                            <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">
                                      <span class="round-tab">
                                           <i>2</i>
                                      </span>
                            </a>
                        </li>
                        <li role="presentation" class="disabled">
                            <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" title="Step 3">
                                      <span class="round-tab">
                                           <i>3</i>
                                      </span>
                            </a>
                        </li>
                        <!--<li role="presentation" class="disabled">
                            <a href="#step4" data-toggle="tab" aria-controls="step4" role="tab" title="Step 4">
                          <span class="round-tab">
                               <i>4</i>
                          </span>
                            </a>
                        </li>
                        <li role="presentation" class="disabled">
                            <a href="#step5" data-toggle="tab" aria-controls="step5" role="tab" title="Step 5">
                          <span class="round-tab">
                               <i>5</i>
                          </span>
                            </a>
                        </li -->

                        <!--<li role="presentation" class="disabled">
                            <a href="#complete" data-toggle="tab" aria-controls="complete" role="tab" title="Complete">
                          <span class="round-tab">
                              <i class="glyphicon glyphicon-ok"></i>
                          </span>
                            </a>
                        </li>-->
                    </ul>
                </div>

                <form role="form">
                    <div class="tab-content">
                        <div class="tab-pane active" role="tabpanel" id="step1">
                            <!--FOMULARIO ETAPA 1-->

                            <div class="col-md-12">
                                <p class="titulo" style="margin: 0 17px;">IDENTIFICAÇÃO DA ATIVIDADE <span class="icon-layers iconeLista"></span></p>
                                <div class="col-md-10">
                                    <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                        <input type="text" class="form-text" name="atExtensao" id="atExtensao" required>
                                        <span class="bar barPersonal"></span>
                                        <label>Título da Atividade de Extensão</label>
                                    </div>
                                </div>
                                <div class="col-md-3 seleAtividade">
                                    <div class="form-group form-animate-text" style="margin-top:40px !important;">
                                        Modalidade de Extensão
                                        <select class="form-control selecFormPersonal" id="modalidadeExt">
                                            <option default>selecione</option>
                                            <option>Programa</option>
                                            <option>Prestação de Serviços</option>
                                            <option>Projeto</option>
                                            <option>Curso</option>
                                            <option>Produção Técnico-bibiográfica</option>
                                            <option>Evento</option>
                                            <option>Outro</option>
                                        </select>
                                        <span class="bar barPersonal"></span>
                                    </div>
                                </div>
                                <div class="col-md-3 seleAtividade">
                                    <div class="form-group form-animate-text" style="margin-top:40px !important;">
                                        Área Temática:
                                        <select class="form-control selecFormPersonal" id="areaTematica">
                                            <option default>selecione</option>
                                            <option>Programa</option>
                                            <option>Prestação de Serviços</option>
                                            <option>Projeto</option>
                                            <option>Curso</option>
                                            <option>Produção Técnico-bibiográfica</option>
                                            <option>Evento</option>
                                            <option>Outro</option>
                                        </select>
                                        <span class="bar barPersonal"></span>
                                    </div>
                                </div>
                                <div class="col-md-3 seleAtividade">
                                    <div class="form-group form-animate-text" style="margin-top:40px !important;">
                                        Unidade:
                                        <select class="form-control selecFormPersonal" id="unidade">
                                            <option default>selecione</option>
                                            <option>Programa</option>
                                            <option>Prestação de Serviços</option>
                                            <option>Projeto</option>
                                            <option>Curso</option>
                                            <option>Produção Técnico-bibiográfica</option>
                                            <option>Evento</option>
                                            <option>Outro</option>
                                        </select>
                                        <span class="bar barPersonal"></span>
                                    </div>
                                </div>
                                <div class="col-md-10">
                                    <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                        <input type="text" class="form-text" name="cursoSetor" id="cursoSetor" required>
                                        <span class="bar barPersonal"></span>
                                        <label>Curso/Setor</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <p class="titulo">COORDENADOR <span class="icon-user iconeLista"></span></p>
                                    <div class="col-md-4">
                                        <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                            <input type="text" class="form-text" name="cordeNome" id="cordeNome" required>
                                            <span class="bar barPersonal"></span>
                                            <label>Nome</label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                            <input type="text" class="form-text" name="cordeEmail" id="cordeEmail" required>
                                            <span class="bar barPersonal"></span>
                                            <label>E-mail</label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                            <input type="text" class="form-text" name="cordeFone" id="cordeFone" required>
                                            <span class="bar barPersonal"></span>
                                            <label>Telefone</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group form-animate-text" style="margin-top:40px !important;">
                                            Coordenador
                                            <select class="form-control selecFormPersonal" id="seleCoordenador">
                                                <option default>selecione</option>
                                                <option>Docente</option>
                                                <option>Externo</option>
                                                <option>Aluno de Graduação Bolsista</option>
                                                <option>Aluno de Graduação não Bolsista</option>
                                                <option>Aluno de Pós-Graduação</option>
                                                <option>Outro</option>
                                            </select>
                                            <span class="bar"></span>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group form-animate-text" style="margin-top:40px !important;">
                                            Regime de Trabalho: (caso de docente ou funcionário)
                                            <select class="form-control selecFormPersonal" id="regimeTrabalho">
                                                <option default>selecione</option>
                                                <option>Tempo Integral</option>
                                                <option>Tempo Parcial</option>
                                                <option>Horista</option>
                                                <option>Outro</option>
                                            </select>
                                            <span class="bar barPersonal"></span>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-12">
                                    <p class="titulo">ATIVIDADE DE EXTENSÃO<span class="icon-user iconeLista"></span></p>

                                    <ul class="descricao">
                                        <li>Cadastro dos Colaboradores (Clique no botão de [+] se precisar adicionar mais de um colaborador nos grupos abaixo)</li>
                                    </ul>
                                    <div class="col-md-3">
                                        <div class="form-group form-animate-text" style="margin-top:50px !important;">
                                            <select class="form-control selecFormPersonal" id="seleAtividadeExt">
                                                <option default>selecione</option>
                                                <option>Docente</option>
                                                <option>Técnico(s) Administrativo</option>
                                                <option>Colaboradores de Outras Instituições</option>
                                                <option>Colaboradores da Comunidade em Geral</option>
                                            </select>
                                            <span class="bar barPersonal"></span>
                                        </div>
                                    </div>
                                    <!--<div class="col-md-12 titleAtividadeExtensao">Docente(s)</div> -->
                                    <div class="col-md-2">
                                        <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                            <input type="text" class="form-text" name="nomeDocente" id="nomeAtividadeExt" required>
                                            <span class="bar barPersonal"></span>
                                            <label>Nome</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                            <input type="text" class="form-text" name="funcaoDocente" id="funcaoAtividadeExt" required>
                                            <span class="bar barPersonal"></span>
                                            <label>Função</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                            <input type="text" class="form-text" name="setorDocente" id="setorAtividadeExt" required>
                                            <span class="bar barPersonal"></span>
                                            <label>Curso/Setor</label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                            <input type="number" class="form-text" name="cargaDocente" id="horarioAtividadeExt" required>
                                            <span class="bar barPersonal"></span>
                                            <label>Carga Horária</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-animate-text" style="margin-top:40px !important;">
                                        <!--<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModal">+</button>-->

                                        <button type="button" class="btn btn-warning" id="cadastroAtividade">+</button>
                                    </div>
                                    <!-- MODAL ADD MAIS CADASTRO -->
                                    <div class="container">
                                        <!-- Modal -->
                                        <div class="modal fade" id="myModal" role="dialog">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">SIREX - Cadastrar Docente(s)</h4>
                                                    </div>
                                                    <div >
                                                        <div class="col-md-12">
                                                            <div class="col-md-3">
                                                                <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                                                    <input type="text" class="form-text" name="nomeDocente" id="cordeNome" required>
                                                                    <span class="bar barPersonal"></span>
                                                                    <label>Nome</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                                                    <input type="text" class="form-text" name="funcaoDocente" id="cordeNome" required>
                                                                    <span class="bar barPersonal"></span>
                                                                    <label>Função</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                                                    <input type="text" class="form-text" name="setorDocente" id="cordeNome" required>
                                                                    <span class="bar barPersonal"></span>
                                                                    <label>Curso/Setor</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                                                    <input type="number" class="form-text" name="cargaDocente" id="cordeNome" required>
                                                                    <span class="bar barPersonal"></span>
                                                                    <label>Carga Horária</label>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-primary" data-dismiss="modal">salvar</button>
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">X</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-striped jambo_table bulk_action">
                                            <thead>
                                            <tr class="headings">

                                                <th class="column-title">Atividade</th>
                                                <th class="column-title">Nome</th>
                                                <th class="column-title">Funcao</th>
                                                <th class="column-title">Curso/Setor</th>
                                                <th class="column-title">Carga Horaria</th>

                                            </tr>
                                            </thead>

                                            <tbody id="listaAtividade">

                                            </tbody>
                                        </table>
                                    </div>

                                    <!-- fim modal -->
                                </div>
                            </div>


                            <ul class="list-inline pull-right">
                                <li><button type="button" class="btn btn-primary next-step" id="salvar1">Salvar e continuar</button></li>
                            </ul>


                            <!--FIM ETAPA 1-->

                        </div>


                        <div class="tab-pane" role="tabpanel" id="step2">

                            <!--FOMULARIO ETAPA 2-->
                            <div class="col-md-12">
                                <div class="col-md-10">
                                    <p class="titleSubtitulo">JUSTIFICATIVA DA ATIVIDADE DE EXTENSÃO</p>
                                    <ol type="a" class="descricao">
                                        <li>Base teórica que fundamenta a atividade de extensão;</li>
                                        <li>Situação – problema que originou;</li>
                                        <li>Proposição da atividade de extensão;</li>
                                        <li>Delimitação da proposta básica de trabalho e possibilidade de operar mudanças frente à problemática;</li>
                                        <li>Outros dados que julgar relevante (caracterização da comunidade, experiências anteriores, etc.).</li>
                                    </ol>
                                    <div class="form-group">
                                        <label for="comment">Descrição:</label>
                                        <textarea class="form-control" rows="5" id="jusAtividade"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-10">
                                    <hr/>
                                    <p class="titleSubtitulo">OBJETIVOS DA ATIVIDADE DE EXTENSÃO (Gerais e Específicos)</p>
                                    <ol type="a" class="descricao">
                                        <li>Explicitar o que se pretende alcançar com a atividade de extensão. (Objetivo Geral)</li>
                                        <li>Discriminar os objetivos específicos em termos de contribuição esperada para o desenvolvimento.</li>
                                    </ol>
                                    <div class="form-group">
                                        <label for="comment">Descrição:</label>
                                        <textarea class="form-control" rows="5" id="objAtividade"></textarea>
                                    </div>
                                </div>

                                <div class="col-md-10">
                                    <hr/>

                                    <p class="titleSubtitulo">METODOLOGIA DA ATIVIDADE DE EXTENSÃO</p>
                                    <ol type="a" class="descricao">
                                        <li>Discriminar as atividades a serem desenvolvidas, com carga horária e descrever os procedimentos a serem adotados para execução das mesmas.</li>
                                    </ol>
                                    <div class="form-group">
                                        <label for="comment">Descrição:</label>
                                        <textarea class="form-control" rows="5" id="discriminar"></textarea>
                                    </div>
                                </div>

                            </div>
                            <ul class="list-inline pull-right">
                                <li><button type="button" class="btn btn-default prev-step">Voltar</button></li>
                                <li><button type="button" class="btn btn-primary next-step" id="salvar2">Salvar e continuar</button></li>
                            </ul>
                            <!-- FIM ETAPA 2-->

                        </div>
                        <div class="tab-pane" role="tabpanel" id="step3">
                            <div class="col-md-10">
                                <p class="titleSubtitulo">LOCAL E PERÍODO DE REALIZAÇÃO DA ATIVIDADE DE EXTENSÃO</p>
                                <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                    <input type="text" class="form-text" name="atExtensao" id="local" required>
                                    <span class="bar barPersonal"></span>
                                    <label>Local</label>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                    <input type="text" class="form-text" name="inicio" id="inicio" required>
                                    <span class="bar barPersonal"></span>
                                    <label>Início</label>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                    <input type="text" class="form-text" name="termino" id="termino" required>
                                    <span class="bar barPersonal"></span>
                                    <label>Término</label>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                    <input type="text" class="form-text" name="duracao" id="duracao" required>
                                    <span class="bar barPersonal"></span>
                                    <label>Duração (hora/aula)</label>
                                </div>
                            </div>

                            <!-- PÚBLICO A SER ATENDIDO PELA ATIVIDADE DE EXTENSÃO passo 4 -->

                            <div class="col-md-10">
                                <p class="titleSubtitulo">PÚBLICO A SER ATENDIDO PELA ATIVIDADE DE EXTENSÃO</p>
                            </div>
                            <div class="col-md-10">
                                <div class="col-md-4">
                                    <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                        <input type="text" class="form-text" name="docente" id="docente" required>
                                        <span class="bar barPersonal"></span>
                                        <label>Docente</label>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                        <input type="text" class="form-text" name="discente" id="discente" required>
                                        <span class="bar barPersonal"></span>
                                        <label>Discente</label>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                        <input type="text" class="form-text" name="funcionario" id="funcionario" required>
                                        <span class="bar barPersonal"></span>
                                        <label>Funcionários</label>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                        <input type="text" class="form-text" name="discente" id="discente" required>
                                        <span class="bar barPersonal"></span>
                                        <label>Discente</label>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                        <input type="text" class="form-text" name="funcionario" id="funcionario" required>
                                        <span class="bar barPersonal"></span>
                                        <label>Funcionários</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-4">
                                    <div class="form-group form-animate-text formPersonal" style="margin-top:50px;  !important;">
                                        Frequência: <input type="radio" name="frequencia"><strong>Sim</strong> &nbsp&nbsp&nbsp <input type="radio" name="frequencia"><strong>Não</strong>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group form-animate-text formPersonal" style="margin-top:50px; !important;">
                                        Cobrança de Taxa: <input type="radio" name="frequencia"><strong>Sim</strong>&nbsp&nbsp&nbsp <input type="radio" name="frequencia"><strong>Não</strong>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group form-animate-text formPersonal" style="margin-top:50px;  !important;">
                                        Certificação: <input type="radio" name="frequencia"><strong>Sim</strong> &nbsp&nbsp&nbsp <input type="radio" name="frequencia"><strong>Não</strong>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-4">
                                    <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                        <input type="text" class="form-text" name="vlrcobrado" id="vlrcobrado" required>
                                        <span class="bar barPersonal"></span>
                                        <label>Valor a ser cobrado: (em R$)</label>
                                    </div>
                                </div>
                            </div>

                            <!-- fim passo 4 -->
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <p class="titleSubtitulo">CRONOGRAMA DE DESENVOLVIMENTO DAS ATIVIDADES</p>
                                </div>
                                <input type="button" class="btn btn-warning" data-toggle="modal" data-target="#atividade" value="Adicionar atividades +">
                            </div>

                            <!-- MODAL ADD MAIS CADASTRO -->
                            <div class="container">
                                <!-- Modal -->
                                <div class="modal fade" id="atividade" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">CRONOGRAMA DE DESENVOLVIMENTO DAS ATIVIDADES</h4>
                                                <ul class="descricao">
                                                    <li>(Clique no botão de [+] se precisar adicionar mais item de atividade no cronograma)</li>
                                                </ul>
                                            </div>
                                            <div >
                                                <div class="col-md-12">
                                                    <div class="col-md-6">
                                                        <div class="form-group form-animate-text formPersonal" style="margin-top:40px !important;">
                                                            <input type="text" class="form-text" name="nomeDocente" id="cordeNome" required>
                                                            <span class="bar barPersonal"></span>
                                                            <label>Atividade</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group form-animate-text" style="margin-top:50px !important;">
                                                            <select class="form-control selecFormPersonal">
                                                                <option default>selecione mes</option>
                                                                <option>Janeiro</option>
                                                                <option>Fevereiro</option>
                                                                <option>Marco</option>
                                                                <option>Abril</option>
                                                                <option>Maio</option>
                                                                <option>Junho</option>
                                                                <option>Julho</option>
                                                                <option>Agosto</option>
                                                                <option>Setembro</option>
                                                                <option>Outubro</option>
                                                                <option>Novembro</option>
                                                                <option>Dezembro</option>
                                                            </select>
                                                            <span class="bar barPersonal"></span>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="form-group form-animate-text" style="margin-top:50px !important;">
                                                            <input type="button" value="+" class"btn btn-warning">
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-primary" data-dismiss="modal">salvar</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">X</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- fim modal -->

                            <ul class="list-inline pull-right">
                                <li><button type="button" class="btn btn-default prev-step" >voltar</button></li>
                                <li><button type="button" class="btn btn-primary next-step" id="salvar3">Enviar</button></li>
                            </ul>
                        </div>

                        <div class="tab-pane" role="tabpanel" id="step4">
                            <h3>Step 4</h3>
                            <p>This is step 4</p>
                            <ul class="list-inline pull-right">
                                <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
                                <li><button type="button" class="btn btn-primary next-step">Save and continue</button></li>
                            </ul>
                        </div>

                        <div class="tab-pane" role="tabpanel" id="step5">
                            <h3>Step 5</h3>
                            <p>This is step 5</p>
                            <ul class="list-inline pull-right">
                                <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
                                <li><button type="button" class="btn btn-default next-step">Skip</button></li>
                                <li><button type="button" class="btn btn-primary btn-info-full next-step">Save and continue</button></li>
                            </ul>
                        </div>


                        <div class="tab-pane" role="tabpanel" id="complete">
                            <h3>Complete</h3>
                            <p>You have successfully completed all steps.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </form>
            </div>
        </section>
    </div>
</div>