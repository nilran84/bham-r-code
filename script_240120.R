

write.csv(x=cats, file="data/feline_data_2.csv",row.names=FALSE)

cats <- read.csv(file="data/feline_data_2.csv", row.names=1)

write.csv(x=cats, file="data/feline_data_2.csv",row.names=TRUE)

write.csv(x=cats, file="data/feline_data_2.csv",row.names=FALSE)

write.csv(x=cats, file="data/feline_data_2.csv",row.names=TRUE)

write.csv(x=cats, file="data/feline_data_2.csv",row.names=TRUE)

cats <- data.frame (coat = c("calico", "black", "tabby"), 
                      +                     weight = c(2.1, 5.0, 3.2),
                      +                     likes_string = c(1,0,1))

cats <- data.frame (coat = c("calico", "black", "tabby"),
                    weight = c (2.1,5.0,3.2),
                    likes_string = c(1,0,1))
                    
                    write.csv(x=cats, file="data/feline_data_2.csv",row.names=TRUE)       
                    
data.matrix <- matrix(data=c(1:20),ncol=5, nrow = 4) 

new_row <- c(1,6,8,9,"a")

rbind ( data.matrix, new_row)

new_row <- c("black", 5.2, TRUE)

str (rbind (cats,new_row))

new_row <- list (coat="black", weight=4.1, likes_string=FALSE)

str(rbind(cats, new_row))

cats$new_column <- c(1,4,5)

dim(data.matrix)

dim(new_row)

length (new_row)
length
dim(cats)  
lenth(cats)
length(cats)

data.matrix <- matrix(data =c(1:50), ncol =   5, nrow = 10)
vec <- c(1,3)

mat <- matrix(1:3, ncol = 2, nrow = 3)
dframe <- data.frame (x=c(1,4,7,8,9),
                      y=c("a","b","c","d","e"))
ldata <- list(x=c(1:5), y=c("a","b","c","e"))

vec[c(2,1)]
mat[1,2]
ldata[1]

gapminder <- read.csv(file="data/gapminder-FiveYearData.csv")
dim(gapminder)
length(gapminder)
str(gapminder)
nrow(gapminder)
ncol(gapminder)


head(gapminder)
tail(gapminder)

gapminder[78:82]
gapminder[78:82,]

sample (1:7000, 10)
gapminder[78:82,1:2]
gapminder[78:82,10]

m <- matrix(1:18, nrow = 3,ncol = 6)
print(m)
m[4:5,2]
m[2,4,2,5]
m[2:5]
m[2,c(4,5)]
m[,]
m[,1]

x<- 8
if (x>= 10){
  print("x is greater than or equal 10 ")
} else {
  print("x is samller")
      }
gapminder[,2]
gapminder$year
if (gapminder$year==2002) {
  print (" record found for 2002")
  } else {
    print ("no records found")
  }
gapminder[gapminder$year==2002,]
rows2002_number <- nrow(gapminder[(gapminder$year==2002)])
 continents <- unique(gapminder$continent)  
                     
for (continent in continents){
  logical_val <- gapminder$continent==continent
  lifeExp_sub <-gapminder$lifeExp[logical_val]
  mean_val <- mean(lifeExp_sub)
  if (mean_val<=55){
    cat ("Life expectance less or equl ti 55", continent, "larger than 55"/n)
  } else {
    print (" life expectancy more than 50")
  }
}
 
 library(ggplot2)
 
 ggplot (data=gapminder, aes(x=year, y=lifeExp, by=country, color= continent)) +
   geom_line(aes(color=continent)) + geom_point()
ggplot (data=gapminder, aes((x=gdpPercap, y=lifeExp, color=continent))+ geom_point()+ scale_x_log10() 

        
starts <- substr(gapminder$country, start=1, stop = 1)
az.countries <- gapminder[starts %in% c("A", "Z"),]

ggplot(data=az.countries,aes(x=year, y=lifeExp, color=continent))+ geom_line()+facet_wrap(~country)
                        
                                  