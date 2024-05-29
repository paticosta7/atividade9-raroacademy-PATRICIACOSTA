*** Settings ***

Resource         ../base.robot
Resource        ../utils/config.robot
Resource        ../utils/commons.robot
Resource        ../pages/paginaInicial.Page.robot

Test Setup        Abrir App
Test Teardown     Teardown   

*** Test Cases ***
T1 - Deve ser possível vizualizar a mensagem "Olá, Breno Freitas" ao acessar a tela incial
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará a mensagem Olá, Breno Freitas

T2 - Deve ser possível vizualizar conta com o saldo disponível
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará informações da conta e saldo disponível

T3 - Deve ser possível visualizar Meus Cartões
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará a opção Meus Cartões

T4 - Deve ser possível visualizar Cartão de Crédito
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará a opção Cartão de Crédito com os dados de limite e fatura 

T5 - Deve ser possível visualizar Empréstimo
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará Empréstimo com o valor disponível

T6 - Deve ser possível visualizar Investimentos
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará Investimentos com uma opção para conhecer sobre

T7 - Deve ser possível visualizar Seguro de vida
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará Seguro de Vida

T8 - Deve ser possível visualizar Descubra mais
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará Descubra mais

T9 - Deve ser possível visualizar WhatsApp
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará WhatsApp
    E a opção de acesso para conhecer mais sobre

T10 - Deve ser possível visualizar o botão de acesso para Pix
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará Pix

T11 - Deve ser possível visualizar o botão de acesso para Pagar
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará opção Pagar

T12 - Deve ser possível visualizar o botão de acesso para Transferir
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará opção Transferir

T13 - Deve ser possível visualizar o botão de acesso para Depositar
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará opção Depositar

T14 - Deve ser possível visualizar o botão de acesso para Emprestimos
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará Emprestimos

T15 - Deve ser possível visualizar o botão de acesso para Recarga de Celular
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará opção para Recarga de Celular

T16 - Deve ser possível visualizar o botão de acesso para Cobrar
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará opção Cobrar

T17 - Deve ser possível visualizar o botão de acesso para Doação
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará opção Doação

T18 - Deve ser possível visualizar o botão de acesso para opção Encontrar Atalhos
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará opção para Encontrar Atalhos

T19 - Deve ser possível ocultar as informações de valores do saldo e fatura 
    Dado que o usuário acessou a tela inicial de sua conta
    Quando clicar no botão para ocultar os valores do saldo e fatura atual
    Então o valor do saldo não será exibido no campo Conta
    E o valor da fatura atual também não deverá será mostrado no campo Fatura Atual

T20 - Deve ser possível visualizar o botão para o perfi do usuário
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará botão para perfil

T21 - Deve ser possível visualizar o botão para dúvidas sorbe a conta
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará o botão de acesso para dúvidas da conta

T22 - Deve ser possível visualizar o botão para convidar amigos
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará o botão acesso a tela de convidar
T23 - Deve ser possível visualizar opção com informações de valor disponível para empréstimo
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará opção com as informações de valor disponível para empréstimo

T24 - Deve ser possível visualizar opção para guardar dinheiro
    Dado que o usuário esteja logado no aplicativo
    Quando acessar a tela inicial do aplicativo
    Então visualizará opção para guardar dinheiro