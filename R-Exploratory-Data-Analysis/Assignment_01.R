rm(list = ls())
## libraries
library(dplyr)

## 1η Εργασία - Διάλεξη με κ.Δέρβο Δημήτριο. 

## Ερώτημα 1, Αρχικά δεδομένα - CSV_κ.Δέρβος_Toyota.

ts <- read.csv("C:/Users/30694/Desktop/Διερευνητική Ανάλυση και Οπτικοποίηση Δεδομένων/Διάλεξη_2η/Εργασία_1η/Toyota_Sales.csv", header = TRUE, row.names = 1, sep = ",")
ts = data.frame(ts)

### Ερώτημα 2, η επί τοις % αύξηση των πωλήσεων σε οχήματα.

# Υπολογισμός % και κράτημα 2 δεκαδικών ψηφίων.
tm <- ts %>%
  mutate(across(, ~ round((.-lag(.))/lag(.) * 100,  2)))

tm[1, -1] <- NA


print(tm)


# Ερώτημα 3, Νεο dataframe  ωστε να υπολογίσω τα έσοδα για κάθε περιοχή σε εκατομμύρια ευρώ. 
euro_earnings <-(( ts * 1300)/1000000)
print(euro_earnings)



# Νέο dataframe, για να υπολογιστούν τα δολάρια / Ερώτημα 4


isotimia = c(0.783,0.784,0.937,0.940,0.923,0.923)

us_dollar_earnings = euro_earnings



us_dollar_earnings[1,] = euro_earnings[1,] / isotimia[1]
us_dollar_earnings[2,]  = euro_earnings[2,] / isotimia[2]
us_dollar_earnings[3,] = euro_earnings[3,] / isotimia[3]
us_dollar_earnings[4,] = euro_earnings[4,] / isotimia[4]
us_dollar_earnings[5,] = euro_earnings[5,] / isotimia[5]
us_dollar_earnings[6,] = euro_earnings[6,] / isotimia[6]

# Ανανέωση του dataframe us_dollar_earnings, με στόχο τη δημιουργία νέας κατηγορίας με τα συνολικά κέρδη.

# Δημιουργία νέας στήλης συνολικού κόστους / sum
us_dollar_earnings$Year_Total_USD <- rowSums(us_dollar_earnings[, 1:5])


print(us_dollar_earnings)


### Ερωτημα 6. Νέο dataframe year_totals   με 3 στήλες.

Year_total_euro<- rowSums(euro_earnings[, 1:5])


year_totals <- data.frame(
  Year = c(2013, 2014, 2015, 2016, 2017, 2018),
  Year_Total_EUR = Year_total_euro,
  Year_Total_USD = us_dollar_earnings$Year_Total_USD
)


print(year_totals)









