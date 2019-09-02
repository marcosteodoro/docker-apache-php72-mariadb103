# LAMP Stack utilizando Docker :whale:

Nesse exemplo temos a utilização de dois contâineres (WebServer **PHP** em conjunto com o **Apache** e **MariaDB**), se comunicando e subindo com um único comando através do *DockerCompose*.

Temos também configurações do **Apache** para serem enviadas ao container, encontradas na raiz do projeto, juntamente com o *Dockerfile* que cria nosso WebServer.

Para rodar o exemplo são necessários ter previamente instalados o *docker* e o *docker-compose* em sua máquina.

Com tudo instalado basta entrar na raiz do projeto e rodar o comando "*docker-compose up*" e o mesmo se encarrega de realizar os downloads necessários e subir todos os contâineres da aplicação.

Uma alternativa interessante é adicionar o "-d" ao final do comando, rodando de forma desatachada "*docker-compose up -d*", deixando seu terminal livre. Seguindo essa maneira, após utilizar a aplicação basta rodar o comando "*docker-compose stop*" e todos os contâineres serão parados.

Após subir os contâineres você pode acessar o localhost e ver se o conteúdo do arquivo index.php será exibido com sucesso.

**Observações importantes:** caso já tenha instalações locais de **Apache** e **MySQL** rodando nas portas utilizadas no arquivo *docker-compose*, basta alterá-las para outras portas conforme a necessidade.

**APACHE 2**

**PHP 7.2**

**MARIADB 10.3**

O container do banco de dados é um volume persistente, portanto em caso de falhas as informações são mantidas.

Mais detalhes sobre os recursos podem ser encontrados em [Docker](https://docs.docker.com/) e [DockerCompose](https://docs.docker.com/compose/) :whale2: :penguin:

