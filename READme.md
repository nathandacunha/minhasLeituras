# Minhas Leituras

O Minhas Leituras é uma aplicação desenvolvida em linguagem R com o objetivo de registrar e acompanhar a quantidade de leituras realizadas ao longo do ano. Por meio dela, é possível organizar e visualizar informações sobre livros, mangás, manhwas, histórias em quadrinhos e outras obras, facilitando o acompanhamento do progresso de leitura.  

# Funcionalidades

- Importação e validação do diário de leituras (`data/leituras.csv`)
- Limpeza e padronização dos dados (texto, categorias, duplicatas)
- Estatísticas: total lido por ano, média anual, nota média, gênero favorito

# Tecnologias Utilizadas

- Linguagem R;
- Visual Studio Code;
- Pacotes como: readr, here, dplyr, stringr

# Como rodar e executar

1. Clone o repositório e abra a pasta no VS Code (ou RStudio).
2. Instale as dependências:
```r
   install.packages(c("readr", "here", "dplyr", "stringr"))
```
3. Rode os scripts em ordem, na mesma sessão do R:
```r
   source("scripts/01_importar.R")
   source("scripts/02_limpar.R")
   source("scripts/03_analisar.R")
```## Como rodar

1. Clone o repositório e abra a pasta no VS Code (ou RStudio).
2. Instale as dependências:
```r
   install.packages(c("readr", "here", "dplyr", "stringr"))
```
3. Rode os scripts em ordem, na mesma sessão do R:
```r
   source("scripts/01_importar.R")
   source("scripts/02_limpar.R")
   source("scripts/03_analisar.R")
```