from inspect import stack
import  pandas  as  pd
import  matplotlib.pyplot  as  plt

df  =   pd.read_csv('/home/maxexee/Documents/Universidad/universidad_Programas/plf_Programas/t4/titanic/titanic.csv')

try:

    #HOMBRES MAYORES DE 18 AÑOS MURIERON EN EL TITATNIC.
    num1    =   df[   (df['Survived'] ==   0)  &   (df['Sex']   ==  'male') &   (df['Age']  >   18) ]
    print(len(num1),    num1)
    num1.plot(kind='bar',   stacked=True)
    plt.show()

    #CUANTAS MUJERES MAYORES DE 18 AÑOS SOBREVIVIERON EN EL TITANIC.
    num2    =   df[ (df['Survived'] ==   1) &   (df['Sex'].str.contains('female'))   &   (df['Age']  >   18) ]
    print(len(num2),    num2)   
    #num2.plot(kind='bar',   stacked=True)
    #plt.show()
    #print(df[ (df['Sex'].str.contains('female'))   &   (df['Age']  >   18)])#COMPROBACIÓN.

    #CUANTAS PERSONAS DE TERCERA CLASE MURIERON EN EL TITANIC.
    num3    =   df[ (df['PClass'].str.contains('3rd'))   &   (df['Survived'] ==  0)]
    #print(len(num3),    num3)
    #num3.plot(kind='bar',   stacked=True)
    #plt.show()
    #print((df['PClass']  ==  '3rd').value_counts())#COMPROBACIÓN.

    #CUANTAS PERSONAS DE SEGUNDA CLASE SOBREVIVIERON EN EL TITANIC.
    num4    =   df[ (df['PClass'].str.contains('2nd'))   &   (df['Survived'] ==  1)]
    #print(len(num4),    num4)
    #num4.plot(kind='bar')
    #plt.show()
    #print((df['PClass']  ==  '2nd').value_counts())#COMPROBACIÓN.

    #CUANTAS MUJERES DE PRIMER CLASE MURIERON EN EL TITANIC.
    num5    =   df[ (df['Sex'].str.contains('female'))   &   (df['PClass'].str.contains('1st'))  &   (df['Survived'] ==  0)]
    #print(len(num5),    num5)
    #num5.plot(kind='bar',   stacked=True)
    #plt.show()
    #print((df['Sex'].str.contains('female')   &   (df['PClass'].str.contains('1st'))).value_counts())#COMPROBACIÓN.

    #CUANTOS HOMBRES DE SEGUNDA CLASE SOBREVIVIERON EN EL TITANIC.
    num6    =   df[ (df['Sex']  ==  'male') &   (df['PClass'].str.contains('2nd')) &   (df['Survived'] ==  1)]
    #print(len(num6),num6, '\n-----------------------------------------')
    #print(((df['Sex'] ==  'male')    &   (df['PClass']   ==  '2nd') & (df['Survived'] ==  1)).value_counts())
    #num6.plot(kind='bar',   stacked=True)
    #plt.show()
    #CUANTAS MUJERES DE ENTRE 20 Y 40 AÑOS SOBREVIVIERON EN EL TITANIC.
    num7    =   df[ (df['Sex']  ==  'female')   &   (df['Age']>=20) &    (df['Age']<=40)   &   (df['Survived'] ==  1)]
    #print(len(num7),    num7)
    #num7.plot(kind='bar',   stacked=True)
    #plt.show()
except  Exception   as  e:
    print(e)