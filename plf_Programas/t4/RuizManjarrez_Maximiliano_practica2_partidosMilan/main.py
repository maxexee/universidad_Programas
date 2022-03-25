import  csv
import  numpy as np
import  matplotlib.pyplot as plt

x   =   []
y   =   []

doc =   '/home/maxexee/Documents/Universidad/universidad_Programas/plf_Programas/t4/RuizManjarrez_Maximiliano_practica2_partidosMilan/db.csv'
with    open(doc,  'r')    as  bdcsv:
    plots   =   csv.reader(bdcsv,   delimiter   =   ',')

    for fila    in  plots:
        y.append(fila[0])
        x.append(fila[1])

gan =   [g  for g   in  x   if  g   ==  'G']
per =   [p  for p   in  x   if  p   ==  'P']
emp =   [e  for e   in  x   if  e   ==  'E']  

try:
    plt.bar(x, y)
    plt.show()
except  Exception   as  e:
    print(e)