#pachet 1 = PBR, Tehnici de programare pe platforme mobile, Aspecte computaţionale în teoria numerelor,
#           Proiectarea jocurilor

optional1 = []
optional2 = []
optional3 = []
def pachet1():
    print("Pachetul 1:")
    print("")
    raspunsuri = []
    optional1 = []
    intrebarea1 = "Ti-a placut Inteligenta Artificiala?"
    intrebarea2 = "Stii sa programezi in Java si C++?"
    intrebarea3 = "Stii notiuni din Fundamente Algebrice?"
    lista_intrebari = []
    lista_intrebari.append(intrebarea1)
    lista_intrebari.append(intrebarea2)
    lista_intrebari.append(intrebarea3)

    for i in range(0, 3):
        print(lista_intrebari[i])
        raspuns = str(input())
        raspunsuri.append(raspuns)

    if raspunsuri[0] == "da" and raspunsuri[1] == "nu" and raspunsuri[2] == "nu":
        print("Iti recomand optionalul Programare Bazata pe Reguli!")
        optional1 = "Programare Bazata pe Reguli"
    elif raspunsuri[0] == "nu" and raspunsuri[1] == "da" and raspunsuri[2] == "nu":
        print("Iti recomand optionalul Tehnici de programare pe platforme mobile!")
        optional1 = "Tehnici de programare pe platforme mobile"
    elif raspunsuri[0] == "nu" and raspunsuri[1] == "nu" and raspunsuri[2] == "da":
        print("Iti recomand optionalul Aspecte computationale in teoria numerelor!")
        optional1 = "Aspecte computationale in teoria numerelor"
    else:
        print("Iti recomand optionalul Proiectarea jocurilor")
        optional1 = "Proiectarea jocurilor"
    print("")
    return optional1


#  Psihologia comunicarii profesionale in domeniul IT, Cloud Computing, Human-Computer Interaction, Analiza retelelor media sociale
def pachet2():
    print("Pachetul 2:")
    print("")
    raspunsuri = []
    optional2 = []
    intrebarea1 = "Iti place sa lucrezi in Linux?"
    intrebarea2 = "Ai invatat JavaScript?"
    intrebarea3 = "Iti place sa programezi in Python?"
    lista_intrebari = []
    lista_intrebari.append(intrebarea1)
    lista_intrebari.append(intrebarea2)
    lista_intrebari.append(intrebarea3)

    for i in range(0, 3):
        print(lista_intrebari[i])
        raspuns = str(input())
        raspunsuri.append(raspuns)

    if raspunsuri[0] == "da" and raspunsuri[1] == "nu" and raspunsuri[2] == "nu":
        print("Iti recomand optionalul Cloud Computing")
        optional2 = "Cloud Computing"
    elif raspunsuri[0] == "nu" and raspunsuri[1] == "da" and raspunsuri[2] == "nu":
        print("Iti recomand optionalul Human-Computer Interaction")
        optional2 = "Human-Computer Interaction"
    elif raspunsuri[0] == "nu" and raspunsuri[1] == "nu" and raspunsuri[2] == "da":
        print("Iti recomand optionalul Analiza retelelor media sociale")
        optional2 = "Analiza retelelor media sociale"
    else:
        print("Iti recomand optionalul Psihologia comunicarii profesionale in domeniul IT")
        optional2 = "Psihologia comunicarii profesionale in domeniul IT"
    print("")
    return optional2


# Retele Petri si aplicatii, Smart Carduri si aplicatii, Inginerie software specifica automobilelor, Introduction to Internet of Things
def pachet3():
    print("Pachetul 3:")
    print("")
    raspunsuri = []
    optional3 = []
    intrebarea1 = "Ti-a placut materia LFAC?"
    intrebarea2 = "Iti place Java sau Fundamentele Algebrice?"
    intrebarea3 = "Te-ar interesa o cariera in domeniul automobilelor?"
    lista_intrebari = []
    lista_intrebari.append(intrebarea1)
    lista_intrebari.append(intrebarea2)
    lista_intrebari.append(intrebarea3)

    for i in range(0, 3):
        print(lista_intrebari[i])
        raspuns = str(input())
        raspunsuri.append(raspuns)

    if raspunsuri[0] == "da" and raspunsuri[1] == "nu" and raspunsuri[2] == "nu":
        print("Iti recomand optionalul Retele Petri si aplicatii")
        optional3 = "Retele Petri si aplicatii"
    elif raspunsuri[0] == "nu" and raspunsuri[1] == "da" and raspunsuri[2] == "nu":
        print("Iti recomand optionalul Smart Carduri si aplicatii")
        optional3 = "Smart Carduri si aplicatii"
    elif raspunsuri[0] == "nu" and raspunsuri[1] == "nu" and raspunsuri[2] == "da":
        print("Iti recomand optionalul Ingineria software specifica automobilelor")
        optional3 = "Ingineria software specifica automobilelor"
    else:
        print("Iti recomand optionalul Introduction to Internet of Things")
        optional3 = "Introduction to Internet of Things"
    print("")
    return optional3


if __name__ == '__main__':
    optionalll1 = pachet1()
    optionalll2 = pachet2()
    optionalll3 = pachet3()
    print("Optionalele recomandate pentru anul 3, semestrul 2 sunt:")
    print(optionalll1 + ', ' + optionalll2 + ', ' + optionalll3)


