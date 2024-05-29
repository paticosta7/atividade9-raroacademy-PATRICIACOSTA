*** Settings ***
Resource    ../base.robot    
Resource    ../utils/commons.robot

*** Variables ***
# TELA INICIAL
${PERFIL}                           xpath=//android.widget.ScrollView/android.view.View[1]
${OCULTAR_SALDO}                    xpath=//android.widget.ScrollView/android.widget.Button[1]
${SAUDACAO}                         xpath=//android.view.View[contains(@content-desc,"Olá, Breno Freitas")]
${DUVIDAS}                          xpath=//android.widget.ScrollView/android.widget.Button[2]
${CONVITE}                          xpath=//android.widget.ScrollView/android.widget.Button[3]
${CONTA_TELA_INICIAL}               xpath=//android.view.View[contains(@content-desc,"Conta")]
# MENUS
${CARROSSEL_MENU1}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${CARROSSEL_MENU2}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${CARROSSEL_MENU3}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${CARROSSEL_MENU4}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
# DENTRO NO CARROSSEL 
${PIX}                              xpath=//android.view.View[@content-desc="Pix"]
${PAGAR}                            xpath=//android.view.View[@content-desc="Pagar"]
${TRANSFERIR}                       xpath=//android.view.View[@content-desc="Transferir"]
${DEPOSITAR}                        xpath=//android.view.View[@content-desc="Depositar"]
${EMPRÉSTIMOS}                      xpath=//android.view.View[@content-desc="Empréstimos"]
${RECARGA}                          xpath=/xpath=//android.view.View[contains(@content-desc,"Recarga")]
${COBRAR}                           xpath=//android.view.View[contains(@content-desc,"Cobrar")]
${DOAÇÃO}                           xpath=//android.view.View[@content-desc="Doação"]
${ATALHOS}                          xpath=//android.view.View[contains(@content-desc,"Encontrar atalhos")]                  
${DICA}                             xpath=//android.view.View[contains(@content-desc,"Dica")]

# CARDS VISIVEIS TELA INICIAL 
${MEUS_CARTÕES}                      xpath=//android.view.View[@content-desc="Meus cartões"]
${DISPONIVEL_EMPRESTIMO}             xpath=//android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${PLANO_FUTURO}                      xpath=//android.view.View[@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]
${CARTAO_CREDITO}                    xpath=//android.view.View[contains(@content-desc,"Cartão de Crédito")]
${EMPRESTIMO_3}                      xpath=//android.view.View[contains(@content-desc,"Empréstimo")]
${INVESTIMENTOS}                     xpath=//android.view.View[contains(@content-desc,"Investimentos")]
${INVESTIR_CONHECER}                 xpath=//android.view.View[@content-desc="Conhecer"]
${SEGURO_VIDA}                       xpath=//android.view.View[contains(@content-desc,"Seguro de vida")]
${BOTAO_INDICAR}                     xpath=//android.widget.Button[1]
${DESCUBRA_MAIS}                     xpath=//android.view.View[@content-desc="Descubra mais"]
${WHATSAPP}                          xpath=//android.view.View[contains(@content-desc,"WhatsApp")]
${WHATS_CONHECER}                    xpath=//android.view.View[@content-desc="Quero conhecer"]
    

# ${INDICAR_AMIGOS}                   xpath=//android.widget.Button[@content-desc="INDICAR AMIGOS"]
# ${INDICAR_RESGATE_AMIGOS}           xpath=//android.widget.ImageView[contains(@content-desc,"Resgate seus amigos da fila do banco")]

# ${DINHEIRO_GUARDADO}                xpath=//android.view.View[contains(@content-desc,"Dinheiro guardado")]
# ${EXTRATO}                          xpath=//android.widget.Button[1]
# ${DUVIDAS_EXTRATO}                  xpath=//android.widget.Button[2]
# ${SALDO_EXTRATO}                    xpath=//android.view.View[@content-desc="R$ 181,79"]
# ${SEGUNDO_INDICAR}                  xpath=//android.view.View[@content-desc="Scrim"]
# ${SALDO_DISPONIVEL}                 xpath=//android.view.View[@content-desc="Saldo disponível"]



*** Keywords ***
Dado que o usuário esteja logado no aplicativo
    Wait Until Element Is Visible    ${CONTA_TELA_INICIAL}

Dado que o usuário acessou a tela inicial de sua conta
    Element Should Be Visible    ${SAUDACAO}
    Page Should Contain Element    ${SAUDACAO}

Dado que o usuário acessou a tela de indicação de amigos
    Click Element    ${CONVITE}

Quando acessar a tela inicial do aplicativo
    Element Should Be Visible    ${SAUDACAO}
    Page Should Contain Element    ${SAUDACAO}

Quando clicar no botão para ocultar os valores do saldo e fatura atual
    Click Element    ${OCULTAR_SALDO}

