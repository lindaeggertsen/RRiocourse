#R course UFRJ 28092015
2+2

##objects

x<-5
x*2
x^3

##math functions
x^10
log(x)
log10(x)
sin(30)  #ALWAYS the name of the function (here sin) and then a parentese 
#with your data

?sin    #info om the given function

x
x>2 #is x bigger than 2?
x<3 #is x smaller than 3?
x==5 #double euqal sign to ask if x IS a given number (here 5)
x<-1000
x
mass <- 47.5
age <- 122
mass <- mass*2.3
age <- age-20
mass>age  #is mass larger than age?

#save your file as ".R" instead of text file, like this you know it is an R file

## Data types

#logical
a <- TRUE
b <- FALSE

#integer

c <-5L

#double

d <- 5

#complex numbers
e<-1+2i
e

#character
f <- "cat"

#What type of data type do I have? 
typeof(c) #put your name of the variable in the brackets
typeof(d)

is.integer(c) #is c an integer?

is.double(c)
is.character(c)
is.logical(c)

is.logical(answer)
answer <- TRUE
height <- 10
dog_name <- "leia"

is.logical(answer) #test your variables
is.numeric(height)
is.character(dog_name)

##Data structure

#Vector can hold several values but all must be the same data type

vec1 <- vector("character")
vec2 <- vector("character",length = 5)

vec3 <- c(1,2,3,4,5)
vec3
vec4 <- c(0:100)
vec4

vec5 <- seq(0,100,by=0.5)
vec5

vec6 <- c(TRUE, 10L, "cat")
vec6
typeof(vec6)

as.double(vec6)

#getting information about an objects structure

x <- 0:1000
 length(x)
 head(x)
 tail(x)
 
 ages <- c(23,24,25,32,49)
 ages
 
 names(ages)<-c("Juliana", "Rodrigo","Carlos", "Bella", "Andrew")
 ages
 
 typeof(ages)
 
 
 #answer is double because these numbers CAN have decimals (they do not have but they could)
 #the fact that the vector has names does not change the data type which is double
 
 x <- c(5,6,7,8)
 y <- c(5L, 6L,7L,8L)
 x
 y
 is.numeric(x)
 is.numeric(y)
 typeof(x)
 typeof(y)
 is.double(x)
 is.double(y)
 
 #so both x and y are numeric but integer and double
 
 ##Matrices
 
 x <- matrix(1:10, nrow=5, ncol=2)x
 x
 str(x)
 
 rownames(x)<-c("a", "b", "c","d","e")
 colnames(x)<-c("a","b")
 x
 
 rnorm(18) #18 random number from the normal distribution w standard dev 1
 
 x <- matrix(rnorm(18), ncol=6,nrow=3)
 x
 length(x)
 
 x <- matrix(1:50, ncol=5, nrow=10)
 x
 
?matrix
 
 is.logical(x)
 
 is.logical(x) #If FALSE, by default filled by column
 
 x<-matrix(1:50,ncol=5,nrow=10)
 x
 
 x <- matrix(1:50, ncol=5, nrow=10, byrow=TRUE) #fill by row instead of column
 x
 
#words TRUE and FALSE cannot be changed!!
 
##factors
 
 x <- factor(c("yes","no", "yes","yes"))
 x
 typeof(x)
 str(x)   #structure of x
 
 x <- factor(c("case","control","control","case"), levels=c("control","case")) #with function levels
 #the order of control and case is reversed - otherwise it is put in alphabetic order
 x
 str(x)
 
 ##Lists: contain multiple data types
 
 x <- list(1,"a",TRUE, 5L)
 x
 
 xlist <- list(name="Iris Data", nums=1:10, data=head(iris))
 xlist
 
 #Data Frame (list of vectors and because it is a list of vectors it can contain multiple data types)
 
 df <- data.frame(a=c(1,2,3),b=c("a","b","c"), c=c(TRUE, FALSE, FALSE))
 df
 
 df <- data.frame(id = c('a','b','c','d','e','f'), x=1:6, y=c(214:219))
df
length(df)  #detta blir 3 eftersom dataframen är uppbyggd av listor, inte nummer

#Adding rows and columns to data frames

rbind(df,df) #adds rows

cbind(df,df) #adds columns

df <- data.frame(id=c('Linda'),x='Eggertsen', y=c(33))
df
df2<-data.frame(id=c('Ana Cecilia'),x='Riguete', y=c(25))
df2
rbind(df,df2)
df3 <- data.frame(id=c('Vinicius'), x='Giglio',y=c(31))
df3
rbind(df, df2, df3)

total <- rbind(df,df2)
str(total)

###subsetting
###taking out parts of larger objects

