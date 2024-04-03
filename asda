# Documentació DOM i XSLT/XPATH
## DOM
És un mòdul de python que permet treballar amb fitxers **XML**
### Estructura
L'estructura dels elements quan treballem amb el mòdul de DOM hereten d'un node anterior fins arribar al node arrel, és a dir es treballa amb una estructura d'arbre on tots els nodes estan connectats a un node anterior excepte el node arrel.

Aquesta estructura és com la del **XSD**

Per indicar el fill al qual volem accedir ocupem **[X]** al costat de l'element fill indicant el número al qual volem accedir es a dir
Doc.chilnodes **[0]** fa referència al número (*de la posició*) del fill on ens ubiquen en aquest moment.

**ex**
Doc.chilnodes **[0]** Doc.chilnodes **[0]** Doc.chilnodes **[0]**
en aquest cas estariem fen referencia al Primer fill del primer fill del primer fill del elemenr **arrel**

### Objectes en DOM
En treballar en DOM existeixen una gran varietat d'elements als quals hi podem accedir a la seva informació.
Aquest es coneixen com a **OBJECTES**
a continuació una imatge amb tots els objectes amb els quals podem interactuar:

![Captura de pantalla de 2024-04-02 16-35-43](https://github.com/dcanomASIX1/xml-python/assets/165805335/eddccb75-0f12-480e-83ca-9efb38e1ad14)

### Primers passos

Ara bé un cop coneixem els objectes i com està estructurat com podem començar a treballar amb aquest mòdul de pyhton?

1. Comencem important el mòdul de dom amb la següent línia de codi:
'from xml.dom import minidom '
2. Indiquem el document **XML**amb el qual importarem dades i treballarem
'personas=doc.getElementsByTagName("person") '
Cal tenir en compte que per poder accedir al document, cal ester ubicat en la terminal on executem en la mateixa capeta de l'arxiu **XML** indicat.

3. Obrim en mode d'escriptura un nou arxiu en el qual més endavant escriurem les dades desitjades
'f_=open("HTML_ACT6", "w")'
- **f_** --> És el nom de la variable del nou arxiu creat
- **HTML_ACT6** --> És el nom amb el qual es crearà l'arxiu, pots posar el que desitgis
- **w** --> Indica que l'arxiu s'obrirà en opció d'escriptura

4. Indiquem l'element a escriure amb la funció f_.write(*Aquí indiquem l'element que desitgem escriure*)

### Petits truquets a l'hora d'Implementació d'Objectes
- Quan desitgis obtenir un element pel nom pots emprar **getElementsByTagName("name")[0]**
**name** --> fa referència al nom que desitgis indicar
**0** --> Fa referència a la posició que desitgis agafar d'aquest fill

- **Compte** amb eredar pel nom, ja que agafaràs tots els elements pel nom. Si desitges filtrar pots indicar l'element anterior i després eredar el que desitgis
'Colores = doc.getElementsByTagName("colors")[0].getElementsByTagName("assignatura")'
- **getElementsByTagName** t'agrupa tots els elements amb el mateix nom.**Pots buscar per altres indicadors, però l'aplicació és semblant**
- Per agafar el text, indiques el fill que desitgis i **.firstChild.data**
'getElementsByTagName("name")[0].firstChild.data'
- Si vols agafar l'atribut emplees **getAttribute** després del firstChild
'getElementsByTagName("name")[0].firstChild.data'

#### **Important**

