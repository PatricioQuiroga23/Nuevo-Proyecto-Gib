
renv::init()

library(usethis)

usethis::use_git()

install.packages("renv")

install.packages(c("usethis", "renv", "gh"))

use_git_config(user.name = "PatricioQuiroga23", user.email = "paqt1988@gmail.com")

usethis::use_github()

usethis::create_github_token()

usethis::edit_r_environ()

usethis::git_sitrep()

library(tesseract)

eng <- tesseract("eng")

text <- tesseract::ocr("http://jeroen.github.io/images/testocr.png", engine = eng)

cat(text)

cat(text)

cat(text)