x <- c(5.4,6.2,7.1,4.8,7.5)
names(x) <- c("a","b","c","d","e")
x
typeof(x)
is.double(x)
is.numeric(x)

x[1]
x
x[3]
x[c(3,5)]
x[2:4]
 
x[c(1,1,1,4)]
x[10]  #NA = Not Available, there is no 10th number

x[1:5]
x[5:1] #the other way around

##skipping elements from a vector

x[-1]
x[-c(2,4)]
x[c(-2,-4)]


x <- c(5.4,6.2,7.1,4.8,7.5)
names(x) <- c('a','b','c','d','e')
x
x[-c(1,5)]
x[c(-1,-5)]
x[2:4]
x[c(2,3,4)]
x[c("b","c","d")]

##subsetting by name

x["a"] #column name in brackets

names(x)
names(x)=="b"
is_it_b <- names(x)=="b"
x[is_it_b]

##for matching multiple things

names(x)%in% c("b","c","d")
names(x)

x[names(x) %in% c("b","c","d")]

##multiple conditions

a <- 1:10
a
a>7

a[a>7]
a[a<7]
a[a<=7]
1:5*2
1:5*1:5

#####CHALLENGE

x
##write a subsetting command to return the values in x that are greater than 4
AND less than 7

x
x[x>4&x<7]
a <- x>4
b <- x<7
a
b
a&b
x[a&b]
as.character(100)
as.numeric(FALSE)
as.numeric(TRUE)
as.logical(0)
as.logical(200000)
x
#how many times is x greater than 6? 

as.numeric(x>6)
sum(x>6)
x&TRUE

##matrices

set.seed(1)
rnorm(6*4)
m <- matrix(rnorm(6*4), ncol=4,nrow=6)
m
m[1:3,c(2,3)] #first 3 rows, 2nd and 3rd column

m[,3]

m <- matrix(1:18, nrow=3, ncol=6)
print(m)

#subsetting lists
xlist <- list(a="UFRJ",b=1:10, c=head(iris))
xlist
xlist["a"]
xlist$"a"
xlist[1]
xlist[[1]]
xlist[["a"]]
unil <- xlist[1]
uni2 <- xlist[[1]]
unil
uni2
typeof(unil)
typeof(uni2)

#why does one bracket give us a list and two a character? med 1 bracket
#får vi listan på position 1, med två brackets endast innehållet i listan!!!!
  
xlist[["b"]]
newobj <- xlist[["b"]]
newobj[2]
xlist[["b"]][2]

##reading in data
gapminder <- read.csv("gapminder(1).csv")
head(gapminder)
str(gapminder)
gapminder
gapminder[1:2,]
gapminder$country

gapminder$pop
BRASIL <- gapminder$country=="Brazil"
gapminder[BRASIL,]

##plotting

library(ggplot2)
ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap)) + geom_point()    #aes= estetics, hur grafen ska se ut..
  
##GDP over time
ggplot(data=gapminder, aes(x=year, y=gdpPercap)) + geom_point()
ggplot(data=gapminder, aes(x=year, y=gdpPercap, color=country)) + geom_point()

##line plots
ggplot(data=gapminder, aes(x=year, y=lifeExp, color=country))+geom_line()
ggplot(data=gapminder, aes(x=year, y=lifeExp, color=country))+geom_line()+geom_point()
ggplot(data=gapminder, aes(x=year, y=lifeExp))+geom_line(aes(colour=country))+geom_point()
ggplot(data=gapminder, aes(x=year, y=lifeExp))+geom_line(aes(colour=country))+geom_point(color="blue")

##switch the order
ggplot(data=gapminder, aes(x=year, y=lifeExp))+geom_point(colour="blue")+geom_line(aes(color=country))

#transformations and statistics

ggplot(gapminder, aes(x=lifeExp, y= gdpPercap))+geom_point()+scale_y_log10()

ggplot(gapminder, aes(x=lifeExp,y= gdpPercap, colour=continent))+geom_point()+scale_y_log10()+
  stat_smooth(method="lm")

gapminder[gapminder$year>1990,]
head(gm90)
gm90<-gapminder[gapminder$year>1990,]
head(gm90)
ggplot(gm90, aes(x=lifeExp, y=gdpPercap))+geom_point()+scale_y_log10()+geom_smooth(method="lm")
ggplot(gm90, aes(x=lifeExp, y=gdpPercap))+geom_point()+scale_y_log10()
+geom_smooth(method="lm")+facet_wrap(~year)
ggplot(gm90, aes(x=lifeExp, y=gdpPercap))+geom_point()+scale_y_log10()+
stat_smooth(method="lm") + facet_grid(continent~year)