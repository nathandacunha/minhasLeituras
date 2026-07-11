install.packages("stringr")

library(dplyr)
library(stringr) # manipulação de string

# Padronizar espaços e capitalização do texto

leituras <- leituras %>%
  mutate(
    Titulo = str_trim(Titulo),
    Autor  = str_trim(Autor),
    Genero = str_trim(Genero),
    Tipo   = str_trim(Tipo)
)

# Checar duplicatas (mesmo título + autor cadastrado 2x)

duplicatas <- leituras %>%
  group_by(Titulo, Autor) %>%
  filter(n() > 1) %>%
  ungroup()

if (nrow(duplicatas) > 0) {
  warning("Existem registros duplicados. Revise:")
  print(duplicatas)
}

# Padronizar categorias de Tipo (evita "Livro" vs "livro")

leituras <- leituras %>%
  mutate(Tipo = str_to_title(Tipo))   # primeira letra maiúscula


# 4. Converter colunas categóricas em fator

# Fatores são mais eficientes para agrupar/plotar do que texto solto

leituras <- leituras %>%
  mutate(
    Tipo   = as.factor(Tipo),
    Genero = as.factor(Genero)
)

# 5. Conferir níveis únicos (ajuda a pegar erro de digitação)

print(levels(leituras$Genero))
print(levels(leituras$Tipo))

message("Limpeza concluída: ", nrow(leituras), " registros prontos para análise.")