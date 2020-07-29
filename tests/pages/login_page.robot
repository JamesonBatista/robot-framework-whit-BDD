***Settings***

Resource        ../base/resource_base.robot

***Variables***

${user}                         id:usr
${password}                     id:pwd
${button}                       xpath://*[@id="case_login"]/form/input[3]

${textValidationElement}        xpath://*[@id="case_login"]/h3
${textValidation}               WELCOME :)

***Keywords***

Dado que eu acesse página e preencha usuário e senha
        Input  ${user}  admin
        Input  ${password}  12345
        
Quando eu clicar no botão Login
        Wait Click  ${button}  ${button}

Então devo ver mensagem de WELCOME :)
        Text Element  ${textValidationElement}  ${textValidation}
