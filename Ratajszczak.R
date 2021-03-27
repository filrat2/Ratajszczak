install.packages("stringr")

library(stringr)

# zadanie 6.1.

plik_tekstowy1 = 'TERYT 18; podkarpackie; Rzeszów; 0.2 He; A'
plik_tekstowy2 = 'TERYT 22; pomorskie;   Gdańsk; 12 C ; B'

str_sub(plik_tekstowy1, start = -5, end = -3)
str_sub(plik_tekstowy2, start = -5, end = -3)

# zadanie 6.2.

horoskop = function(imie, miesiac){
  if((miesiac %% 2) == 0){
    cat(paste('Osoba o imieniu', imie, 'będzie miała jutro szczęście.'))
  } else (cat(paste('Osoba o imieniu', imie, 'będzie miała jutro nieszczęście.')))
  r.na = TRUE
}

horoskop('Filip', 5)

horoskop('Antoni', 12)

# zadanie 6.3.

horoskop_kmz = function(imie, miesiac){
  if (str_detect(imie, pattern = '^K|^k|^M|^m|^Z|^z')){
    cat(paste('Osoba o imieniu', imie, 'będzie miała jutro szczęście.'))
  } else (cat(paste('Osoba o imieniu', imie, 'będzie miała jutro nieszczęście.')))
  r.na = TRUE
}

horoskop_kmz('Kamila', 5)

horoskop_kmz('zuza', 12)

horoskop_kmz('Marek', 5)

horoskop_kmz('Filip', 5)

horoskop_kmz('Antoni', 12)


# zadanie 6.4.

przykladowy_fragment = '2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 2019-marzec-14: 14.3'

str_replace_all(przykladowy_fragment, pattern = "[\\:][^03.13:][0-9]+[\\.][0-9]+",
                replacement = "")

# zadanie 6.5.

wartosci = str_extract_all(przykladowy_fragment, pattern = "[^03.13:][0-50]+[\\.][0-9]+")
wartosci

