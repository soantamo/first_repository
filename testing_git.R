data("iris")
str(iris)


library(ggplot2)

# plot multiple traits for the three species
levels(iris$Species)

library(viridis)
# new plot

ggplot(data = iris, aes(x = Species, y = Sepal.Width, color = Species)) +
  geom_boxplot() +
  theme_classic() +
  scale_color_viridis(discrete=TRUE)

ggplot(data = iris, aes(x = Species, y = Petal.Width, color = Species)) +
  geom_boxplot() +
  theme_classic() +
  scale_color_viridis(discrete=TRUE)
  


# ugly plots
par(mfrow=c(3,4)) 
boxplot(iris[iris$Species=="setosa", ]$Sepal.Length,
        main = "I. setosa",
        ylab = "SL",
        col = "red")
boxplot(iris[iris$Species=="setosa", ]$Sepal.Width,
        main = "I. setosa",
        ylab = "SW",
        col = "red")
boxplot(iris[iris$Species=="setosa", ]$Petal.Length,
        main = "I. setosa",
        ylab = "PL",
        col = "red")
boxplot(iris[iris$Species=="setosa", ]$Petal.Width,
        main = "I. setosa",
        ylab = "PW",
        col = "red")
boxplot(iris[iris$Species=="versicolor", ]$Sepal.Length,
        main = "I. versicolor",
        ylab = "SL",
        col = "green")
boxplot(iris[iris$Species=="versicolor", ]$Sepal.Width,
        main = "I. versicolor",
        ylab = "SW",
        col = "green")
boxplot(iris[iris$Species=="versicolor", ]$Petal.Length,
        main = "I. versicolor",
        ylab = "PL",
        col = "green")
boxplot(iris[iris$Species=="versicolor", ]$Petal.Width,
        main = "I. versicolor",
        ylab = "PW",
        col = "green")
boxplot(iris[iris$Species=="virginica", ]$Sepal.Length,
        main = "I. virginica",
        ylab = "SL",
        col = "yellow")
boxplot(iris[iris$Species=="virginica", ]$Sepal.Width,
        main = "I. virginica",
        ylab = "SW",
        col = "yellow")
boxplot(iris[iris$Species=="virginica", ]$Petal.Length,
        main = "I. virginica",
        ylab = "PL",
        col = "yellow")
boxplot(iris[iris$Species=="virginica", ]$Petal.Width,
        main = "I. virginica",
        ylab = "PW",
        col = "yellow")

