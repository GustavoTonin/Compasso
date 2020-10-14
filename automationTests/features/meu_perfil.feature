#language: pt

Funcionalidade: Perfil
    Sendo um usuário cadastrado
    Quero acessar meu perfil
    Para manter meus dados atualizados

    Cenário: Atualização
        Dado que esteja autenticado com "gustavo.tonin@compasso.com.br" e "123456"
        Quando acessar meu perfil
        E completar os dados solicitados
        Então deverá aparecer a mensagem de atualização "Perfil atualizado com sucesso."