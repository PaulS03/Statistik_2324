daten <- read.csv("C://Users//pauls//Desktop//Statistik//tut1_2023.csv")

daten

# first 6
head(daten)

head(daten,20)

#dimensions (181 abolute values and 3 variables)
dim(daten)

#all values for Handy
daten$Handy

#vales from 1 to 10 for Handy
daten$Handy[1:10]

#second column
daten[,2]

#row five
daten[5,]

#all rows from 1 to 5
daten[1:5,]

#bool value for Geschlecht == "weiblich"
daten$Geschlecht=="weiblich"

# sum of all TRUE values
sum(daten$Geschlecht=="weiblich")
sum(daten$Geschlecht!="weiblich")
sum(daten$Geschlecht=="maennlich")

w <- sum(daten$Geschlecht=="weiblich")

m <- sum(daten$Geschlecht=="maennlich")

n <- sum(daten$Geschlecht!="weiblich"&daten$Geschlecht!="maennlich")

g <- w+m+n

w
m
n
g

#frequency of each unique values for a variable
table(daten$Partner)

#percentage
table(daten$Partner)/181

#two nachkommastellen
round(table(daten$Partner)/181,2)

sum(round(table(daten$Partner)/181,2))

hist(daten$Handy)

##################################################################

#Aufgabe_01

mABS <- sum(daten$Geschlecht=="maennlich")
mPCT <- mABS/181*100

#Aufgabe_02


#Aufgabe_03

m_daten <- daten$Handy[daten$Geschlecht=="maennlich"]
w_daten <- daten$Handy[daten$Geschlecht=="weiblich"]

m_mean <- mean(m_daten)
m_mean
w_mean <- mean(w_daten)
w_mean

if (m_mean > w_mean) {
  print("Männer verbringen mehr Zeit am Handy als Frauen.")
} else if (w_mean > m_mean) {
  print("Frauen verbringen mehr Zeit am Handy als Männer.")
} else {
  print("Männer und Frauen verbringen  gleich viel Zeit am Handy")
}






