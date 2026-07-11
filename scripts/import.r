# instalação dos pacotes
install.packages("here")
install.packages("readr")
install.packages("dplyr")

# Importação dos pacotes
library(readr)
library(here)
library(dplyr)

caminho_arquivo <- here::here("data", "leituras.csv")

leituras <- read_delim(
  caminho_arquivo,
  delim = ";",
  trim_ws = TRUE,
  col_types = cols(
    Titulo  = col_character(),
    Autor   = col_character(),
    Genero  = col_character(),
    Nota    = col_double(),
    Paginas = col_double(),
    Tipo    = col_character()
  )
)

# checagem dos dados
glimpse(leituras)
print(head(leituras))

# validações simples

# verificação se a nota está fora da escala 0 a 10
notas_invalidas <- leituras %>%
  filter(nota < 0 | nota > 10)

if (nrow(notas_invalidas) > 0) {
  warning("Existem notas fora de escala (0 a 10)")
}


# visualizando a tabela
View(leituras)
rm(list = ls())   # limpa TODOS os objetos da sessão atual