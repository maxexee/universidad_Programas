from operator import index
import  pandas  as  pd
import  matplotlib.pyplot   as  plt

datostitanic    =   pd.read_csv(r'/home/maxexee/Documents/Universidad/universidad_Programas/plf_Programas/t4/titanic/titanic.csv')
#print(datostitanic)
#print(datostitanic.info())
#print(datostitanic.describe())
#print(datostitanic.Age.median())
#print(datostitanic.Sex.value_counts())

sobrevi =   datostitanic[datostitanic.Survived==1].Sex.value_counts()
print(sobrevi)

muertos =   datostitanic[datostitanic.Survived==0].Sex.value_counts()
print(muertos)


g1  =   pd.DataFrame([sobrevi,  muertos],index =   ['Survived',    'Dead'])
g1.plot(kind    =   'bar')
plt.show()

g1.plot(kind    =   'bar',  stacked =   True)
#plt.show()