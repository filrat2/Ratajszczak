#1

tekst1 = "TERYT 18; podkarpackie; Rzeszów; 0.2 He; A"
tekst2 = "TERYT 22; pomorskie;   Gdańsk; 12 C ; B"
tekst1
tekst2


install.packages("stringr")


stringr::str_sub(tekst1, start = -5, end = -4)
stringr::str_sub(tekst2, start = -5, end = -4)

#2


horoskop =  function (imie, miesiac){
  if (is.numeric(miesiac)){
     if (miesiac%%2==0){
      paste("Osoba o imieniu", imie, "będzie miała jutro szczęście")
  
    } else {
      paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście")
      
    }
  }
}

horoskop("Dawid" , 9)
horoskop("Kasia", 2)
horoskop("Ola", 7)
horoskop("Kinga", 11)

#3
install.packages("stringr")
library(stringr)

horoskop =  function (imie, miesiac){
  if (is.numeric(miesiac)){
    if(str_detect(imie, pattern = "(^K|^L|^M)")){
      paste("Osoba o imieniu", imie, "będzie miała jutro szczęście")
      
    } else if (miesiac%%2==0){
      paste("Osoba o imieniu", imie, "będzie miała jutro szczęście")
      
    } else {
      paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście")
      
    }
  }
}

horoskop("Dawid" , 9)
horoskop("Kasia", 7)
horoskop("Ola", 1)
horoskop("Lucjan", 3)
horoskop("Mateusz", 2)
horoskop("Milena", 3)

#4 
pomiary = "2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 2019-marzec-14: 14.3"

str_extract_all(pomiary, "[0-9]{2,4}.[0-9a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ]{2,11}.[0-9]{2}")


#5

pomiary = "2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 2019-marzec-14: 14.3"

str_extract_all(pomiary, "[0-9][0-9][.][0-9]")