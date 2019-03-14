##################################################
## title:Data Preparation
## description: add new attributes and modify some attributes to the
##              csv files, then stack them to create a new data csv 
##              file. Also summaries all the data csv files.
## inputs: the data csv files of all GSW players
## output: some summary files as text files and a new data csv file
##################################################

##Read raw data of the players
curry <- read.csv('../data/stephen-curry.csv', stringsAsFactors = FALSE)
durant <- read.csv('../data/kevin-durant.csv', stringsAsFactors = FALSE)
green <- read.csv('../data/draymond-green.csv', stringsAsFactors = FALSE)
iguodala <- read.csv('../data/andre-iguodala.csv', stringsAsFactors = FALSE)
thompson <- read.csv('../data/klay-thompson.csv', stringsAsFactors = FALSE)

##Add new column "name" for each data frame
curry$name = 'Stephen Curry'
durant$name = 'Kevin Durant'
green$name = 'Draymond Green'
iguodala$name = 'Andre Iguodala'
thompson$name = 'Klay Thompson'

##Change original values of column "shot_made_flag" to more descriptive values
curry$shot_made_flag[curry$shot_made_flag == "n"] = "shot_no"
curry$shot_made_flag[curry$shot_made_flag == "y"] = "shot_yes"
durant$shot_made_flag[durant$shot_made_flag == "n"] = "shot_no"
durant$shot_made_flag[durant$shot_made_flag == "y"] = "shot_yes"
green$shot_made_flag[green$shot_made_flag == "n"] = "shot_no"
green$shot_made_flag[green$shot_made_flag == "y"] = "shot_yes"
iguodala$shot_made_flag[iguodala$shot_made_flag == "n"] = "shot_no"
iguodala$shot_made_flag[iguodala$shot_made_flag == "y"] = "shot_yes"
thompson$shot_made_flag[thompson$shot_made_flag == "n"] = "shot_no"
thompson$shot_made_flag[thompson$shot_made_flag == "y"] = "shot_yes"

##Add a new column "minute" to indicate the minute number where a shot occured
curry$minute = (curry$period - 1) * 12 + curry$minutes_remaining
durant$minute = (durant$period - 1) * 12 + durant$minutes_remaining
green$minute = (green$period - 1) * 12 + green$minutes_remaining
iguodala$minute = (iguodala$period - 1) * 12 + iguodala$minutes_remaining
thompson$minute = (thompson$period - 1) * 12 + thompson$minutes_remaining

##A bit of reordering to make the sequence of the columns better
curry = curry[, c(14, 1, 2, 3, 4, 5, 6, 15, 7, 8, 9, 10, 11, 12, 13)]
durant = durant[, c(14, 1, 2, 3, 4, 5, 6, 15, 7, 8, 9, 10, 11, 12, 13)]
green = green[, c(14, 1, 2, 3, 4, 5, 6, 15, 7, 8, 9, 10, 11, 12, 13)]
iguodala = iguodala[, c(14, 1, 2, 3, 4, 5, 6, 15, 7, 8, 9, 10, 11, 12, 13)]
thompson = thompson[, c(14, 1, 2, 3, 4, 5, 6, 15, 7, 8, 9, 10, 11, 12, 13)]

##Send the summary output to individual text files
sink('../output/stephen-curry-summary.txt')
summary(curry)
sink('../output/kevin-durant-summary.txt')
summary(durant)
sink('../output/draymond-green-summary.txt')
summary(green)
sink('../output/andre-iguodala-summary.txt')
summary(iguodala)
sink('../output/klay-thompson-summary.txt')
summary(thompson)
sink()

##Stack the tables into one single data frame
dat = rbind(curry, durant, green, iguodala, thompson)

##Export the assembled table 
write.csv(dat, '../data/shots-data.csv')

##Send the summary output of the new data frame to a text file
sink('../output/shots-data-summary.txt')
summary(dat)
