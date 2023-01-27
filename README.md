# data_meme_crossplatform

WhatsApp political memesphere and Brazilian far-right hybrid media system: the effects of environmental opacity on the spread of extremist memes

## Codebook

Below, you may find the codebook developed for this research.

Files and scripts provided in this folder refer to the datasets used for this study.

| Code  | Description |
| ------------- | ------------- |
| **ID**  | Unique ID of content  |
| **CONTENT**  | Name of the image file  |
| **ZAP_TT**  | If it was extracted from WhatsApp or Twitter<br><br>Values:<br>Twitter<br>WhatsApp  |
| **CLASSE**  | According to Shifman (2014) and Chagas et al. (2019), this variable describes the function performed by the political meme.<br><br>Values:<br>(1) Persuasive Meme<br>(2)Grassroots Action Meme<br>(3) Public Discussion Meme<br>(0) Others/Ambiguity  |
| **CAMPANHA**  | If there is any element of negative campaign in the meme.<br><br>Values:<br>(1) Negative Campaign<br>(0) No Negative Campaign  |
| **DESINFO_CONSP**  | If there is any element of conspiracy or misinformation in the meme.<br><br>Values:<br>(1) Conspiracy or Misinformation<br>(0) No Conspiracy or Misinformation  |
| **PANDEMIA**  | If there is any reference to the pandemics in the meme.<br><br>Values:<br>(1) Content refers to pandemics<br>(0) Content does not refer to pandemics  |
| **PRO_CONTRA**  | If the meme is supportive or against Bolsonaro.<br><br>Values:<br>(1) Content supporting Bolsonaro and/or his government<br>(2) Content against Bolsonaro and/or his government<br>(0) Not clear  |
| **VAR_CONTEXTUAL**  | If the image provides all context to the message.<br><br>Values:<br>(1) Context to content fully provided by the image<br>(0) Context to content not fully provided by the image  |


## Recognizing the files

| File / Folder  | Description |
| ------------- | ------------- |
| figures  | Selected images from corpus  |
| analysis.R and analysis.RData  | Script and data for descriptive statistics |
| figure_meme_examples.R  | Script for generating image poster |
| join_hashtags.R and join_hashtags.RData  | Script and data for cleaning the db |
| krippalpha.R and krippalpha.RData  | Reliability tests and results  |


## Using this data

All data presented in our GitHub repositories is provided AS-IS. There are no warranties, expressed or implied, of fitness for a particular purpose, and there is no support provided by coLAB researchers.

All data must be referenced as provided by the Research Laboratory for Communication, Political Cultures and Economies of Collaboration (coLAB). In all derivative works, including graphics, tables, or other materials, an attribution should be made as follows:

English version:
> Source: Research Laboratory for Communication, Political Cultures and Economies of Collaboration (coLAB).

Portuguese version:
> Fonte: Laboratório de Pesquisa em Comunicação, Culturas Políticas e Economia da Colaboração (coLAB).

All derivative works using data from this repository must be equally licensed under a CC BY-NC-SA license.

Commercial or private use of the data is not allowed. For this situation, please contact the owners to request authorization. Private and commercial use includes the publication, partially or in full, of the materials available in this repository, without prior authorization, in didactic or commercial books, audiovisual or any other work without the same license adopted for the data available in this repository.

In omitted cases, prior consultation with those responsible is recommended, via email [colab@midia.uff.br](http://mailto:colab@midia.uff.br), for general guidance on the use of data.


## Licensing

All data available in this repository is licensed under a Creative Commons [CC BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/3.0/) license. Please refer to license clauses to resolve doubts about its use.

