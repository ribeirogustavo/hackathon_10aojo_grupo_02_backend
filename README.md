# Movies catalog API
Api para retorno do streaming de vídeos empresariais de treinamento para seus funcionários

## Instalando o projeto na sua máquina
Para rodar a aplicação em seu ambiente você precisa ter os seguintes programa instalado:

 - Java Open JDC 17+
 - Intellij IDE 2022+
### 1 - Realize o download das dependencias
Ao abrir o projeto pelo IntelliJ ele ira iniciar o download das dependencias do projeto,
caso n inicie vai no menu > build > build project, que ira realizar os downloads

### 2 - Setar as variaveis de ambientes
Para que o projeto rode localmente é necessario setar as variaveis de ambientes utilizadas abaixo: (pexa seus valores para o administrador)

 - DB_HOSTNAME
 - DB_PORT
 - DB_NAME
 - DB_USERNAME
 - DB_PASSWORD

## Endpoints
Os endpoints da aplicação são:

### Listar Movies
Endpoint para listar os filmes da base
```
/movies
```
Parabetros (* campos obrigatorios):
 - searchTerm*: [string] Termo de busca, se passar como vazio listara todos os filmes

### Get Molvie
Retorna um filme pelo Id passado
```
/movies/{id}
```
Parametros (* campos obrigatorios):
 - Id*: [int] Identificador Numerico do filme, passado na rota da chamada.

## Adicionando novas funcionalidades
Para adicionar código nesse repositório, basta criar uma nova branch a partir da develop. Ela pode ser criada pela interface do Github ou via terminal (na pasta raíz do seu projeto), com o seguinte comando:
```
git checkout -b nome-da-branch
```