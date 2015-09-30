### Functions
### for analyzing gapminder data
### Linda
### September 29, 2015


#function to calculate the CV
##takes a vector of numbers
## returns the cv


cal_CV <- function(x){
  mean_x <- mean(x)
  sd_x <- sd(x)
  CV <- sd_x/mean_x
  return(CV)
}
  
name <- function(variables) {
    
}

##go from circumference to diameter
circum_to_diameter <- function(circ){
  diam <- circ/pi
  return(diam)
}

##radius from diameter
radius_from_diameter <- function(diam){
  radius <- diam/2
  return(radius)
}

##calculate the area from the radius
radius_to_area <- function(radius){
  area <- pi*radius^2
  return(area)
}

##start with circumference and get the area
area_from_circum <- function(circum){
##get the diameter from circumference
  diam <- circum_to_diameter(circum)
##get the radius
  rad <- radius_from_diameter(diam)
##calculate area from radius
Area <- radius_to_area(rad)
return(Area)
}

