#o objetivo desse script é exercitar os conhecimentos adquiridos na matéria de Data Wrangling do
#curso de MBA DSA USP/ESALQ


#instalando os pacotes necessários

install.packages("tidyverse")
library("tidyverse")
library(readxl)

#importando os arquivos em excel

ob_init <- read_excel("Backlog 17.12.xlsx")
fat_init <- read_excel("Faturamento 17.12.xlsx")

#limpando o dataset: tirando as linhas 1:5, depois transformando a 6º linha em texto e,
#depois, em cabeçalho e apagando a sexta linha (que agora é a primeira) e colunas que
#não são usadas, além de melhoria nos títulos das variáveis

ob_2 <- ob_init[-c(1:5),]
names(ob_2) <- as.character(ob_2[1,])
ob_2 <- ob_2[-1,]

#fazendo a mesma limpeza para o arquivo de faturamento

fat_2 <- fat_init[-c(1:5),]
names(fat_2) <- as.character(fat_2[1,])
fat_2 <- fat_2[-1,]

#próximos passos

#1 carregar o arquivo de backlog anterior
#2 adicionar o order booking acima
#3 adicionar o faturamento acima
#4 carregar o arquivo de logística
#5 procurar a referência de NF e trazer a data da entrega
#6 para os casos que existam data de entrega, marcar dentro do arquivo de backlog
#7 summarize dos itens de order booking e faturamento (por mês)
#8 status atual do backlog

