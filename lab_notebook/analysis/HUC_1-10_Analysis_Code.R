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
    huc_areas <- read.table("./data/huc_areas.csv", header = T, sep = ",")
   
#### Plot Frequency Histograms
    
    hist(huc1$AreaSqKm)
    
#### Plot CumArea by Rank
    
    plot(CumArea ~ Rank, data = huc1, type = "l", ylim = c(0, 20), xlim = c(0, 800))
    points(CumArea ~ Rank, data = huc2, type = "l", lty = 2)
    points(CumArea ~ Rank, data = huc3, type = "l", lty = 3)
    points(CumArea ~ Rank, data = huc4, type = "l", lty = 4)
    points(CumArea ~ Rank, data = huc5, type = "l", lty = 5)
    points(CumArea ~ Rank, data = huc6, type = "l", lty = 6)
    points(CumArea ~ Rank, data = huc7, type = "l", lty = 7)
    points(CumArea ~ Rank, data = huc8, type = "l", lty = 8)
    points(CumArea ~ Rank, data = huc9, type = "l", lty = 9)
    points(CumArea ~ Rank, data = huc10, type = "l", lty = 10)

#### Log transformed Cum Area by Rank    
    plot(log10(CumArea) ~ Rank, data = huc1, type = "l", ylim = c(-4, 2), xlim = c(0, 800))
    points(log10(CumArea) ~ Rank, data = huc2, type = "l", lty = 2)
    points(log10(CumArea) ~ Rank, data = huc3, type = "l", lty = 3)
    points(log10(CumArea) ~ Rank, data = huc4, type = "l", lty = 4)
    points(log10(CumArea) ~ Rank, data = huc5, type = "l", lty = 5)
    points(log10(CumArea) ~ Rank, data = huc6, type = "l", lty = 6)
    points(log10(CumArea) ~ Rank, data = huc7, type = "l", lty = 7)
    points(log10(CumArea) ~ Rank, data = huc8, type = "l", lty = 8)
    points(log10(CumArea) ~ Rank, data = huc9, type = "l", lty = 9)
    points(log10(CumArea) ~ Rank, data = huc10, type = "l", lty = 10)

#### log log plot of Cum Area
    plot(log10(CumArea) ~ log10(Rank), data = huc1, type = "l", ylim = c(-4, 2), xlim = c(1, 3))
    points(log10(CumArea) ~ log10(Rank), data = huc2, type = "l", lty = 2)
    points(log10(CumArea) ~ log10(Rank), data = huc3, type = "l", lty = 3)
    points(log10(CumArea) ~ log10(Rank), data = huc4, type = "l", lty = 4)
    points(log10(CumArea) ~ log10(Rank), data = huc5, type = "l", lty = 5)
    points(log10(CumArea) ~ log10(Rank), data = huc6, type = "l", lty = 6)
    points(log10(CumArea) ~ log10(Rank), data = huc7, type = "l", lty = 7)
    points(log10(CumArea) ~ log10(Rank), data = huc8, type = "l", lty = 8)
    points(log10(CumArea) ~ log10(Rank), data = huc9, type = "l", lty = 9)
    points(log10(CumArea) ~ log10(Rank), data = huc10, type = "l", lty = 10)

#### Boxplot area
    boxplot(huc1$AreaSqKm, huc2$AreaSqKm, huc3$AreaSqKm, huc4$AreaSqKm, huc5$AreaSqKm, huc6$AreaSqKm, huc7$AreaSqKm, huc8$AreaSqKm, huc9$AreaSqKm, huc10$AreaSqKm)

#### Boxplot log10 area
    boxplot(log10(huc1$AreaSqKm), log10(huc2$AreaSqKm), log10(huc3$AreaSqKm), log10(huc4$AreaSqKm), log10(huc5$AreaSqKm), log10(huc6$AreaSqKm), log10(huc7$AreaSqKm), log10(huc8$AreaSqKm), log10(huc9$AreaSqKm), log10(huc10$AreaSqKm), col = 8)

#### Calculate area for all HUCs        
    total_area <- c(huc1$AreaSqKm, huc2$AreaSqKm, huc3$AreaSqKm, huc4$AreaSqKm, huc5$AreaSqKm, huc6$AreaSqKm, huc7$AreaSqKm, huc8$AreaSqKm, huc9$AreaSqKm, huc10$AreaSqKm)
    stem(total_area)
    hist(log10(total_area))
    
### Calculate the density of lakes and ponds per HUC
#### Make a data.frame of pond numbers per HUC
    huc_name <- 1:10
    pond_number <- c(max(huc1$Rank), max(huc2$Rank), max(huc3$Rank), max(huc4$Rank), max(huc5$Rank), max(huc6$Rank), max(huc7$Rank), max(huc8$Rank), max(huc9$Rank), max(huc10$Rank))
    pond_density <- pond_number / ((huc_areas$huc_areas) / 1000000) # should be in ponds per km2 but need to confirm
    pond_dens <- data.frame(huc_areas, pond_number, pond_density)
    