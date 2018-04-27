# Code to Analyze the Freq Distributions of Ponds
## File Created 2 March 2018
## File Modified:

##Jonathan Milisci

#Huc code one
##Import data

H1 <- read.table("Data/Huc1.csv", header = T, sep = ",") 

## Create Data Frame for HUC Areas

HUC_name <- c(1:3) 
HUC_area <- c(83390411.8085, 87787756.8741, 128994230.7982) 
huc1_area <- sum(HUC_area)

HUC_areas <- data.frame(HUC_name, HUC_area)

#Huc code two
##Import data

H2 <- read.table("Data/Huc2.csv", header = T, sep = ",") 

## Create Data Frame for HUC Areas

HUC_name <- c(1:6) 
HUC_area <- c(31409186.9569, 135077298.4035, 68140842.2801, 81470026.2470, 111204006.8965, 80765156.1950) 
huc2_area <- sum(HUC_area)

HUC_areas <- data.frame(HUC_name, HUC_area)

#Huc code three
##Import data

H3 <- read.table("Data/Huc1.csv", header = T, sep = ",") 

## Create Data Frame for HUC Areas

HUC_name <- c(1:5) 
HUC_area <- c(110135964.3181, 87879113.4712, 45113992.7973, 1113502947.9472, 44791153.1199)
huc3_area <- sum(HUC_area)

#Huc code four
##Import data

H4 <- read.table("Data/Huc1.csv", header = T, sep = ",") 

## Create Data Frame for HUC Areas

HUC_name <- c(1:6) 
HUC_area <- c(62786826.3491, 65195216.4785, 98899734.4793, 37286984.7919, 49874984.6280, 97255674.5953) 
huc4_area <- sum(HUC_area)


HUC_areas <- data.frame(HUC_name, HUC_area)

HUC_areas <- data.frame(HUC_name, HUC_area)


#Huc code five
##Import data

H5 <- read.table("Data/Huc1.csv", header = T, sep = ",") 

## Create Data Frame for HUC Areas

HUC_name <- c(1:4) 
HUC_area <- c(84641360.3010, 99472348.2113, 66551399.8903, 115038667.5358) # put in HUC areas from GIS
huc5_area <- sum(HUC_area)

HUC_areas <- data.frame(HUC_name, HUC_area)


#Huc code six
##Import data

H6 <- read.table("Data/Huc1.csv", header = T, sep = ",") 

## Create Data Frame for HUC Areas

HUC_name <- c(1:4) 
HUC_area <- c(145571052.7757, 104011195.1397, 139376005.4641, 64930455.1340)
huc6_area <- sum(HUC_area)

HUC_areas <- data.frame(HUC_name, HUC_area)

#Huc code seven
##Import data

H7 <- read.table("Data/Huc1.csv", header = T, sep = ",") 

## Create Data Frame for HUC Areas

HUC_name <- c(1:5) 
HUC_area <- c(103554813.1446, 148321550.2232, 82530827.5989, 124174064.5403, 73057310.1865) 
huc7_area <- sum(HUC_area)

HUC_areas <- data.frame(HUC_name, HUC_area)

#Huc code eight
##Import data

H8 <- read.table("Data/Huc1.csv", header = T, sep = ",") 

## Create Data Frame for HUC Areas

HUC_name <- c(1:5) 
HUC_area <- c(45105700.1175, 163305811.0332, 56635179.0612, 47374649.3671, 170120035.0496) 
huc8_area <- sum(HUC_area)
HUC_areas <- data.frame(HUC_name, HUC_area)

#Huc code nine
##Import data

H9 <- read.table("Data/Huc1.csv", header = T, sep = ",") 

## Create Data Frame for HUC Areas

HUC_name <- c(1:4) 
HUC_area <- c(110724075.3427, 77879581.4894, 115258903.7883, 166879825.2347) 
huc9_area <- sum(HUC_area)
HUC_areas <- data.frame(HUC_name, HUC_area)

#Huc code ten
##Import data

H10 <- read.table("Data/Huc1.csv", header = T, sep = ",") 

## Create Data Frame for HUC Areas

HUC_name <- c(1:2) 
HUC_area <- c(149787365.2030, 94571975.0184) 
huc10_area <- sum(HUC_area)

huc_names <- 1:10
huc_areas <- c(huc1_area, huc2_area, huc3_area, huc4_area, huc5_area, huc6_area, huc7_area, huc8_area, huc9_area, huc10_area)
huc_areas <- data.frame(huc_names, huc_areas)

write.table(huc_areas, "./data/huc_areas.csv", quote = F, row.names = F, sep = ",")

