
(defrule reading
=>
(printout t "Ti-a placut Inteligenta Artificiala?" crlf)
(assert (P1I1 (read)))
(printout t "Stii sa programezi in Java si C++?" crlf)
(assert (P1I2 (read)))
(printout t "Stii notiuni din Fundamente Algebrice?" crlf)
(assert (P1I3 (read)))
(printout t "Iti place sa lucrezi in Linux?" crlf)
(assert (P2I1 (read)))
(printout t "Ai invatat JavaScript?" crlf)
(assert (P2I2 (read)))
(printout t "Iti place sa programezi in Python?" crlf)
(assert (P2I3 (read)))
(printout t "Ti-a placut materia LFAC??" crlf)
(assert (P3I1 (read)))
(printout t "Iti place Java sau Fundamentele Algebrice?" crlf)
(assert (P3I2 (read)))
(printout t "Te-ar interesa o cariera in domeniul automobilelor?" crlf)
(assert (P3I3 (read)))
)



(defrule first_answer_p1
(P1I1 Y) (P1I2 N) (P1I3 N)

=>
(printout t "Iti recomand optionalul Programare Bazata pe Reguli!" crlf)
)

(defrule second_answer_p1
(P1I1 N) (P1I2 Y) (P1I3 N)
=>
(printout t "Iti recomand optionalul Tehnici de programare pe platforme mobile!" crlf)
)

(defrule third_answer_p1
(P1I1 N) (P1I2 N) (P1I3 Y)
=>
(printout t "Iti recomand optionalul Aspecte computationale in teoria numerelor!" crlf)
)

(defrule fourth_answer_p1
(P1I1 N) (P1I2 N) (P1I3 N)
=>
(printout t "Iti recomand optionalul Proiectarea jocurilor" crlf)
)

(defrule first_answer_p2
(P2I1 Y) (P2I2 N) (P2I3 N)
=>
(printout t "Iti recomand optionalul Cloud Computing" crlf)
)

(defrule second_answer_p2
(P2I1 N) (P2I2 Y) (P2I3 N)
=>
(printout t "Iti recomand optionalul Human-Computer Interaction" crlf)
)

(defrule third_answer_p2
(P2I1 N) (P2I2 N) (P2I3 Y)
=>
(printout t "Iti recomand optionalul Analiza retelelor media sociale" crlf)
)

(defrule fourth_answer_p2
(P2I1 N) (P2I2 N) (P2I3 N)
=>
(printout t "Iti recomand optionalul Psihologia comunicarii profesionale in domeniul IT" crlf)
)

(defrule first_answer_p3
(P2I1 Y)(P2I2 N)(P2I3 N)
=>
(printout t "Iti recomand optionalul Retele Petri si aplicatii" crlf)
)

(defrule second_answer_p3
(P2I1 N)(P2I2 Y)(P2I3 N)
=>
(printout t "Iti recomand optionalul Smart Carduri si aplicatii" crlf)
)

(defrule third_answer_p3
(P2I1 N)(P2I2 N)(P2I3 Y)
=>
(printout t "Iti recomand optionalul Ingineria software specifica automobilelor" crlf)
)

(defrule fourth_answer_p3
(P2I1 N)(P2I2 N)(P2I3 N)
=>
(printout t "Iti recomand optionalul Introduction to Internet of Things" crlf)
)