Quando acessar a funcionalidade Conta
    Click Element    ${CONTA_TELA_INICIAL}

Quando acessar a funcionalidade para indicar amigos no canto superior direito da tela
    Click Element    ${CONVITE}

Quando acessar o botão X localizado no canto superior esquerdo da tela
    Click Element    ${BOTAO_INDICAR}

Então visualizará a mensagem Olá, Breno Freitas
    Page Should Contain Text    "Olá, Breno Freitas"

Então visualizará informações da conta e saldo disponível
    Element Should Be Visible                  ${CONTA_TELA_INICIAL}
    Page Should Contain Element                ${CONTA_TELA_INICIAL}
    Verifica se o contentDesc contains text    ${CONTA_TELA_INICIAL}    Conta
    Verifica se o contentDesc contains text    ${CONTA_TELA_INICIAL}    R$ 181,79

Então visualizará a opção Meus Cartões
    Element Should Be Visible    ${MEUS_CARTÕES}
    Page Should Contain Element    ${MEUS_CARTÕES}
    Wait Until Page Contains    "Meus cartões"

Então visualizará a opção Cartão de Crédito com os dados de limite e fatura 
    Swipe By Percent    50    50    50    10
    Wait Until Element Is Visible              ${CARTAO_CREDITO}
    Page Should Contain Element                ${CARTAO_CREDITO}
    Verifica se o contentDesc contains text    ${CARTAO_CREDITO}    Cartão de Crédito
    Verifica se o contentDesc contains text    ${CARTAO_CREDITO}    Fatura atual
    Verifica se o contentDesc contains text    ${CARTAO_CREDITO}    R$ 780,72
    Verifica se o contentDesc contains text    ${CARTAO_CREDITO}    Limite disponível R$ 806,78

Então visualizará Empréstimo com o valor disponível
    Swipe By Percent    55    50    55    10
    Wait Until Element Is Visible              ${EMPRESTIMO_3}
    Page Should Contain Element                ${EMPRESTIMO_3}
    Verifica se o contentDesc contains text    ${EMPRESTIMO_3}    Empréstimo
    Verifica se o contentDesc contains text    ${EMPRESTIMO_3}    Valor disponível de até
    Verifica se o contentDesc contains text    ${EMPRESTIMO_3}    R$ 10.000,00

Então visualizará Investimentos com uma opção para conhecer sobre
    Swipe By Percent    50    70    50    10
    Wait Until Element Is Visible    ${INVESTIMENTOS}
    Page Should Contain Element    ${INVESTIMENTOS}
    Verifica se o contentDesc contains text    ${INVESTIMENTOS}    Investimentos
    Verifica se o contentDesc contains text    ${INVESTIMENTOS}    A revolução roxa começou
    Verifica se o contentDesc contains text    ${INVESTIMENTOS}    Invista de maneira simples, sem burocracia e 100% digital
    Element Should Be Visible    ${INVESTIR_CONHECER}
    Page Should Contain Element    ${INVESTIR_CONHECER}
    Verifica se o contentDesc contains text    ${INVESTIR_CONHECER}    Conhecer

Então visualizará Seguro de Vida
    Swipe By Percent    50    90    50    10
    Wait Until Element Is Visible    ${SEGURO_VIDA}
    Page Should Contain Element    ${SEGURO_VIDA}
    Verifica se o contentDesc contains text    ${SEGURO_VIDA}    Seguro de vida
    Verifica se o contentDesc contains text
    ...    ${SEGURO_VIDA}
    ...    Conheça Nubank Vida: um seguro simples e que cabe no bolso

Então visualizará Descubra mais
    Swipe By Percent    50    90    50    5
    Wait Until Element Is Visible    ${DESCUBRA_MAIS}
    Page Should Contain Element    ${DESCUBRA_MAIS}
    Verifica se o contentDesc contains text    ${DESCUBRA_MAIS}    Descubra mais

Então visualizará WhatsApp
    Swipe By Percent    50    90    50    0
    Wait Until Element Is Visible              ${WHATSAPP}
    Page Should Contain Element                ${WHATSAPP}
    Verifica se o contentDesc contains text    ${WHATSAPP}    Novo
    Verifica se o contentDesc contains text    ${WHATSAPP}    Pagamentos seguros, rápidos e sem tarifa
    Verifica se o contentDesc contains text    ${WHATSAPP}    A experiência Nubank sem nem sair da conversa

E a opção de acesso para conhecer mais sobre
    Swipe By Percent    50    40    50    10
    Wait Until Element Is Visible    ${WHATS_CONHECER}
    Page Should Contain Element    ${WHATS_CONHECER}
    Verifica se o contentDesc contains text    ${WHATS_CONHECER}    Quero conhecer

