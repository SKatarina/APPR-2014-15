 # Analiza podatkov s programom R, 2014/15

Avtor: Katarina Šutar

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2014/15.

## Tematika

Vsaka država se rada pohvali s svojimi športniki in tudi Slovenija ni izjema. Imamo nekaj vrhunskih smučarskih skakalcev, ki se lahko pohvalijo s svojimi izjemnimi rezultati svetovnega ranga. V svojem projektu bom primerjala osvojene zmage, nagrade in najvišje zaslužke po sezonah ženskih in moških tekmovalcev ter moške ekipne zmage. Analizirala bom tudi države zmagovalke svetovnega pokala glede na vse zmage (ločene po skakalnicah).Cilj je tudi primerjati rekorde najdaljših skokov po državah.

V pomoč mi bodo podatki iz wikipedie:
http://sl.wikipedia.org/wiki/Svetovni_pokal_v_smu%C4%8Darskih_skokih
http://en.wikipedia.org/wiki/Ski_jumping

## Program

Glavni program se nahaja v datoteki `projekt.r`. Ko ga poženemo, se izvedejo
programi, ki ustrezajo drugi, tretji in četrti fazi projekta:

* obdelava, uvoz in čiščenje podatkov: `uvoz/uvoz.r`
* analiza in vizualizacija podatkov: `vizualizacija/vizualizacija.r`
* napredna analiza podatkov: `analiza/analiza.r`

Vnaprej pripravljene funkcije se nahajajo v datotekah v mapi `lib/`. Podatkovni
viri so v mapi `podatki/`. Slike, ki jih program naredi, se shranijo v mapo
`slike/`. Zemljevidi v obliki SHP, ki jih program pobere, se shranijo v mapo
`zemljevid/`.

## Poročilo

Poročilo se nahaja v mapi `porocilo/`. Za izdelavo poročila v obliki PDF je
potrebno datoteko `porocilo/porocilo.tex` prevesti z LaTeXom. Pred tem je
potrebno pognati program, saj so v poročilu vključene slike iz mape `slike/`.
