
library(tidyverse)
library(hrbrthemes)
library(lubridate)

chisq.test(as.matrix(ics_chi_square[,-1]))

chisq.test(as.matrix(ics_chi_memes[,-1]))

chisq.test(as.matrix(ics_chi_desinfo[,-1]))

chisq.test(as.matrix(ics_chi_corr[,-1]))

lm <- lm(ics_chi_square$WhatsApp ~ ics_chi_square$Twitter)
summary(lm)

ggplot(ics_chi_square, aes(x=Twitter, y=WhatsApp)) +
  geom_point() +
  geom_smooth() +
  #geom_smooth(method=lm , color="red", se=FALSE) +
  theme_ipsum()

ggplot(ics_timeseries, aes(x=created_at, y=log(N), group = ZAP_TT, color = ZAP_TT)) +
  geom_line() +
  theme_ipsum()


##### TABELAS DE CONTINGÊNCIA

#Geral
ics_meme <- ics_full_data %>% count(MEME)
ics_meme <- ics_meme %>%  mutate(perc = (n/sum(n))*100)

#Geral por plataforma
ics_meme_platform <- ics_full_data %>% count(MEME, ZAP_TT)
ics_meme_platform <- ics_meme_platform %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100)

#Classe geral
ics_meme_class <- ics_full_data %>% count(CLASSE)
ics_meme_class <- ics_meme_class %>%  mutate(perc = (n/sum(n))*100)

#Classe por plataforma
ics_meme_class_platform <- ics_full_data %>% count(CLASSE, ZAP_TT)
ics_meme_class_platform <- ics_meme_class_platform %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100)

#Campanha negativa por plataforma
ics_meme_negcamp <- ics_full_data %>% count(CAMPANHA, ZAP_TT)
ics_meme_negcamp <- ics_meme_negcamp %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100)

#Desinformação por plataforma
ics_meme_desinf <- ics_full_data %>% count(DESINFO_CONSP, ZAP_TT)
ics_meme_desinf <- ics_meme_desinf %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100)

#Pandemia por plataforma
ics_meme_pandemics <- ics_full_data %>% count(PANDEMIA, ZAP_TT)
ics_meme_pandemics <- ics_meme_pandemics %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100)

#Pro_Contra por plataforma
ics_meme_stance <- ics_full_data %>% count(PRO_CONTRA, ZAP_TT)
ics_meme_stance <- ics_meme_stance %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100)

#Variável Contextual por plataforma
ics_meme_context <- ics_full_data %>% count(VAR_CONTEXTUAL, ZAP_TT)
ics_meme_context <- ics_meme_context %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100)

#Meme por plataforma
ics_onlymeme_platform <- ics_full_data %>% filter(MEME == 1) %>% count(CLASSE, ZAP_TT)
ics_onlymeme_platform <- ics_onlymeme_platform %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100)

#Desinformação de acordo com a Classe e por Plataforma
ics_onlymeme_desinfo <- ics_full_data %>% filter(MEME == 1) %>% count(CLASSE, DESINFO_CONSP, ZAP_TT)
ics_onlymeme_desinfo <- ics_onlymeme_desinfo %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100) %>% 
  filter(DESINFO_CONSP == 1)
#Campanha Negativa de acordo com a Classe e por Plataforma
ics_onlymeme_negcamp <- ics_full_data %>% filter(MEME == 1) %>% count(CLASSE, CAMPANHA, ZAP_TT)
ics_onlymeme_negcamp <- ics_onlymeme_negcamp %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100) %>% 
  filter(CAMPANHA == 1)
#Pro_Contra de acordo com a Classe e por Plataforma
ics_onlymeme_pro_contra <- ics_full_data %>% filter(MEME == 1) %>% count(CLASSE, PRO_CONTRA, ZAP_TT)
ics_onlymeme_pro <- ics_onlymeme_pro_contra %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100) %>% 
  filter(PRO_CONTRA == 1)
ics_onlymeme_contra <- ics_onlymeme_pro_contra %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100) %>% 
  filter(PRO_CONTRA == 2)

#Desinformação de acordo com a Classe e por Plataforma
ics_resmeme_desinfo <- ics_full_data %>% count(CLASSE, DESINFO_CONSP, ZAP_TT)
ics_resmeme_desinfo <- ics_resmeme_desinfo %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100) %>% 
  filter(DESINFO_CONSP == 1)
#Campanha Negativa de acordo com a Classe e por Plataforma
ics_resmeme_negcamp <- ics_full_data %>% count(CLASSE, CAMPANHA, ZAP_TT)
ics_resmeme_negcamp <- ics_resmeme_negcamp %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100) %>% 
  filter(CAMPANHA == 1)
#Pro_Contra de acordo com a Classe e por Plataforma
ics_resmeme_pro_contra <- ics_full_data %>% count(CLASSE, PRO_CONTRA, ZAP_TT)
ics_resmeme_pro <- ics_resmeme_pro_contra %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100) %>% 
  filter(PRO_CONTRA == 1)
ics_resmeme_contra <- ics_resmeme_pro_contra %>%  
  group_by(ZAP_TT) %>% 
  mutate(perc = (n/sum(n))*100) %>% 
  filter(PRO_CONTRA == 2)

#lm_class <- lm(ics_totals_class$Total ~ ics_totals_class$Persuasivo + ics_totals_class$Ação.Popular + ics_totals_class$Discussão.Pública)
#summary(lm_class)


