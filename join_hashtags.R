
library(tidyverse)
library(lubridate)

setwd("/Volumes/HD VIKTOR/meus repositórios/data_ics_ecosystems/original_corpus/hashtags_twitter")

#1
BolsonaroHeroiDaDireita <- read.csv("BolsonaroHeroiDaDireita.csv")
BolsonaroHeroiDaDireita <- BolsonaroHeroiDaDireita %>% 
  select(created_at, media_url)

BolsonaroHeroiDaDireita$created_at <- as.POSIXct(BolsonaroHeroiDaDireita$created_at, origin = "1970-01-01")    # Timestamp

BolsonaroHeroiDaDireita <- BolsonaroHeroiDaDireita %>%                                                       # Timestamp
  mutate(created_at = date(created_at))

BolsonaroHeroiDaDireita <- BolsonaroHeroiDaDireita %>% 
  replace(is.na(.), "valor_na") %>% 
  mutate(hash = "BolsonaroHeroiDaDireita")

#2
bolsonaroreeleito <- read.csv("bolsonaroreeleito.csv")
bolsonaroreeleito <- bolsonaroreeleito %>% 
  select(created_at, media_url)

bolsonaroreeleito$created_at <- as.POSIXct(bolsonaroreeleito$created_at, origin = "1970-01-01")    # Timestamp

bolsonaroreeleito <- bolsonaroreeleito %>%                                                       # Timestamp
  mutate(created_at = date(created_at))

bolsonaroreeleito <- bolsonaroreeleito %>% 
  replace(is.na(.), "valor_na") %>% 
  mutate(hash = "bolsonaroreeleito")

#3
BolsonaroTemRazao <- read.csv("BolsonaroTemRazao.csv")
BolsonaroTemRazao <- BolsonaroTemRazao %>% 
  select(created_at, media_url)

BolsonaroTemRazao$created_at <- as.POSIXct(BolsonaroTemRazao$created_at, origin = "1970-01-01")    # Timestamp

BolsonaroTemRazao <- BolsonaroTemRazao %>%                                                       # Timestamp
  mutate(created_at = date(created_at))

BolsonaroTemRazao <- BolsonaroTemRazao %>% 
  replace(is.na(.), "valor_na") %>% 
  mutate(hash = "BolsonaroTemRazao")

#4
brasilcombolsonaro <- read.csv("brasilcombolsonaro.csv")
brasilcombolsonaro <- brasilcombolsonaro %>% 
  select(created_at, media_url)

brasilcombolsonaro$created_at <- as.POSIXct(brasilcombolsonaro$created_at, origin = "1970-01-01")    # Timestamp

brasilcombolsonaro <- brasilcombolsonaro %>%                                                       # Timestamp
  mutate(created_at = date(created_at))

brasilcombolsonaro <- brasilcombolsonaro %>% 
  replace(is.na(.), "valor_na") %>% 
  mutate(hash = "brasilcombolsonaro")

#5
euapoiobolsonaro <- read.csv("euapoiobolsonaro.csv")
euapoiobolsonaro <- euapoiobolsonaro %>% 
  select(created_at, media_url)

euapoiobolsonaro$created_at <- as.POSIXct(euapoiobolsonaro$created_at, origin = "1970-01-01")    # Timestamp

euapoiobolsonaro <- euapoiobolsonaro %>%                                                       # Timestamp
  mutate(created_at = date(created_at))

euapoiobolsonaro <- euapoiobolsonaro %>% 
  replace(is.na(.), "valor_na") %>% 
  mutate(hash = "euapoiobolsonaro")

#6
FechadoComBolsonaro_2 <- read.csv("FechadoComBolsonaro_2.csv")
FechadoComBolsonaro_2 <- FechadoComBolsonaro_2 %>% 
  select(created_at, media_url)

FechadoComBolsonaro_2$created_at <- as.POSIXct(FechadoComBolsonaro_2$created_at, origin = "1970-01-01")    # Timestamp

