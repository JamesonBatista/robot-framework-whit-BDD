***Settings***
Library     SeleniumLibrary

Resource        ../base/resource_base.robot
Resource        ../pages/login_page.robot

Test Setup          Browser open
Test Teardown       Close Navigation

***Test Cases***

Cenário: Efetuar Login na Página

    Dado que eu acesse página e preencha usuário e senha
    Quando eu clicar no botão Login
    Então devo ver mensagem de WELCOME :)