import  csv
import  numpy as np
import  matplotlib.pyplot as plt

x   =   []
y   =   []

doc =   'C:\/Users\/ruizm\/Documents\/Uni\/universidad_Programas\/plf_Programas\/t4\/RuizManjarrez_Maximiliano_practica2_partidosMilan\/db.csv'

with    open(doc,  'r')    as  bdcsv:
    plots   =   csv.reader(bdcsv,   delimiter   =   ',')

    #plots2  =   list(plots)

    for fila    in  plots:
        y.append(fila[0])
        x.append(fila[1])

    gan =   [g  for g   in  x   if  g   ==  'G']
    per =   [p  for p   in  x   if  p   ==  'P']
    emp =   [e  for e   in  x   if  e   ==  'E']

x2  =   np.linspace(len(gan),    len(per),    len(emp))

try:
    plt.bar(x2, y)
    plt.show()
except  Exception   as  e:
    print(e)