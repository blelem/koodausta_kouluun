;#lang scribble/base
#lang scribble/manual
@(require scriblib/figure)
@(require 2htdp/image)
@(require (for-label fin-doc/fi-beginner))
@(require (for-label fin-doc/fi-image))
@(require scribble/core
           scribble/html-properties)
@(require scribble/eval)

@declare-exporting[fin-doc/fi-beginner]

@title[#:tag "racket_bsl" #:style 'toc]{Racket BSL - kieli}

Tässä käsikirjassa esitelty ohjelmointikieli, Racket BSL (Beginning Student Language), on alunperin kehitelty käytettäväksi ohjelmoinnin opettamiseen @italic{@link["http://www.htdp.org/"]{How to Design
Programs}} kirjan kanssa. Tähän suomenkieliseen käsikirjaan on otettu vain pieni osa alkuperäisistä toiminnoista, koska Koodausta kouluun materiaalin tehtävät eivät vaadi
kaikkia toimintoja. Löydät kielen täydellisen kuvauksen osoitteesta:
@url{http://docs.racket-lang.org/htdp-langs/beginner.html}

Tämän käsikirjan esittelemät toiminnot toimivat sekä @italic{@link["http://download.racket-lang.org/"]{DrRacket}:ssä},
että @italic{@link["http://www.wescheme.org/"]{WeScheme}:ssä}, muutamaa poikkeusta lukuunottamatta. Nämä on mainittu
ko. toiminnon yhteydessä.

DrRacket:ssä Racket BSL on asetettava käyttöön @italic{Languages} - valikon kautta, WeScheme tukee sitä suoraan.

@italic{Huom!} Tässä käsikirjassa käytetään termejä @italic{Racket BSL} ja @italic{Racket-kieli} toistensa synonyymeinä. Huomaa kuitenkin, että
 vaikka Racket BSL muistuttaakin hyvin paljon varsinaista Racket-kieltä, nämä ovat kaksi eri ohjelmointikieltä.
                                                                           
@local-table-of-contents[#:style 'unnumbered]

@include-section{racket_bsl_syntaksi.scrbl}
@include-section{racket_bsl_luvut.scrbl}
@include-section{racket_bsl_totuusarvot.scrbl}
@include-section{racket_bsl_kuvat.scrbl}
@include-section{racket_bsl_merkkijonot.scrbl}
@include-section{racket_bsl_listat.scrbl}
@include-section{racket_bsl_posn.scrbl}
@include-section{racket_bsl_muut.scrbl}


