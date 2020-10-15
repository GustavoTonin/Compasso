#language: pt

Funcionalidade: Gerenciar tarefas
    Sendo um usuário autenticado
    Quero gerenciar minhas tarefas
    Para melhor organização

    Contexto:
        Dado que esteja na página de adicionar tarefas

    @login @logout @sprint1
    Cenário: Adicionar

        Quando preencher o nome e data com "Fazer compras" e "16/10/2020"
        E preencher as tags com:
            | tag          |
            | Compras      |
            | SuperMercado |
            | Ketchup      |
        E cadastrar a tarefa
        Então deverá aparecer a tarefa com status "Em andamento"

    @login @logout @sprint1
    Esquema do Cenário: Tentativa de cadastro

        Quando preencher os campos com "<nome>", "<data>" e "<tag>"
        Então deverá aparecer a mensagem "<mensagem>"

        Exemplos:
            | nome          | data       | tag        | mensagem                            |
            | shortTask     | 01/01/2021 | Nome_curto | 10 caracteres é o mínimo permitido. |
            |               | 02/02/2022 | Sem_nome   | Nome é obrigatório.                 |
            | Fazer compras | 16/10/2020 | Tarefa_Dup | Tarefa duplicada.                   |
    
    @login @logout @dup
    Cenário: Tarefa duplicada

        Quando preencher o nome e data com "Fazer compras" e "16/10/2020"
        Mas já está cadastrada
        E cadastrar a tarefa
        Então deverá aparecer a mensagem "Tarefa duplicada."

#    Cenário: Editar
#        Dado que esteja no painel de tarefas
#       Quando clicar em editar
#        Então deverá ir na pagina de editar tarefa

#    Cenário: Excluir
#        Dado que esteja no painel de tarefas
#        Quando clicar em apagar
#        Então deverá apagar a tarefa selecionada
