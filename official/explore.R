### Esther exploratory data analysis
library(plyr)

# Load the data into one data set (harder than it sounds)
options(stringsAsFactors = FALSE)
sp12 <- read.csv("sp12.csv")
sp11 <- read.csv("sp11.csv")
sp10 <- read.csv("sp10.csv")
sp09 <- read.csv("sp09.csv")
sp08 <- read.csv("sp08.csv")
sp07 <- read.csv("sp07.csv")
sp06 <- read.csv("sp06.csv")
sp05 <- read.csv("sp05.csv")
fa12 <- read.csv("fa12.csv")
fa11 <- read.csv("fa11.csv")
fa10 <- read.csv("fa10.csv")
fa09 <- read.csv("fa09.csv")
fa08 <- read.csv("fa08.csv")
fa07 <- read.csv("fa07.csv")
fa06 <- read.csv("fa06.csv")
fa05 <- read.csv("fa05.csv")
fa04 <- read.csv("fa04.csv")

# Create two new variables: year and semester
fa12$year <- "2012-2013"
sp12$year <- "2011-2012"
fa11$year <- "2011-2012"
sp11$year <- "2010-2011"
fa10$year <- "2010-2011"
sp10$year <- "2009-2010"
fa09$year <- "2009-2010"
sp09$year <- "2008-2009"
fa08$year <- "2008-2009"
sp08$year <- "2007-2008"
fa07$year <- "2007-2008"
sp07$year <- "2006-2007"
fa06$year <- "2006-2007"
sp06$year <- "2005-2006"
fa06$year <- "2005-2006"
sp05$year <- "2004-2005"
fa05$year <- "2004-2005"

# Join the data sets
