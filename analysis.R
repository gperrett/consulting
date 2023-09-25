library(here)
library(readr)

path <- here::here()

print(path)
filepath <- paste0(path, '/example.csv')

cat('\n')

dat <- readr::read_csv(filepath)


sate <- with(dat, mean(y1 - y0))

cat('True SATE:', sate)

cat('\n')


print(summary(lm(y ~ z + X, data = dat)))
