vaccine_df <- read.csv(file="StudentData.csv", header=TRUE, sep=",")

vaccine_df$MMR <- round((vaccine_df$nMMR/vaccine_df$n * 100), digits=2)
vaccine_df$DTP <- round((vaccine_df$nDTP/vaccine_df$n * 100), digits=2)
vaccine_df$Polio <- round((vaccine_df$nPolio/vaccine_df$n * 100), digits=2)
vaccine_df$PBE <- round((vaccine_df$nPBE/vaccine_df$n * 100), digits=2)
vaccine_df$PME <- round((vaccine_df$nPME/vaccine_df$n * 100), digits=2)

vaccine_df <- vaccine_df[-c(6:10)]

write.csv(vaccine_df, 'StudentData_clean.csv')
