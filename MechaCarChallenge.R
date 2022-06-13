## import libraries

library(dplyr)
library(tidyverse)

##Deliverable1

df <- read.csv(file="resources/MechaCar_mpg.csv")

model <- lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, df)

summary(model)

model$coefficients

##Deliverable 2

suspension_df <- read.csv(file="resources/Suspension_Coil.csv")

total_summary <- summarize(suspension_df,Mean=mean(PSI),Medain=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- suspension_df%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI),Medain=median(PSI),Variance=var(PSI),SD=sd(PSI))}

##Deliverable 3

t.test(log10(suspension_df$PSI),mu=log10(1500))

lot_1=subset(suspension_df,Manufacturing_Lot=="Lot1")
lot_2=subset(suspension_df,Manufacturing_Lot=="Lot2")
lot_3=subset(suspension_df,Manufacturing_Lot=="Lot3")

t.test(log10(lot_1$PSI),mu=log10(1500))
t.test(log10(lot_2$PSI),mu=log10(1500))
t.test(log10(lot_3$PSI),mu=log10(1500))

