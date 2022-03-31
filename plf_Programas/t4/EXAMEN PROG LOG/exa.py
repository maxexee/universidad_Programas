from itertools import count
from os import PRIO_PGRP
import  pandas  as  pd
import  matplotlib.pyplot  as  plot

df    =   pd.read_csv('/home/maxexee/Documents/Universidad/universidad_Programas/plf_Programas/t4/EXAMEN PROG LOG/examen.csv', index_col=0,encoding='latin-1')

try:
    '''print("PREGUNTA 1 CUANTOS MACHOS y HEMBRAS EN EL ARCHIVO")
    macho_p1    =   df[df['sexo']   ==  'M']
    hembras_p1  =   df[df['sexo']   ==  'F']
    print(f'{macho_p1}, Total machos:   {len(macho_p1)}\n---------------------\n,{hembras_p1},  {len(hembras_p1)}')'''

    #print("PREGUNTA 2 ESPECIES REGISTRADAS DEL AÑO 2001")
    #dosEsp  =   df[df['aï¿½o']    ==  2001]
    #dosEsp2  =   df.groupby('idespecie')
    #print(f'{dosEsp2}    \nTotal:  {len(dosEsp2)}')

    '''print("PREGUNTA 4 REGISTRADOS EN EL SITIO 4")
    registrador_p4  =   df[df['idsitio']    ==  4]
    print(f'{registrador_p4}    \n  Total:  {len(registrador_p4)}')'''

    print("PREGUNTA 5 CUANTAS ESPECIES POR IDSITIO EXISTEN")
    #print(df.groupby('idsitio').count())
    print((df['idsitio'])   &  (df['idespecie'].count()))

    #print("PREGUNTA 5 ALTERNATIVA POR SITIO -DO-")

    #print("PREGUNTA 6 MACHOS REGISTRADOS EN 1999 QUE PESAN MAS DE 30")
    #machos_p6   =   df[(df['sexo']   ==  'M')   &   (df['aï¿½o']    ==  1999)   &   (df['peso'] >   30)]
    #print(f'{machos_p6} \nTotal:  {len(machos_p6)}')

    #print("PREGUNTA 7 ESPECIE PB, QUE SON HEMBRAS, DEL SITIO 8 QUE PESAN ENTRE 25 Y 30")
    #hembras_p7  =   df[(df['idespecie'] ==  'PB')    &   (df['sexo'] ==  'F')   &   (df['idsitio']  ==  8)  &   (df['peso'] >=25)   &   (df['peso'] <=  30)]
    #print(f'{hembras_p7} \nTotal:  {len(hembras_p7)}')


    #print("PREGUNTA 8 SABER CUAL ES EL PESO MEDIO")
    #peso_p8 =   df[df['peso'].mad()]
    #print(peso_p8)

    #print("PREGUNTA 9 ESPECIES REGISTRADAS EL DÍA 6 DE ABRIL")
    #especies_p9 =   df[(df['dia']  ==  6)   &   (df['mes']   ==  4)]
    #print(especies_p9)

    #print("PREGUNTA 10 ESPECIES DS REGISTRADAS EN 1988 EN EL SITIO 22")
    especies_10 =   df[(df['aï¿½o']  ==  1999)  &   (df['idsitio']  ==  22)]
    #print(especies_10)

    #print(" PREGUNTA 11 EL PESO MEDIO DE LOS DATOS OBTENIDOS EN LA PREGUNTA 10 ")
    #print(especies_10['idespecie'].mad())

except  Exception   as  e:
    print(e)