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
    
    huc1_density <- density(huc1$AreaSqKm) 
    huc2_density <- density(huc2$AreaSqKm) 
    huc3_density <- density(huc3$AreaSqKm) 
    huc4_density <- density(huc4$AreaSqKm) 
    huc5_density <- density(huc5$AreaSqKm) 
    huc6_density <- density(huc6$AreaSqKm) 
    huc7_density <- density(huc7$AreaSqKm) 
    huc8_density <- density(huc8$AreaSqKm) 
    huc9_density <- density(huc9$AreaSqKm) 
    huc10_density <- density(huc10$AreaSqKm) 
    plot(huc1_density, ylim = c(0, 150), xlim = c(0, 0.5))
    points(huc2_density, col = 2, type = "l")
    points(huc3_density, col = 3, type = "l")
    points(huc4_density, col = 4, type = "l")
    points(huc5_density, col = 5, type = "l")
    points(huc6_density, col = 6, type = "l")
    points(huc7_density, col = 7, type = "l")
    points(huc8_density, col = 8, type = "l")
    points(huc9_density, col = 9, type = "l")
    points(huc10_density, col = 10, type = "l")
    
#### Plot CumArea by Rank
    
    plot(CumArea ~ Rank, data = huc1, type = "p", ylim = c(0, 20), xlim = c(0, 800), ylab = expression(paste("Cumulative Surface Area (km"^{2}, ")")), xlab = "Rank", pch = 19, cex = 0.5, col = "darkgoldenrod2")
    points(CumArea ~ Rank, data = huc2, type = "p", pch = 19, cex = 0.5, col = "cyan2")
    points(CumArea ~ Rank, data = huc3, type = "p", pch = 19, cex = 0.5, col = "lightpink2")
    points(CumArea ~ Rank, data = huc4, type = "p", pch = 19, cex = 0.5, col = "green2")
    points(CumArea ~ Rank, data = huc5, type = "p", pch = 19, cex = 0.5, col = "skyblue2")
    points(CumArea ~ Rank, data = huc6, type = "p", pch = 19, cex = 0.5, col = "gray28")
    points(CumArea ~ Rank, data = huc7, type = "p", pch = 19, cex = 0.5, col = "firebrick2")
    points(CumArea ~ Rank, data = huc8, type = "p", pch = 19, cex = 0.5, col = "yellow")
    points(CumArea ~ Rank, data = huc9, type = "p", pch = 19, cex = 0.5, col = "lightcoral")
    points(CumArea ~ Rank, data = huc10, type = "p", pch = 19, cex = 0.5, col = "purple")

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
    boxplot(huc1$AreaSqKm, huc2$AreaSqKm, huc3$AreaSqKm, huc4$AreaSqKm, huc5$AreaSqKm, huc6$AreaSqKm, huc7$AreaSqKm, huc8$AreaSqKm, huc9$AreaSqKm, huc10$AreaSqKm, ylim = c(0, 0.02))
    
#### Boxplot log10 area
    boxplot(log10(huc1$AreaSqKm), log10(huc2$AreaSqKm), log10(huc3$AreaSqKm), log10(huc4$AreaSqKm), log10(huc5$AreaSqKm), log10(huc6$AreaSqKm), log10(huc7$AreaSqKm), log10(huc8$AreaSqKm), log10(huc9$AreaSqKm), log10(huc10$AreaSqKm), col = 8)

#### Calculate area for all HUCs        
    total_area <- c(huc1$AreaSqKm, huc2$AreaSqKm, huc3$AreaSqKm, huc4$AreaSqKm, huc5$AreaSqKm, huc6$AreaSqKm, huc7$AreaSqKm, huc8$AreaSqKm, huc9$AreaSqKm, huc10$AreaSqKm)
    stem(total_area)
    boxplot(total_area)
    boxplot(log10(total_area))
    hist(log10(total_area))
    plot(density(total_area))
##### Plot of Surface Area by Rank for All Lakes
    par(las = 1, mar = c(5, 5, 5, 5))
    plot(1:length(total_area), sort(total_area), pch = 19, cex = 0.5, ylab = expression(paste("Surface Area (km"^{2}, ")")), xlab = "Rank")
    abline(h = 0)
    
### Calculate the density of lakes and ponds per HUC
#### Make a data.frame of pond numbers per HUC
    huc_name <- 1:10
    pond_number <- c(max(huc1$Rank), max(huc2$Rank), max(huc3$Rank), max(huc4$Rank), max(huc5$Rank), max(huc6$Rank), max(huc7$Rank), max(huc8$Rank), max(huc9$Rank), max(huc10$Rank))
    pond_density <- pond_number / ((huc_areas$huc_areas) / 1000000) # should be in ponds per km2 but need to confirm
    pond_dens <- data.frame(huc_areas, pond_number, pond_density)
    
    
    par(las = 1, mar = c(5, 5, 5, 5))
    plot(pond_density ~ huc_names, data = pond_dens, ylim = c(0, 2), ylab = expression(paste("Lake Density (Lakes km"^{-2}, ")")), xlab = "Watershed Name", pch = 19, axes = F, col = c("lightgoldenrod2", "cyan2", "lightpink2", "green2", "skyblue2", "gray28", "firebrick2", "yellow", "lightcoral", "purple"))
    points(pond_density ~ huc_names, data = pond_dens)
    axis(2)
    axis(1, c(1:10), at = 1:10)
    box()

    boxplot(pond_density, ylim = c(0, 2))
    
