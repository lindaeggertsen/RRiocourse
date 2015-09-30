##R course DAY TWO 
##29 Sept 2015


# load packages -----------------------------------------------------------


library(ggplot2)

# load gapminder data -----------------------------------------------------

gapminder <- read.csv2(file.choose(),h=T)

gapminder <- read.csv("data/gapminder(1).csv")

# subsetting review -------------------------------------------------------

#methods of subsetting
#x[a] for vectors

x <- c(10:1)
x
x[3] #gives you the third element

# x[a,b] for matrices, data.frames
x <- list(c(1:10), c(10:20))
x

# x["a"] or ["b"] vector, data frame or matrix

x <- c(1:10)
names(x) <- letters[1:10]
x
x["b"]

letters
LETTERS

#x[[a]] lists and data frames

x <- list(c(1:10), c(10:20))
x
x[[1]] #first vector stored inside the list

#x$a the dollarsign gives you the column with the name after the dollarsign

names(x) <- c("one","two")
x
x$two

##more complex subsetting
#<,>,==

#%in%

x <- c(1:10)
names(x) <- letters[1:10]
x
#this doesnt work

x==c(4,5,6)

#so you need to use the %in% operator

x[x%in% c(4,5,6)]

x[names(x) %in% c("d","e","f")]

gapminder[gapminder$country =="Brazil",]

# Challenge

gapminder[gapminder$year==1957,]
gapminder[-(1:4)]
gapminder[,-(1:4)]

gapminder[gapminder$lifeExp>80,]

gapminder[-1, -c(4:5)] #plockar bort dessa rader ut datasettet
head(gapminder[-1, -c(4:5)])  # -1 extracts line 1, -c(4:5) extracts column 4 to 5
gapminder[1, c("lifeExp", "gdpPercap")]
gapminder[1, c(4,5)]

g1 <- gapminder[gapminder$year==2002,] #här plockar vi ut bitarna ur dtasettet och binder sedan ihop dem med rbind
g2 <- gapminder[gapminder$year==2007,]
rbind(g1, g2)

gapminder[gapminder$year==2002|2007,] #"|" means OR
gm <- gapminder[gapminder$year==2002|2007,]
head(gm)
gm$year

gapminder$year==2002
gapminder$year==2007

gapminder[gapminder$year==2002|gapminder$year==2007,]
gm2 <- gapminder[gapminder$year==2002|gapminder$year==2007,] 
head(gm2)
gm2$year

gapminder$year %in% c(2002,2007)
gm3 <- gapminder[gapminder$year %in% c(2002,2007),]
gm3
