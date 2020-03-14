#Script to convert file names of daily reports to YYYY-MM-DD format

list.files()
setwd("csse_covid_19_data")
list.files()
setwd("csse_covid_19_daily_reports")
file_names <- list.files()
pattern <- "\\d{2}[.-]\\d{2}[.-]\\d{4}"
extr_dates <- unlist(regmatches(file_names, gregexpr(pattern, file_names)))
corrected <- paste0(as.Date(extr_dates, format = "%m-%d-%Y"), ".csv")
corrected <- c(corrected, "README.md")
file.rename(from = file_names, to = corrected)


