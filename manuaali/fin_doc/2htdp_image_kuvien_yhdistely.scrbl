;#lang scribble/base
#lang scribble/manual

@(require scriblib/figure)
@(require 2htdp/image)
@(require (for-label fin-doc/fi-beginner))
@(require (for-label fin-doc/fi-image))
@(require scribble/core
           scribble/html-properties)
@(require scribble/eval)

@(require teachpack/2htdp/scribblings/img-eval
          scribble/decode)
@(define img-eval (make-img-eval))

@(define-syntax-rule 
   (image-examples exp ...)
   (examples #:eval img-eval exp ...))

@(define-syntax-rule 
   (image-interaction exp ...)
   (interaction #:eval img-eval exp ...))

@(define-syntax-rule
   (image-interaction/margin num exp)
   (begin
     (racketinput exp)
     (img-eval '(extra-margin num))
     (interaction-eval-show #:eval img-eval exp)
     (img-eval '(extra-margin 0))))
     
@declare-exporting[fin-doc/fi-image]

@title[#:tag "2htdp_image_kuvien_yhdistely" #:style 'toc]{Kuvien yhdistely}

@defproc[(overlay [k1 kuva] [k2 kuva] [k3 kuva] ...) kuva]{

  Luo kuvan asettelemalla argumentteina saadut @index["kuvien asettelu päällekkäin"]{kuvat päällekkäin}. Ensimmäisenä
  annettu kuva tulee päällimmäiseksi. Kuvat linjataan niin, että niiden keskipisteet asettuvat päällekkäin.
 
  @image-examples[(overlay (rectangle 30 60 "solid" "blue")
                           (ellipse 60 30 "solid" "purple"))]
  }

@defproc[(beside [k1 kuva] [k2 kuva] [k3 kuva] ...) kuva]{

  Luo kuvan asettelemalla argumentteina saadut kuvat @index["kuvien asettelu vierekkäin"]{vaakariviin}, niin että niiden keskipisteet ovat samalla viivalla.

  @image-examples[(beside (ellipse 20 70 "solid" "red")
                          (rectangle 20 50 "solid" "pink")
                          (circle 10 "solid" "red"))]
  }

@defproc[(above [k1 kuva] [k2 kuva] [k3 kuva] ...) kuva]{

 Luo kuvan asettelemalla argumentteina saadut kuvat @index["allekkain"]{pystyriviin}, niin että niiden keskipisteet ovat samalla viivalla.

  @image-examples[(above (ellipse 70 20  "solid" "red")
                          (rectangle 50 20  "solid" "pink")
                          (circle 10 "solid" "red"))]

  }

@defproc[(overlay/xy [k1 kuva] [x reaaliluku] [y reaaliluku] [k2 kuva]) kuva]{

  Luo kuvan asettamalla kuvan @racket[k1] kuvan @racket[k2] @index["kuvien asettelu vapaasti"]{päälle}.
  Kuvat ovat aluksi linjattu niin, että niiden vasemmat yläkulmat ovat päällekkäin, sitten 
  kuvaa @racket[i2] siirretään oikealle @racket[x] pikselin verran ja alas @racket[y] pikselin verran.
  
  @image-examples[(overlay/xy (circle 15 "solid" "red")
                              0 0
                              (rectangle 30 30 "solid" "blue"))
                  (overlay/xy (circle 15 "solid" "red")
                              0 15
                              (rectangle 30 30 "solid" "blue"))
                  (overlay/xy (circle 15 "solid" "red")
                              0 -15
                              (rectangle 30 30 "solid" "blue"))
                  (overlay/xy (circle 15 "solid" "red")
                              15 0
                              (rectangle 30 30 "solid" "blue"))
                  (overlay/xy (circle 15 "solid" "red")
                              -15 0
                              (rectangle 30 30 "solid" "blue"))]
                  
}