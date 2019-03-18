dataset <- iris

model <- lm(Petal.Length ~ Petal.Width, data = dataset)

input_data <- data.frame(Petal.Width = 1)
predict(model, input_data)
