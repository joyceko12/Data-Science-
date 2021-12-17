## Final Project 
## Joyce Ko 

setwd()

## Read Data
data <- read.csv("naas.csv")

## Subset Data to Only Asian Americans 
aapi <- subset(data, raceeth > 10)
aapiobs <- length(aapi$q4_5a)
aapiobs

## Subset Data to Asian Americans who intend to vote for Clinton 
clinton <- subset(aapi, q4_5a == 1)
clintonobs <- length(clinton$q4_5a)
clintonobs

## Subset Data to Asian Americans who intend to vote for Trump 
trump <- subset(aapi, q4_5a == 2)
trumpobs <- length(trump$q4_5a)
trumpobs

## Proportions of Vote Intentions 
demproportion <- clintonobs/aapiobs
demproportion

repproportion <- trumpobs/aapiobs
repproportion


## compare to 2020 vote intentions by "APIA VOTE"
## Findings: 54% plan to vote for Biden; 30% plan to vote for Trump
demmargin <- .54 - demproportion
demmargin 
repmargin <- .30 - repproportion
repmargin

table(demmargin,repmargin)
