usethis::use_git()

#install.packages("pdftools")
#install.packages("tesseract")

library(pdftools)
library(tesseract)
library(tidyverse)


# Using poppler version 22.04.0
border_patrol <- pdf_text("usbp_stats_fy2017_sector_profile.pdf")

head(border_patrol)

length(border_patrol)

border_patrol[1]

strsplit("criminology", split = "n")

sector_profile <- border_patrol[1]

sector_profile <- strsplit(sector_profile, "\n")

sector_profile <- sector_profile[[1]]

head(sector_profile)

sector_profile <- trimws(sector_profile)

sector_profile

grep("Miami", sector_profile)

grep("Nationwide Total", sector_profile)
sector_profile <- sector_profile[grep("Miami", sector_profile):
                                   grep("Nationwide Total", sector_profile)]

head(sector_profile)

library(stringr)

sector_profile <- str_split_fixed(sector_profile, " {2,}", 10)

head(sector_profile)

sector_profile <- data.frame(sector_profile)