has de tenir en compte que el que emmagatzemes a la variable són totes les etiquetes (i la informació dintre d'aquestes) amb el nom indicat, filles de la variable a la qual apliqui el **getElementByTagNAme**

**ex**

'''doc = minidom.parse("horari.xml")'''

'''dia=doc.getElementsByTagName("dia")'''

* Comencem guardant la informació del arxiu **horari.xml* a una variable anomenada **doc**, per tant, aquesta actuarà com l'etiqueta arrel o primer pare.

* En aquest cas estàs guardant a la variable **dia** totes les etiquetes amb nom dia, filles de l'etiqueta arrel

- Per veure totes les implementació d'objectes visita la següent pàgina: https://docs.python.org/3/library/xml.dom.html

### Implementació del bucle FOR
Usualment quant vulguem emmagatzemar diverses dates diferents d'un mateix pare emprarem un bucle **FOR* en el qual a la variable que recorres emmagatzemes la informació desitjada en forma de llista i amb la variable x recorres aquesta llista

**ex**

'''
for x in Colores:
ColorAssignatura = x.firstChild.data
AtributoColor= x.getAttribute("color")
print(f'''{AtributoColor} {ColorAssignatura}''')
DiccionarioColores[ColorAssignatura]= AtributoColor
'''

### Exemple d'implementacio en un codi "simple"
'''
from xml.dom import minidom
doc=minidom.parse("111.xml")

personas=doc.getElementsByTagName("person")
f_=open("HTML_ACT6", "w")

f_.write('''Diaris DOM
''')
for x in personas:
ids=x.getAttribute("id")

gender=x.getElementsByTagName("name")[0].getAttribute("gender")

nom=x.getElementsByTagName("name")[0].firstChild.data

age=x.getElementsByTagName("age")[0].firstChild.data

naixement=x.getElementsByTagName("naixement")[0].firstChild.data
f_.write(f'''{ids} - {nom}



age - { age}
sex - {gender}
maixement - { naixement}


''')
f_.write('''

''')
'''

## XSLT i XPATH
### Introducció XSLT
XSLT és un llenguatge que s'empra per transformar fitxers XML en fitxer d'altres tipus com pot eser  HTML, text o d'altres com també es pot convertir en altre tipus d'XML. **En aquest cas aprendrem a transformar en HTML**.
Tingues en compte que es necessita tenir un *processador XSLT* i aprendre *XPATH*

![Captura de pantalla de 2024-04-03 17-44-09](https://github.com/dcanomASIX1/xml-python/assets/165805335/3b39e80f-2a5b-42fe-aa54-d74a7e69385e)

### XPATH
És un sistema, empleat per la selecció dels nodes

Existeixen 7 tipus de nodes possibles

![Captura de pantalla de 2024-04-02 17-29-53](https://github.com/dcanomASIX1/xml-python/assets/165805335/116cfcb4-f9e9-4a3a-b641-31c2267852be)

Aquest també té una estructura tipus arbre amb tots els nodes amb un node pare excepte el **Node arrel**

Cada element pot tenir entre 0 o diversos fills

Els elements amb el mateix pare es consideren germans

#### SELECCIÓ DE NODES

![Captura de pantalla de 2024-04-02 17-38-23](https://github.com/dcanomASIX1/xml-python/assets/165805335/ac07360b-55dd-47b7-a01c-aa05031fe75c)

**Buscar nodes específics**
Per filtrar els nodes desitjats emprarem **[]** darrere del node que desitgem filtrar en el qual indicarem els elements i quantitats a buscar

exemples per buscar nodes específics

**/botiga/bluray[1]** indica el primer element bluray.

**//title[@idioma]** indica els títols amb l'atribut idioma.

**//title[@idioma='cat']** indica els títols amb l'atribut idioma igual a cat.

**/botiga/bluray[preu>10]** indica tots els bluray amb preu >10.

**/botiga/bluray[preu>10]/any** indica tots els anys dels bluray amb preu >10.

**/botiga/*/preu** indica tots els preus dels fills de botiga.

**//*** indica tots els elements del document.

**//titol[@*]** indica tots els elements titol amb qualsevol atribut.

**//titol | // preu** indica tots els titols i preus del document.

**/botiga/bluray[2]/titol** indica el títol del segon bluray

**/botiga/bluray[position()<6]/titol** indica el títol de les 5 primeres entrades.

### Treballar amb XSLT
1. Creem un document amb extensió xsl i indiquem el següent
'

....
'
Assegurat que els dos documents estiguin a la mateixa carpeta

2.Al document **XML** referenciem el document anterior

''''''

''''''

* **type** = Indica el tipus de fitxer al qual està referenciat

* **href** = referència al nom fitxer de referència

#### Element
Aquest element s'empra per crear les plantilles d'XLT

''''''

''''''

''''''

*Aquí va l'estructura HTML*

''''''

''''''

* **match** S'emplea per associar l'element, arrel de la plantilla a un element de l'xml original. És a dir és un element **XPATH**

**Exemple de com acabaria**



#### Element
S'ocupa per extreure els valors dels elements

''' '''

''' '''

En aquest cas s'extreu el valor text acumulat registrat en **catalog/cd/title** i **catalog/cd/artist**

#### L'element
Faria la funció d'un for en un llenguatge de programació és a dir, recorre tots els **elements** del nivell indicat.

![Captura de pantalla de 2024-04-02 20-06-10](https://github.com/dcanomASIX1/xml-python/assets/165805335/6a04211a-c70d-452c-833e-106edcb5deaa)

En aquest exemple recorrem tots els cd que heretin de catalog i el seu artista sigui Bob Dylan

#### L'element
Serveix per ordenar segons un element una agrupació d'Elements superiors que els contingui

![Captura de pantalla de 2024-04-02 20-06-21](https://github.com/dcanomASIX1/xml-python/assets/165805335/17f72932-c86c-4820-b858-0c182cf9c7c7)

#### L'element
S'ocupa després del for each per posar una condició al contingut del fitxer XML

![Captura de pantalla de 2024-04-02 20-06-53](https://github.com/dcanomASIX1/xml-python/assets/165805335/10fcf37c-235c-496d-a7b4-b2261161fd90)

#### L'element
S'ocupa per poder obtenir una condició múltiple, és a dir diversos if junts depenent del número de condicions requerides.

![Captura de pantalla de 2024-04-02 20-07-05](https://github.com/dcanomASIX1/xml-python/assets/165805335/f64e84c4-6ca3-4e4d-b35b-2c3c265467f3)

D'aquest depenenen les funcions **xsl:when** i **xsl:otherwhise**

en aquest exemple declarem un color en l'artitsa si el preu del disc es superior a 10

#### Afegir enllaços e imatges
s'ocupa l'atribut **xsl:attribute name="href"** per afegir enllaçps de referencia

![Captura de pantalla de 2024-04-02 20-10-48](https://github.com/dcanomASIX1/xml-python/assets/165805335/1410fbb1-47cf-47bb-8b84-7a7a345e8e86)

s'ocupa l'atribut **xsl:attribute name="src"** per afegir imatges

![Captura de pantalla de 2024-04-02 20-07-27](https://github.com/dcanomASIX1/xml-python/assets/165805335/462803ec-ac63-49c0-9ee5-4d920515fb52)

#### Declarar variables

Per crear noves variables amb les vuals treballar emplearem la seguent linea de codi
''''''
**name** indica el nom de la variable
**select** el tipus de la variable a eeplear

per emplear les variables les cridarem de la seguen forma: [$i].
On **i** representa el nom de la varaible

**ex**

''''''

si desitges aprofundir més pots visitar: https://www.w3schools.com/xml/xsl_intro.asp

#### Exemple de codi XSLT
