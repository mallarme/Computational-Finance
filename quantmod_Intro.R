install.packages("quantmod")    #Instala a biblioteca quantmod
library("quantmod")             #Carrega

#Sele��o do per�odo de an�lise
startDate = as.Date("2014-05-01") 
endDate = as.Date("2014-11-21")

#Sele��o das a��es
tickers <- c("GOOG","PETR4.SA")

#Download dos dados do per�odo
?getSymbols
getSymbols(tickers, src = "yahoo", from = startDate, to = endDate)

#Mostra os primeiros 5 registros para as a��es da Petrobras
head(PETR4.SA,5)

#Analisando os dados de fechamento do Google
?Cl
head(Cl(GOOG),5)

#Gr�fico de candlestick da Petrobras
candleChart(PETR4.SA)

#Adicionado as bandas de bollinger ao gr�fico, com m�dia de 20 per�odos e 2 desvios
?addBBands
addBBands(n=20, sd=2)

#Adicionando o indicador ADX, m�dia 11 do tipo exponencial
?addADX
addADX(n = 11, maType="EMA")

#Lets get the technical indicator values saved into a variable
#Note must give it a single time series (I gave it the close price in this example)
indicatorValuesBBands <- BBands(Cl(IBM),n=50, sd=2)
