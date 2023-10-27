#--------------------
# Regresión logística binaria/logit
# Ejemplo hipotético ilustrativo
#--------------------

# Datos ficticios
set.seed(123)
n <- 200

tasas_desempleo <- round(rnorm(n, mean = 7, sd = 1.5), 2) # Variable independiente: Tasas de desempleo promedio de 7% con una desviación de 1.5%

# Simular una relación entre tasas de desempleo y protesta
# Supongamos que la probabilidad de una protesta aumenta en 10% por cada 1% de aumento en desempleo
prob_protesta <- pmin(0.1 * tasas_desempleo, 1) 
protesta <- rbinom(n, 1, prob_protesta) # Variable dependiente: Hubo protesta (1) vs. No hubo protesta (0)

datos <- data.frame(protesta, tasas_desempleo)

View(datos)

modelo <- glm(protesta ~ tasas_desempleo, data = datos, family = binomial("logit"))

summary(modelo)

# Probabilidades predichas

tasas_desempleo_ <- data.frame(tasas_desempleo = c(4, 10)) # Valores dos desviaciones estándar alejadas de la media

logit_prediccion <- predict(modelo, newdata = tasas_desempleo_, type = "link")

probabilidad_prediccion <- exp(logit_prediccion) / (1 + exp(logit_prediccion))

probabilidad_prediccion
