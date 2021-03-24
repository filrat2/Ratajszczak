install.packages("stringr")

library(stringr)

# zadanie 6.1.

plik_tekstowy1 = "TERYT 18; podkarpackie; Rzeszów; 0.2 He; A"
plik_tekstowy2 = "TERYT 22; pomorskie;   Gdańsk; 12 C ; B"

str_sub(plik_tekstowy1, start = -5, end = -3)
str_sub(plik_tekstowy2, start = -5, end = -3)

# zadanie 6.2.

horoskop = function(imie, miesiac){
  if((miesiac %% 2) == 0){
    cat(paste("Osoba o imieniu", imie, "będzie miała jutro szczęście."))
  } else (cat(paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście.")))
  r.na = TRUE
}

horoskop("Filip", 5)

horoskop("Antoni", 12)

# zadanie 6.3.



# zadanie 6.4.



# zadanie 6.5.