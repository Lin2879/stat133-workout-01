##################################################
## title:Generating Charts
## description: generates shot charts using the shot data
## inputs: the processed shot data csv file
## output: corresponding shot charts of the data
##################################################

library(jpeg)
library(grid)
library(ggplot2)

##Read the processed data csv file and select each player's data seperately
dat = read.csv('../data/shots-data.csv')
curry = dat[dat$name == 'Stephen Curry', ]
durant = dat[dat$name == 'Kevin Durant', ]
green = dat[dat$name == 'Draymond Green', ]
iguodala = dat[dat$name == 'Andre Iguodala', ]
thompson= dat[dat$name == 'Klay Thompson', ]

##Read the court image and prepare raste object of the court image 
court_file = '../images/nba-court.jpg'
court_image = rasterGrob(
  readJPEG(court_file), 
  width = unit(1, "npc"),
  height = unit(1, "npc"))

## Creating shot charts for each player
curry_shot_chart = ggplot(data = curry) + 
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') +
  theme_minimal()

durant_shot_chart = ggplot(data = durant) + 
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') +
  theme_minimal()

green_shot_chart = ggplot(data = green) + 
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') +
  theme_minimal()

iguodala_shot_chart = ggplot(data = iguodala) + 
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') +
  theme_minimal()

thompson_shot_chart = ggplot(data = thompson) + 
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()

##Export the charts as pdf files
pdf(file = '../images/stephen-curry-shot-chart.pdf', width = 6.5, height = 5)
curry_shot_chart
dev.off()

pdf(file = '../images/kevin-durant-shot-chart.pdf', width = 6.5, height = 5)
durant_shot_chart
dev.off()

pdf(file = '../images/draymond-green-shot-chart.pdf', width = 6.5, height = 5)
green_shot_chart
dev.off()

pdf(file = '../images/andre-iguodala-shot-chart.pdf', width = 6.5, height = 5)
iguodala_shot_chart
dev.off()

pdf(file = '../images/klay-thompson-shot-chart.pdf', width = 6.5, height = 5)
thompson_shot_chart
dev.off()

##Create facetted shot chart
gsw_shot_charts <-  ggplot(data = dat[, c(2, 10, 15, 16)]) + 
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart:GSW (2016 season)') +
  theme_minimal() + 
  theme(legend.position = 'top') +
  facet_wrap(~ name)

##Export the chart as pdf file and png file
pdf(file = '../images/gsw-shot-charts.pdf', width = 8, height = 7)
gsw_shot_charts
dev.off()

png(file = '../images/gsw-shot-charts.png', units = 'in', res = 1000, width = 8, height = 7)
gsw_shot_charts
dev.off()
