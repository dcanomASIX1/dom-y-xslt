from xml.dom import minidom 

doc = minidom.parse("horari.xml")

f_= open("diaris.html", "w")
f_.write("<html><head><title>Diaris DOM</title></head>\n")
f_.write("<body>")



#capçalera del alumne

alumne=doc.getElementsByTagName("alumne")[0]

nom=alumne.getElementsByTagName("nom")[0].firstChild.data
curs=alumne.getElementsByTagName("curs")[0].firstChild.data
foto=alumne.getElementsByTagName("foto")[0].firstChild.data

f_.write(f'''<h1> Estudiant</h1>
            <p>{nom}</p>
            <p> {curs} </p>
            <img src="{foto}"/>  ''')
        
#final capçalera


#Creacion de classes en horario
f_.write(f'''<table>''')

dia=doc.getElementsByTagName("dia")

f_.write('''<tr>''')
f_.write(f'''<td> </td> ''')

for x in dia:
    DiaNom=x.getElementsByTagName("nom")[0].firstChild.data
    
    f_.write(f'''<td>{DiaNom} </td> ''')
    print(DiaNom)

f_.write('''<tr>''')


franges=doc.getElementsByTagName("franja")
assignatures=doc.getElementsByTagName("assignatures")

## Colores
Colores = doc.getElementsByTagName("colors")[0].getElementsByTagName("assignatura")
print(Colores)

DiccionarioColores={}


for x in Colores:
    ColorAssignatura = x.firstChild.data
    AtributoColor= x.getAttribute("color")
    print(f'''{AtributoColor} {ColorAssignatura}''')
    DiccionarioColores[ColorAssignatura]= AtributoColor


print (DiccionarioColores)








Cont= 0 

#Final Creacion colores

indice = 0 
for x in franges:
    f_.write(f'''<tr> ''')
    franja=x.firstChild.data
    print(franja)
    f_.write(f'''<td>{franja} </td> ''')
    for y in assignatures:
        assignatura=y.getElementsByTagName("assignatura")[indice].firstChild.data

        print(assignatura)
        f_.write(f'''<td style="background-color: {DiccionarioColores[assignatura]}">{assignatura}</td>
                 ''')
    indice = indice +1
    f_.write(f'''</tr> ''')

    

#Creacion de classes en horarios
f_.write(f'''</table>''')

f_.write("</body> </html>")

f_.close()
