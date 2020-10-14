#language: pt

Funcionalidade: Perfil
    Sendo um usuário cadastrado
    Quero acessar meu perfil
    Para manter meus dados atualizados

    @logout
    Esquema do Cenário: Atualizar perfil

        Dado que esteja autenticado com "<email>" e "<senha>"
        E que acesso meu perfil
        Quando completar os dados solicitados "<empresa>" e "<cargo>"
        Então deverá aparecer a mensagem de atualização "Perfil atualizado com sucesso."

        Exemplos:
            | email         | senha      | empresa   | cargo      |
            | 1@hotmail.com | 123456     | Yahoo     | Developer  |
            | 2@hotmail.com | 123456     | Google    | QA         |
            | 3@hotmail.com | 123456     | Microsoft | CEO        |
            | 4@hotmail.com | 123456     | Linkedin  | CTO        |
            | 5@hotmail.com | 123456     | Facebook  | Estagiario |