FechadoComBolsonaro_2 <- FechadoComBolsonaro_2 %>%                                                       # Timestamp
  mutate(created_at = date(created_at))

FechadoComBolsonaro_2 <- FechadoComBolsonaro_2 %>% 
  replace(is.na(.), "valor_na") %>% 
  mutate(hash = "FechadoComBolsonaro_2")

#7
JairNaoCaiNemAPau <- read.csv("JairNaoCaiNemAPau.csv")
JairNaoCaiNemAPau <- JairNaoCaiNemAPau %>% 
  select(created_at, media_url)

JairNaoCaiNemAPau$created_at <- as.POSIXct(JairNaoCaiNemAPau$created_at, origin = "1970-01-01")    # Timestamp

JairNaoCaiNemAPau <- JairNaoCaiNemAPau %>%                                                       # Timestamp
  mutate(created_at = date(created_at))

JairNaoCaiNemAPau <- JairNaoCaiNemAPau %>% 
  replace(is.na(.), "valor_na") %>% 
  mutate(hash = "JairNaoCaiNemAPau")

#8
NinguemDerrubaBolsonaro <- read.csv("NinguemDerrubaBolsonaro.csv")
NinguemDerrubaBolsonaro <- NinguemDerrubaBolsonaro %>% 
  select(created_at, media_url)

NinguemDerrubaBolsonaro$created_at <- as.POSIXct(NinguemDerrubaBolsonaro$created_at, origin = "1970-01-01")    # Timestamp

NinguemDerrubaBolsonaro <- NinguemDerrubaBolsonaro %>%                                                       # Timestamp
  mutate(created_at = date(created_at))

NinguemDerrubaBolsonaro <- NinguemDerrubaBolsonaro %>% 
  replace(is.na(.), "valor_na") %>% 
  mutate(hash = "NinguemDerrubaBolsonaro")

#9
NinguemDerrunaBolsonaro <- read.csv("NinguemDerrunaBolsonaro.csv")
NinguemDerrunaBolsonaro <- NinguemDerrunaBolsonaro %>% 
  select(created_at, media_url)

NinguemDerrunaBolsonaro$created_at <- as.POSIXct(NinguemDerrunaBolsonaro$created_at, origin = "1970-01-01")    # Timestamp

NinguemDerrunaBolsonaro <- NinguemDerrunaBolsonaro %>%                                                       # Timestamp
  mutate(created_at = date(created_at))

NinguemDerrunaBolsonaro <- NinguemDerrunaBolsonaro %>% 
  replace(is.na(.), "valor_na") %>% 
  mutate(hash = "NinguemDerrunaBolsonaro")

#10
patriotascombolsonaro <- read.csv("patriotascombolsonaro.csv")
patriotascombolsonaro <- patriotascombolsonaro %>% 
  select(created_at, media_url)

patriotascombolsonaro$created_at <- as.POSIXct(patriotascombolsonaro$created_at, origin = "1970-01-01")    # Timestamp

patriotascombolsonaro <- patriotascombolsonaro %>%                                                       # Timestamp
  mutate(created_at = date(created_at))

patriotascombolsonaro <- patriotascombolsonaro %>% 
  replace(is.na(.), "valor_na") %>% 
  mutate(hash = "patriotascombolsonaro")

#11
reajabolsonaro <- read.csv("reajabolsonaro.csv")
reajabolsonaro <- reajabolsonaro %>% 
  select(created_at, media_url)

reajabolsonaro$created_at <- as.POSIXct(reajabolsonaro$created_at, origin = "1970-01-01")    # Timestamp

reajabolsonaro <- reajabolsonaro %>%                                                       # Timestamp
  mutate(created_at = date(created_at))

reajabolsonaro <- reajabolsonaro %>% 
  replace(is.na(.), "valor_na") %>% 
  mutate(hash = "reajabolsonaro")

