
#install.packages("icr")

## Requisitar a biblioteca
library(icr)

## Importar um dataframe conforme o exemplo
data(codings)
codings

## Realizar teste de confiabilidade
alpha1 <- krippalpha(ics_coding_v1,
                    bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha2 <- krippalpha(ics_coding_v2,
                    bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha3 <- krippalpha(ics_coding_v3,
                    bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha4 <- krippalpha(ics_coding_v4,
                    bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha5 <- krippalpha(ics_coding_v5,
                    bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha6 <- krippalpha(ics_coding_v6,
                    bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha7 <- krippalpha(ics_coding_v7,
                    bootstrap = TRUE, bootnp = TRUE, cores = 2)
## Apresentar resultados
print(alpha1)
print(alpha2)
print(alpha3)
print(alpha4)
print(alpha5)
print(alpha6)
print(alpha7)

## Plotar gráfico com resultados
plot(alpha)
