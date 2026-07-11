# Importação do pacote
library(dplyr)

# Analisando quantos livros foi lido por ano
leituras_por_ano <- leituras %>%
    group_by(Ano) %>%
    summarise(total_lidos =  n(), .groups = "drop")

print(leituras_por_ano)

# Resumo geral

resumo_geral <- leituras %>%
  summarise(
    total_itens     = n(),
    nota_media      = round(mean(Nota, na.rm = TRUE), 1),
    paginas_media   = round(mean(Paginas, na.rm = TRUE), 0),
    genero_favorito = names(sort(table(Genero), decreasing = TRUE))[1]
)

print(resumo_geral)