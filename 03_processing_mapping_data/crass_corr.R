#if(!require(dplyr)) install.packages("dplyr")
library(dplyr)                                
#if(!require(ggplot2)) install.packages("ggplot2") 
library(ggplot2)
#if(!require(corrplot)) install.packages("corrplot") 
library(corrplot)

dados <- read.csv2('env_data.tsv', stringsAsFactors = T,fileEncoding = "latin1",sep='\t')
dados

# Log-transform the numeric columns
numeric_columns <- c("pH", "EC", "TDS", "DO", "population", "deforestation")
dados[numeric_columns] <- log(dados[numeric_columns])

View(dados)                                  
glimpse(dados)  

shapiro.test(dados$pH)
shapiro.test(dados$EC)
shapiro.test(dados$TDS)
shapiro.test(dados$DO)
shapiro.test(as.numeric(dados$population))
shapiro.test(as.numeric(dados$deforestation))

cor.test(dados$DO, dados$EC, method = "spearman")
cor.test(dados$DO, dados$TDS, method = "spearman")
cor.test(dados$EC, dados$TDS, method = "spearman")
cor.test(dados$pH, dados$population, method = "spearman")

matriz <- cor(dados[3:ncol(dados)], method = "spearman")
#View(matriz)

corrplot(matriz, method = "color", 
         type = "upper", order = "hclust", 
         addCoef.col = "black", # adiciona o coeficiente ? matriz
         tl.col = "black", tl.srt = 45, # cor e rota??o do nome das vari?veis
         diag = FALSE,# n?o mostrar a diagonal principal
         col=colorRampPalette(c("yellow3","white","purple4"))(200))










