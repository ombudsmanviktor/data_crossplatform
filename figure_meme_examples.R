library(cowplot)
library(hrbrthemes)
library(tidyverse)

# Plotar quatro imagens lado a lado com um único título

#A
imagem01 <- ggdraw() + 
  draw_image("/Volumes/HD VIKTOR/meus repositórios/data_ics_ecosystems/figures/IMG-20200522-WA0426.jpg", scale = 0.9)
imagem01 <- ggdraw(add_sub(imagem01, "WhatsApp Persuasive Meme\n[Quote of Bolsonaro supporting gun rights]", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem02 <- ggdraw() + 
  draw_image("/Volumes/HD VIKTOR/meus repositórios/data_ics_ecosystems/figures/IMG-20200521-WA0285.jpg", scale = 0.9)
imagem02 <- ggdraw(add_sub(imagem02, "WhatsApp Grassroots Action Meme\n'From now on everyday gotta use Brazilian\nflag as my shirt'", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem03 <- ggdraw() + 
  draw_image("/Volumes/HD VIKTOR/meus repositórios/data_ics_ecosystems/figures/IMG-20200520-WA0395.jpg", scale = 0.9)
imagem03 <- ggdraw(add_sub(imagem03, "WhatsApp Public Discussion Meme\n[Dialogue comparing the use of the mask\nwith abortion decision]", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))

#A
imagem04 <- ggdraw() + 
  draw_image("/Volumes/HD VIKTOR/meus repositórios/data_ics_ecosystems/figures/IMG-20200518-WA0000.jpg", scale = 0.9)
imagem04 <- ggdraw(add_sub(imagem04, "WhatsApp Misinformation/Conspiracy Meme\n'You breath your own carbon dioxide...'", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem05 <- ggdraw() + 
  draw_image("/Volumes/HD VIKTOR/meus repositórios/data_ics_ecosystems/figures/IMG-20200518-WA0263.jpg", scale = 0.9)
imagem05 <- ggdraw(add_sub(imagem05, "WhatsApp Negative Campaign Meme\n'Anyone who doesn't want to take Bolsonaro's\nmedicine [chloroquine] can take Lula's\n[alcoholic drink]'", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem06 <- ggdraw() + 
  draw_image("/Volumes/HD VIKTOR/meus repositórios/data_ics_ecosystems/figures/IMG-20200527-WA0237.jpg", scale = 0.9)
imagem06 <- ggdraw(add_sub(imagem06, "WhatsApp Meme Against Bolsonaro\n[Poster showing influencers of Bolsonaro's\nmisinformation network]", vpadding=grid::unit(0, "lines"),
                           y = 0.7, x = 0.1, size = 10, hjust = 0))


#A
imagem07 <- ggdraw() + 
  draw_image("/Volumes/HD VIKTOR/meus repositórios/data_ics_ecosystems/figures/00147 Eae4ZQVWkAEZrqZ.jpg", scale = 0.9)
imagem07 <- ggdraw(add_sub(imagem07, "Twitter Persuasive Meme\n'The more he fights, the stronger he gets'", vpadding=grid::unit(0, "lines"),
                          y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem08 <- ggdraw() + 
  draw_image("/Volumes/HD VIKTOR/meus repositórios/data_ics_ecosystems/figures/00597 EYjMDYCXQAILXs5.jpg", scale = 0.9)
imagem08 <- ggdraw(add_sub(imagem08, "Twitter Grassroots Action Meme\n'Up this tag, ok?'", vpadding=grid::unit(0, "lines"),
                          y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem09 <- ggdraw() + 
  draw_image("/Volumes/HD VIKTOR/meus repositórios/data_ics_ecosystems/figures/00768 EZ_xqamWoAAxK7J.jpg", scale = 0.9)
imagem09 <- ggdraw(add_sub(imagem09, "Twitter Public Discussion Meme\n'[TV News] Jornal Nacional calculating\ndeaths by conoravirus'", vpadding=grid::unit(0, "lines"),
                          y = 0.7, x = 0.1, size = 10, hjust = 0))

#A
imagem10 <- ggdraw() + 
  draw_image("/Volumes/HD VIKTOR/meus repositórios/data_ics_ecosystems/figures/00697 EYQKtZtWkAIrD_1.jpg", scale = 0.9)
imagem10 <- ggdraw(add_sub(imagem10, "Twitter Misinformation/Conspiracy Meme\n'Men of 1944 vs. Men of 2020'", vpadding=grid::unit(0, "lines"),
                          y = 0.7, x = 0.1, size = 10, hjust = 0))
#B
imagem11 <- ggdraw() + 
  draw_image("/Volumes/HD VIKTOR/meus repositórios/data_ics_ecosystems/figures/00396 EakcL8aXsAMXCMS.jpg", scale = 0.9)
imagem11 <- ggdraw(add_sub(imagem11, "Twitter Negative Campaign Meme\n[Image comparing a former allie of\nBolsonaro with a pig]", vpadding=grid::unit(0, "lines"),
                          y = 0.7, x = 0.1, size = 10, hjust = 0))
#C
imagem12 <- ggdraw() + 
  draw_image("/Volumes/HD VIKTOR/meus repositórios/data_ics_ecosystems/figures/00143 Eae0QxLWkAEWM-X.jpg", scale = 0.9)
imagem12 <- ggdraw(add_sub(imagem12, "Twitter Meme Against Bolsonaro\n[Ironic avatar of Handmaid's Tale\nTV Series character Serena Joy\nsupporting Bolsonaro]", vpadding=grid::unit(0, "lines"),
                          y = 0.7, x = 0.1, size = 10, hjust = 0))


# Criar lista para imagens a serem plotadas
plot_row <- plot_grid(imagem01, imagem02, imagem03, imagem04, imagem05, imagem06, imagem07, imagem08, imagem09, imagem10, imagem11, imagem12, ncol = 3)

# Adicionar título
title <- ggdraw() +
  draw_label(
    "",
    fontface = 'bold',
    x = 0,
    hjust = 0
  ) +
  theme_ipsum()

# Adicionar legenda
caption <- ggdraw() +  
  theme_ipsum() +
  labs(caption = "")

# Plotar imagens com título e legenda
png("~/Downloads/IMG300.png", units="in", width=11, height=11, res=600)
plot_grid(
  title, plot_row, caption,
  ncol = 1,
  # rel_heights values control vertical title margins
  rel_heights = c(0.1, 1)
)
dev.off()
