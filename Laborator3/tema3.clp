(deffacts fapte-initiale
  (printout t "Bun venit!" crlf)
  (meniu)
  (studenti)
)

(defrule main-menu
  ?a <- (meniu)
  =>
  (retract ?a)
  (printout t "Selectați o opțiune:" crlf)
  (printout t "1. Adaugă un student." crlf)
  (printout t "2. Adaugă punctaje la laborator pentru un student." crlf)
  (printout t "3. Adaugă punctaj la examen pentru un student." crlf)
  (printout t "4. Adaugă punctaj la proiect pentru un student." crlf)
  (printout t "5. Afișează situație student." crlf)
  (printout t "6. Afișează studenții promovați și cei nepromovați." crlf)
  (printout t "7. Ieșire." crlf)
  (assert (optiune(read)))
)
  
(deftemplate student
  (slot name)
  (slot laborator)
  (slot exam)
  (slot project)
  (slot total)
)

(defrule adauga-student
  ?a <- (optiune 1)
  =>
  (retract ?a)
  (printout t "Introduceți numele studentului: ")
  (bind ?name (read))
  (assert (student (name ?name) (laborator 0) (exam 0) (project 0) (total 0)))
  (printout t "Studentul a fost adăugat." crlf)
  (assert (meniu))
)

(defrule adauga-laborator
  ?a <- (optiune 2)
  ?student <- (student (name ?name) (laborator ?old-lab-points) (exam ?old-exam-points) (project ?old-project-points)  (total ?old-total))
  =>
  (retract ?a)
  (printout t "Introduceți punctajul la laborator pentru studentul " ?name ": ")
  (bind ?new-lab-points (read))
  (modify ?student (laborator (+ ?old-lab-points ?new-lab-points)))
  (modify ?student (total (+ ?old-total ?new-lab-points)))
  (printout t "Punctajul la laborator a fost adăugat." crlf)
  (assert (meniu))
)

(defrule adauga-examen
  ?a <- (optiune 3)
  ?student <- (student (name ?name) (exam ?old-exam-points) (total ?old-total))
  =>
  (retract ?a)
  (printout t "Introduceți punctajul la examen pentru studentul " ?name ": ")
  (bind ?new-exam-points (read))
  (modify ?student (exam (+ ?old-exam-points ?new-exam-points)))
  (modify ?student (total (+ ?old-total ?new-exam-points)))
  (printout t "Punctajul la examen a fost adăugat." crlf)
  (assert (meniu))
)

(defrule adauga-proiect
  ?a <- (optiune 4)
  ?student <- (student (name ?name) (project ?old-project-points) (total ?old-total))
  =>
  (printout t "Introduceți punctajul la proiect pentru studentul " ?name ": ")
  (bind ?new-project-points (read))
  (modify ?student (project (+ ?old-project-points ?new-project-points)))
  (modify ?student (total (+ ?old-total ?new-project-points)))
  (printout t "Punctajul la proiect a fost adăugat." crlf)
  (assert (meniu))
)

(defrule afiseaza-situatie
  ?a <- (optiune 5)
  ?student <- (student (name ?name) (laborator ?laborator) (exam ?exam) (project ?project) (total ?total))
  =>
  (printout t "Situația studentului " ?name ":" crlf)
  (printout t "Punctaj la laborator: " ?laborator crlf)
  (printout t "Punctaj la examen: " ?exam crlf)
  (printout t "Punctaj la proiect: " ?project crlf)
  (printout t "Punctajul total: " ?total crlf)
  (printout t "" crlf)
  (assert (meniu))
)

(defrule afiseaza-promovati
  ?a <- (optiune 6)
  (not (student))
  =>
  (printout t crlf "Nu exista niciun student inregistrat." crlf)
  (assert (meniu))
)

(defrule afiseaza-promovati
  ?a <- (optiune 6)
  (student)
  =>
  (printout t crlf "Studeni promovati: " crlf)
  (do-for-all-facts ((?s student)) (> ?s:total 50) (printout t ?s:name crlf))
  (printout t crlf "Studeni nepromovati: " crlf)
  (do-for-all-facts ((?s student)) (<= ?s:total 50) (printout t ?s:name crlf))
  (assert (meniu))
)


(defrule exit
  ?a <- (optiune 7)
  =>
  (printout t "La revedere!" crlf)
  (halt))

;(defrule invalid-option-menu
;  =>
;  (printout t "Opțiune invalidă. Selectați o opțiune între 1 și 7." crlf)
;  (assert (main-menu))
;)
