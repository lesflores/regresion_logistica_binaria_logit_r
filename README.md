# regresion_logistica_binaria_logit_r
Aquí te presento un ejemplo ilustrativo de cómo utilizar la regresión logística binaria/logit en R.

El código simula un conjunto de datos ficticios que relacionan la tasa de desempleo con la probabilidad de protesta. Suponemos que la probabilidad de una protesta aumenta en un 10% por cada 1% de aumento en desempleo.
## Variables 

`tasas_desempleo`: Tasas de desempleo promedio, con una media del 7% y una desviación estándar del 1.5%.

`protesta`: Es una variable binaria que indica si hubo (1) o no hubo (0) una protesta. 

## Pasos 
1. Generar datos ficticios
2. Simular la relación entre `tasas_desempleo` y probabilidad de `protesta`.
3. Crear modelo de regresión logística con `glm` con `tasas_desempleo` como variable independiente y `protesta` como variable dependiente.
4. Obtener probabilidades predichas para dos tasas de desempleo (4% y 10%) con dos desviaciones estándar alejadas de la media.
