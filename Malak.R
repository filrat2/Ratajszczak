# zadanie 1

library(stringr)

tekst1 = "TERYT 18; podkarpackie; Rzeszów; 0.2 He; A"
tekst2 = "TERYT 22; pomorskie;   Gdańsk; 12 C ; B"

str_sub(tekst1, start = -5, end = -4)
str_sub(tekst2, start = -5, end = -4)

# zadanie 2

horoskop = function(imie, miesiac){
  if((miesiac %% 2) == 0){
    cat(paste("Osoba o imieniu", imie, "będzie miała jutro szczęście."))
  }else(cat(paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście.")))
  r.na = TRUE
}

horoskop("Jan", 9)
horoskop("Jan,", 10)

# zadanie 3

horoskop_2 = function(imie, miesiac){
  if(str_detect(imie, pattern = "^K|^M|^Z") || ((miesiac %% 2) == 0)){
    cat(paste("Osoba o imieniu", imie, "będzie miała jutro szczęście."))
  }else(cat(paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście.")))
  r.na = TRUE
}

horoskop_2("Zbigniew", 9)
horoskop_2("Bartek", 9)
horoskop_2("Alicja", 10)

# zadanie 4

pomiary = "2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 
2019-marzec-14: 14.3"

daty = str_extract_all(pomiary,
                       pattern = "[0-9]+[\\-|//.][a-z0-9]+[\\-|//.][0-9]+")
daty

# zadanie 5

wart_funkcja = str_extract_all(pomiary, pattern = "[0-9]+[\\.][0-9]?[^\\,]")
wart_funkcja
wartosci = as.data.frame(wart_funkcja[[1]][-3])
wartosci
