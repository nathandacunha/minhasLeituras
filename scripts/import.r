# instalação dos pacotes
install.packages("here")
install.packages("readr")
install.packages("dplyr")

# Importação dos pacotes

library(readr)
library(here)
library(dplyr)

# here("data", "leituras.csv") monta o caminho a partir da pasta raiz do projeto
caminho_arquivo <- here::here("data", "leituras.csv")

leituras <- read_delim(
    caminho_arquivo,
    delim = ";",
    locale = locale(decimal_mark = ",", grouping_mark = "."),
    col_types = cols(
        titulo = col_character(),
        autor = col_character(),
        genero = col_character(),
        nota = col_double(),
        paginas = col_double()
    )
)

# checagem dos dados 
glimpse(leituras)
print(head(leituras))
