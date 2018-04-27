# R Code for the analysis of HUC 1 - 10 in the Appomattox Ri. Watershed

## Metadata
 * Created by Kenneth Fortino
 * GIS Data compiled by Jonathan Milisci
 * Created on 25 April 2018
 *  Modified

### Project Description

## Analysis

### Import Data

    huc1 <- read.table("./data/Huc1.csv", header = T, sep = ",")
    huc2 <- read.table("./data/Huc2.csv", header = T, sep = ",")
    huc3 <- read.table("./data/Huc3.csv", header = T, sep = ",")
    huc4 <- read.table("./data/Huc4.csv", header = T, sep = ",")
    huc5 <- read.table("./data/Huc5.csv", header = T, sep = ",")
    huc6 <- read.table("./data/Huc6.csv", header = T, sep = ",")
    huc7 <- read.table("./data/Huc7.csv", header = T, sep = ",")
    huc8 <- read.table("./data/Huc8.csv", header = T, sep = ",")
    huc9 <- read.table("./data/Huc9.csv", header = T, sep = ",")
    huc10 <- read.table("./data/Huc10.csv", header = T, sep = ",")
   
#### Plot Frequency Histograms
    
    hist(huc1$AreaSqKm)
    
#### Plot Area by Rank
    
    plot(AreaSqKm ~ Rank, data = huc5, type = "l")

    sum(huc1$AreaSqKm)
    