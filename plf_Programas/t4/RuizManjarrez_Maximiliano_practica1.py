import  numpy as np
import  matplotlib.pylab as plt
#https://github.com/maxexee/universidad_Programas/tree/master/plf_Programas

def h(x):
    return  np.sin(x)

x   =   np.linspace(0,  10, 100)

plt.grid()
plt.xlabel('Tiempo')
plt.ylabel('Posición')
plt.title('Función de seno')
plt.plot(x, h(x),    'r--', label='seno')
plt.show()

x   =   np.linspace(0,  10, 100)

g   =   lambda x:   np.tan(x)

plt.plot(x, g(x),   label='Coseno de x')
v   =   [0, 10, -2, 2]
plt.axis(v)
plt.legend(loc  =   3)
plt.show()
