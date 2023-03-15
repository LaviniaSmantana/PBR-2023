(
    deffacts citeste_vecini (citeste_vecini DA)
)

(
    deffacts citeste_culori (citeste_culori DA)
)

(
    deffacts citeste_tari (citeste_tari DA)
)


(    defrule citeste_culori
    ?c <- (citeste_culori DA)
    =>
    (printout t "Culoarea: ")
    (assert (culoare (read)))
    (printout t "Continuati?(DA/NU) ")
    (retract ?c)
    (assert (citeste_culori (read)))
)

(
    defrule citeste_tari
    ?c <- (citeste_tari DA)
    =>
    (printout t "Tara: ")
    (assert (tara (read)))
    (printout t "Continuati?(DA/NU) ")
    (retract ?c)
    (assert (citeste_tari (read)))
)

(
    defrule citeste_vecini
    ?n <- (citeste_vecini DA)
    =>
    (printout t "Vecini: ")
    (assert (vecini (read) (read)))
    (printout t "Continuati?(DA/NU) ")
    (retract ?n)
    (assert (citeste_vecini (read)))
)

(
    defrule dublare
    (vecini ?x ?y)
    =>
    (assert (vecini ?y ?x))
)

(
    defrule asociare_culoare
    (culoare $? ?x $?)
    (tara $? ?y $?)
    =>
    (assert (pereche ?y ?x))
)

(
    defrule eliminare_pereche(declare (salience 40)) // folosim aceasta regula pentru a elimina perechile de tara - culoare in plus
    ?a <- (pereche ?x ?y)       //aici avem o pereche de tara si culoare            
    ?b <- (pereche ?x ?z)        // aici aveem celelate perechi care au aceiasi tara ca a dar culori diferite          
    (vecini ?x ?w)               // daca avem vecini cu tara x ii vom retine in w          
    ?c <- (pereche ?w ?y)         // in c vom retine perechea w-tara si culoarea y de la ?a           
    (pereche ?w ?z)               //verificam daca avem perechi care sa contina w si alte culori decat a            
    (test (neq ?y ?z))            // aici verificam ca culorile ?y si ?z sa nu fie egale
    =>
    (retract ?b)           // aici eliminam toate perechile care au tara ?x si culoarea diferita de ?y
    (retract ?c)            //aici eliminam toate perechile tarilor care sunt vecine cu ?x si au aceiasi culoare ca el
) 

(
  defrule verificare_perechi_ramase (declare (salience 30))
    ?a <- (pereche ?w ?y)     // retinem o pereche de tara  culoare                             
    ?b <- (pereche ?x ?z)      //retinem o pereche de tara culoare                         
    ?c <- (pereche ?x ?q)      //retinem o perehe de aceiasi tara ca la b dar alta culoare                        
    (test (neq ?q ?z))            // verificam daca culorile de la ?b si c? nu sunt egale (adica o tara are mai multe culori posibile)       
    (test (eq ?y ?z))               // verificam daca  culorile de la ?a si ?b coincid     
    (or (vecini ?w ?x) (vecini ?x ?w)) // si daca prima si a 2 tara sunt tari vecine
    =>
    (retract ?b) // atunci eliminam perechea ?b care are aceiasi culoare ca si prima tara si sunt vecini.Vor ramane ?a si ?c care au sigur culori diferite
 
)
 
(
    defrule test_solutie_finala(declare (salience 20)) 
    ?a <- (pereche ?w ?y) // o pereche
    ?b <- (pereche ?x ?y) // o alta pereche cu aceiasi culoare
    (vecini ?w ?x) // daca sunt tari vecine
    =>
    (printout t "Nu exista solutie" crlf)  // nu putem gasi o solutie cu asa putine culori
)