Então visualizará Pix
    Element Should Be Visible    ${CARROSSEL_MENU1}
    Page Should Contain Element    ${CARROSSEL_MENU1}
    Element Should Be Visible    ${PIX}
    Verifica se o contentDesc contains text    ${PIX}    Pix

Então visualizará opção Pagar
    Element Should Be Visible    ${CARROSSEL_MENU2}
    Page Should Contain Element    ${CARROSSEL_MENU2}
    Element Should Be Visible    ${PAGAR}
    Verifica se o contentDesc contains text    ${PAGAR}    Pagar

Então visualizará opção Transferir
    Element Should Be Visible            ${CARROSSEL_MENU3}
    Page Should Contain Element          ${CARROSSEL_MENU3}
    Element Should Be Visible            ${TRANSFERIR}
    Verifica se o contentDesc contains text    ${TRANSFERIR}    Transferir

Então visualizará opção Depositar
    Element Should Be Visible    ${CARROSSEL_MENU4}
    Page Should Contain Element    ${CARROSSEL_MENU4}
    Element Should Be Visible    ${DEPOSITAR}
    Verifica se o contentDesc contains text    ${DEPOSITAR}    Depositar

Então visualizará Emprestimos
    Swipe By Percent    85    50    15    50
    Wait Until Page Contains Element    ${CARROSSEL_MENU1}
    Element Should Be Visible    ${CARROSSEL_MENU1}
    Element Should Be Visible    ${EMPRÉSTIMOS}
    Verifica se o contentDesc contains text    ${EMPRÉSTIMOS}    Empréstimos

Então visualizará opção para Recarga de Celular
    Swipe By Percent    90    55    15    50
    Wait Until Page Contains Element    ${CARROSSEL_MENU2}
    Element Should Be Visible    ${CARROSSEL_MENU2}
    Element Should Be Visible    ${RECARGA}
    Verifica se o contentDesc contains text    ${RECARGA}    Recarga de celular

Então visualizará opção Cobrar
    Swipe By Percent    45    60    35    50
    Wait Until Page Contains Element    ${CARROSSEL_MENU3}
    Element Should Be Visible    ${CARROSSEL_MENU3}
    Element Should Be Visible    ${COBRAR}
    Verifica se o contentDesc contains text    ${COBRAR}    Cobrar

Então visualizará opção Doação
    Swipe By Percent    85    50    15    50
    Wait Until Page Contains Element    ${CARROSSEL_MENU4}
    Element Should Be Visible            ${CARROSSEL_MENU4}
    Element Should Be Visible            ${DOAÇÃO}
    Verifica se o contentDesc contains text    ${DOAÇÃO}    Doação

Então visualizará opção para Encontrar Atalhos
    Swipe By Percent    85    50    15    50
    Swipe By Percent    80    50    20    50
    Wait Until Page Contains Element    ${CARROSSEL_MENU4}
    Element Should Be Visible    ${CARROSSEL_MENU4}
    Page Should Contain Element    ${DICA}
    Element Should Be Visible    ${DICA}
    Verifica se o contentDesc contains text    ${ATALHOS}    Encontrar atalhos
    Element Should Be Visible    ${ATALHOS}

Então o valor do saldo não será exibido no campo Conta
    Verifica se o contentDesc não contains text    ${CONTA_TELA_INICIAL}    R$ 181,79

E o valor da fatura atual também não deverá será mostrado no campo Fatura Atual
    Verifica se o contentDesc não contains text    ${CARTAO_CREDITO}    R$ 780,72

Então visualizará botão para perfil
    Page Should Contain Element    ${PERFIL}
    Element Should Be Visible    ${PERFIL}

Então visualizará o botão de acesso para dúvidas da conta
    Page Should Contain Element    ${DUVIDAS}
    Element Should Be Visible    ${DUVIDAS}
    
Então visualizará o botão acesso a tela de convidar
    Page Should Contain Element    ${CONVITE}
    Element Should Be Visible    ${CONVITE}

Então visualizará opção com as informações de valor disponível para empréstimo
    Element Should Be Visible                  ${DISPONIVEL_EMPRESTIMO}
    Page Should Contain Element                ${DISPONIVEL_EMPRESTIMO}
    Verifica se o contentDesc contains text    ${DISPONIVEL_EMPRESTIMO}    Você tem R$ 10.000,00
    Verifica se o contentDesc contains text    ${DISPONIVEL_EMPRESTIMO}    disponíveis para empréstimo

Então visualizará opção para guardar dinheiro
    Swipe By Percent    80    80    20    80
    Wait Until Element Is Visible    ${PLANO_FUTURO}
    Page Should Contain Element    ${PLANO_FUTURO}
    Verifica se o contentDesc contains text    ${PLANO_FUTURO}  Conquiste planos futuros: conheça as opções para guardar dinheiro.
# OUTRAS FUNÇÕES NÃO ESQUECER DE CORRIGIR