#12
SouMulherEApoioBolsonaro <- read.csv("SouMulherEApoioBolsonaro.csv")
SouMulherEApoioBolsonaro <- SouMulherEApoioBolsonaro %>% 
  select(created_at, media_url)

SouMulherEApoioBolsonaro$created_at <- as.POSIXct(SouMulherEApoioBolsonaro$created_at, origin = "1970-01-01")    # Timestamp

SouMulherEApoioBolsonaro <- SouMulherEApoioBolsonaro %>%                                                       # Timestamp
  mutate(created_at = date(created_at))

SouMulherEApoioBolsonaro <- SouMulherEApoioBolsonaro %>% 
  replace(is.na(.), "valor_na") %>% 
  mutate(hash = "SouMulherEApoioBolsonaro")

#13
SouMulherSouBolsonaro <- read.csv("SouMulherSouBolsonaro.csv")
SouMulherSouBolsonaro <- SouMulherSouBolsonaro %>% 
  select(created_at, media_url)

SouMulherSouBolsonaro$created_at <- as.POSIXct(SouMulherSouBolsonaro$created_at, origin = "1970-01-01")    # Timestamp

SouMulherSouBolsonaro <- SouMulherSouBolsonaro %>%                                                       # Timestamp
  mutate(created_at = date(created_at))

SouMulherSouBolsonaro <- SouMulherSouBolsonaro %>% 
  replace(is.na(.), "valor_na") %>% 
  mutate(hash = "SouMulherSouBolsonaro")

#14
Vetabolsonaro <- read.csv("Vetabolsonaro.csv")
Vetabolsonaro <- Vetabolsonaro %>% 
  select(created_at, media_url)

Vetabolsonaro$created_at <- as.POSIXct(Vetabolsonaro$created_at, origin = "1970-01-01")    # Timestamp

Vetabolsonaro <- Vetabolsonaro %>%                                                       # Timestamp
  mutate(created_at = date(created_at))

Vetabolsonaro <- Vetabolsonaro %>% 
  replace(is.na(.), "valor_na") %>% 
  mutate(hash = "Vetabolsonaro")

# FULL JOIN
hashtag1 <- BolsonaroHeroiDaDireita
hashtags <- hashtag1 %>%
  full_join(bolsonaroreeleito) %>%
  full_join(BolsonaroTemRazao) %>%
  full_join(brasilcombolsonaro) %>%
  full_join(euapoiobolsonaro) %>%
  full_join(FechadoComBolsonaro_2) %>%
  full_join(JairNaoCaiNemAPau) %>%
  full_join(NinguemDerrubaBolsonaro) %>%
  full_join(NinguemDerrunaBolsonaro) %>%
  full_join(patriotascombolsonaro) %>%
  full_join(reajabolsonaro) %>%
  full_join(SouMulherSouBolsonaro) %>%
  full_join(SouMulherEApoioBolsonaro) %>%
  full_join(Vetabolsonaro)
rm(hashtag1)

hashtags_count <- hashtags %>% 
  count(hash)

hashtags_count_memes <- hashtags %>% 
  filter(media_url != "valor_na") %>% 
  count(hash)

hashtags_created_at <- hashtags %>% 
  count(created_at)

hashtags_memes <- hashtags %>% 
  filter(media_url != "valor_na") %>% 
  count(created_at)

hashtags_memes_total <- hashtags_memes %>%  summarise(n = sum(n))

write_csv(hashtags_count, "~/Downloads/hashtags_count.csv")
write_csv(hashtags_created_at, "~/Downloads/hashtags_created_at.csv")
write_csv(hashtags_memes, "~/Downloads/hashtags_memes.csv")
write_csv(hashtags_memes_total, "~/Downloads/hashtags_memes_total.csv")
write_csv(hashtags_count_memes, "~/Downloads/hashtags_count_memes.csv")















