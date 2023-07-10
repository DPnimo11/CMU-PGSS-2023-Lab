library(readr)
iris <- read_csv("C:/Users/darry/Desktop/Work/PGSS Lab/CMU-PGSS-2023-Lab/Week1/iris.csv", 
                 col_names = FALSE, col_types = cols(X1 = col_double()))
colnames(iris) <- c("Petal.Length", "Petal.Width", "Sepal.Length", "Sepal.Width", "Species")
# View(iris)

iris$Species <- as.factor(iris$Species)

# Establish the class of each column of the data frame
print(sapply(iris, class))


# Visualize the distribution of Species in a frequency table
print(table(iris$Species))

# Generate ggplot diagram to visualize a boxplot of Sepal.Width by Species and write this plot out to an image 
#install.packages("ggplot2"); install.packages("cowplot")
library(ggplot2)
p1 <- ggplot(data=iris, aes(x=Species, y=Sepal.Width, color=Species)) + geom_boxplot(outlier.alpha = 0.1) + theme_minimal()
ggsave("C:/Users/darry/Desktop/Work/PGSS Lab/iris.png", p1, height=4, width=4, limitsize=FALSE)
