# desafio-tag
Esse projeto consiste em subir um serviço redis no docker utilizando uma ferramenta de infraestrutura como código: terrafom.

Pré-requisitos:
- Um deamon de docker em execução
- terraform 
- git
- conta no github

Para o desafio os pré-requisitos serão instalados localmente.

Faça o clone do projeto do github;
- git clone https://github.com/deivisonbelidio/desafio-tag.git 

Entre na pasta do projeto e rode o comando ‘$terraform init’ para preparar seu diretório para os próximos comandos ;
- $terraform init

Agora podemos executar o comando ‘$terraform plan’, que serve para verificarmos as alterações que faremos;
- $terraform plan

Depois de checar as alterações, poderemos rodar o comando ‘$terraform apply’ (não podemos esquecer de digitar “yes” para o comando ser aplicado) para aplicarmos as alterações;
- $terraform apply

Pronto nosso container redis já está em execução. Para verificarmos, podemos digitar o comando 
- $docker ps ;

Agora vamos conectar no redis usando o comando ‘$redis-cli’. 
-  $redis-cli ping
- quando executar esse comando receberá com retorno “PONG”. Isso indica que conectamos com sucesso no redis;

Para distruir o container e a imagem, usamos o comando abaixo (lembrando que esse comando, assim como o '$terraform apply', também pede confirmação.)
- $terraform distroy

Verificando que destruiu os recursos:
Se rodarmos os comandos ‘$docker ps’ e o ‘$docker image list’ veremos que não temos mais o container nem a imagem.
- $docker ps
- $docker image list

Pronto!

conclusão: utilizando o provider docker do terraform provisionamos um serviço redis totalmente gerenciado com o controle sobre a criação dos recurso, atualização e destruição.
As alterações de infraestrutura ficam armazenadas no git assim como o estado atual do provedor dos recursos, sendo ele uma instancia local ou um serviço na nuvem.