### Calculate the pond area : huc area
#### Make a data.frame of cumulative area to WS area
    huc_name <- 1:10
    cum_area <- c(max(huc1$CumArea), max(huc2$CumArea), max(huc3$CumArea), max(huc4$CumArea), max(huc5$CumArea), max(huc6$CumArea), max(huc7$CumArea), max(huc8$CumArea), max(huc9$CumArea), max(huc10$CumArea))
    PA_WSA <- cum_area / ((huc_areas$huc_areas) / 1000000) # should be in km2 but need to confirm
    pond_ws_ratio <- data.frame(huc_areas, cum_area, PA_WSA)
    
##### Visualize Cumulative Pond Area to WS area
    boxplot(PA_WSA * 100, ylim = c(0, 5))
    
    par(las = 1, mar = c(5, 5, 5, 5))
    plot(PA_WSA * 100 ~ huc_name, ylim = c(0, 5), ylab = "Percent of Watershed Area in Ponds or Lakes", xlab = "Watershed Name", pch = 19, axes = F, col = c("lightgoldenrod2", "cyan2", "lightpink2", "green2", "skyblue2", "gray28", "firebrick2", "yellow", "lightcoral", "purple"))
    points(PA_WSA * 100 ~ huc_name) 
    axis(2)
    axis(1, c(1:10), at = 1:10)
    box()

### Calculate the percent of the pond area comprised by each pond by rank
    huc1_perc_cum_area <- (huc1$AreaSqKm / max(huc1$CumArea) * 100)
    huc2_perc_cum_area <- (huc2$AreaSqKm / max(huc2$CumArea) * 100)
    huc3_perc_cum_area <- (huc3$AreaSqKm / max(huc3$CumArea) * 100)
    huc4_perc_cum_area <- (huc4$AreaSqKm / max(huc4$CumArea) * 100)
    huc5_perc_cum_area <- (huc5$AreaSqKm / max(huc5$CumArea) * 100)
    huc6_perc_cum_area <- (huc6$AreaSqKm / max(huc6$CumArea) * 100)
    huc7_perc_cum_area <- (huc7$AreaSqKm / max(huc7$CumArea) * 100)
    huc8_perc_cum_area <- (huc8$AreaSqKm / max(huc8$CumArea) * 100)
    huc9_perc_cum_area <- (huc9$AreaSqKm / max(huc9$CumArea) * 100)
    huc10_perc_cum_area <- (huc10$AreaSqKm / max(huc10$CumArea) * 100)
    
    par(las = 1, mar = c(5, 5, 5, 5))
    plot(huc1_perc_cum_area ~ huc1$Rank, type = "p", ylim = c(0, 70), xlim = c(0, 800), pch = 19, cex = 0.5, ylab = "Percent of Cumulative Lake Area", xlab = "Rank", col = "darkgoldenrod3")
    points(huc2_perc_cum_area ~ huc2$Rank, type = "p", ylim = c(0, 65), pch = 19, cex = 0.5, col = "cyan2")
    points(huc3_perc_cum_area ~ huc3$Rank, type = "p", ylim = c(0, 65), pch = 19, cex = 0.5, col = "lightpink2")
    points(huc4_perc_cum_area ~ huc4$Rank, type = "p", ylim = c(0, 65), pch = 19, cex = 0.5, col = "green2")
    points(huc5_perc_cum_area ~ huc5$Rank, type = "p", ylim = c(0, 65), pch = 19, cex = 0.5, col = "skyblue2")
    points(huc6_perc_cum_area ~ huc6$Rank, type = "p", ylim = c(0, 65), pch = 19, cex = 0.5, col = "gray28")
    points(huc7_perc_cum_area ~ huc7$Rank, type = "p", ylim = c(0, 65), pch = 19, cex = 0.5, col = "firebrick2")
    points(huc8_perc_cum_area ~ huc8$Rank, type = "p", ylim = c(0, 65), pch = 19, cex = 0.5, col = "yellow")
    points(huc9_perc_cum_area ~ huc9$Rank, type = "p", ylim = c(0, 65), pch = 19, cex = 0.5, col = "lightcoral")
    points(huc10_perc_cum_area ~ huc10$Rank, type = "p", ylim = c(0, 65), pch = 19, cex = 0.5, col = "purple")
    
    