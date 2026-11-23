rm(list = ls())
library(ggplot2 )
library(dplyr)
library(circlize)
data(mpg)

dedomena=mpg 

## Ασκήσεις κ.Δέρβου - Διάλεξη 3η

# Ερώτημα 1 

ggplot(data = dedomena, aes(x = manufacturer, fill = class)) +
  geom_bar() +
  labs(
       x = "Manufacturer",
       y = "Count") +
  theme_minimal()

# Ερώτημα 2 


car_counts <- with(dedomena, table(manufacturer, class))


car_counts_df <- as.data.frame(car_counts)


ggplot(data = car_counts_df, aes(x = manufacturer, y = Freq, fill = class)) +
  geom_bar(stat = "identity") +
  coord_polar(theta = "y") +
  labs( x = "Manufacturer",  y = "count") +  
  scale_fill_manual(values = c("coral", "goldenrod3", "forestgreen", "darkseagreen", "dodgerblue1", "darkorchid1", "deeppink"))  # Customize colors


# Ερώτημα 3


car_proportions <- prop.table(with(dedomena, table(manufacturer, class)), margin = 1)


car_proportions_df <- as.data.frame(car_proportions)
colnames(car_proportions_df) <- c("Manufacturer", "Class", "Proportion")


ggplot(data = car_proportions_df, aes(x = Manufacturer, y = Proportion, fill = Class)) +
  geom_bar(stat = "identity") +
  labs(
       x = "Manufacturer",
       y = "Proportion") +
  scale_fill_manual(values = c("coral", "goldenrod3", "forestgreen", "darkseagreen", "dodgerblue1", "darkorchid1", "deeppink"))


# Ερώτημα 4 



car_proportions <- prop.table(with(mpg, table(manufacturer, class)), margin = 1)


car_proportions_df <- as.data.frame(car_proportions)
colnames(car_proportions_df) <- c("Manufacturer", "Class", "Proportion")


ggplot(data = car_proportions_df, aes(x = Manufacturer, y = Proportion, fill = Class)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(
       x = "Proportions",
       y = "Manufacturer") +
  scale_fill_manual(values = c("coral", "goldenrod3", "forestgreen", "darkseagreen", "dodgerblue1", "darkorchid1", "deeppink"))


# Ερώτημα 5 



ggplot(mpg, aes(x = cty)) +
  geom_density(fill = "lightblue", color = "red") +
  labs( x = "cty", y = "Density")

# Ερώτημα 6 


mean_cty <- mean(mpg$cty)


ggplot(mpg, aes(x = cty)) +
  geom_density(fill = "lightblue", color = "red") +
  geom_vline(xintercept = mean_cty, color = "red", linetype = "dashed") +
  labs( x = "cty",y = "Density")

# Ερώτημα 7 



ggplot(mpg, aes(x = cty)) +
  geom_density(fill = "lightblue", color = "red") +
  geom_vline(xintercept = mean_cty, color = "blue") +
  geom_vline(xintercept = mean_cty, color = "red", linetype = "dashed") +
  labs(
       x = "cty",
       y = "Density")


ggplot(mpg, aes(x = cty)) +
  geom_density(fill = "lightblue", color = "red") +
  geom_vline(xintercept = c(mean_cty, mean_cty + 0.03), color = c("red", "blue"), linetype = c("dashed", "solid")) +
  labs(
       x = "cty",
       y = "Density")

# Ερώτημα 8


ggplot(mpg, aes(x = cty, color = drv, fill = drv)) +
  geom_density(alpha=0.5) +
  labs(
       x = " cty",
       y = "Density") +
  scale_fill_manual(values = c("4" = "coral", "r" = "lightblue", "f" = "green"))


# Ερώτημα 9 



ggplot(mpg) +
  geom_density(aes(x = cty, fill = "cty"), alpha = 0.5) +
  geom_density(aes(x = hwy, fill = "hwy"), alpha = 0.8) +
  labs(
       x = "milepg",
       y = "") +
  scale_fill_manual(values = c("cty" = "coral", "hwy" = "lightblue")) +
  guides(fill = guide_legend(title = "Mileage"))


# Ερώτημα 10


covariance <- cov(mpg$cty, mpg$hwy)


ggplot(mpg, aes(x = cty, y = hwy)) +
  geom_point() +
  labs(
       x = "cty",
       y = "hwy",
       caption = paste("Covariance:", round(covariance, 2)))


# Ερώτημα 11



ggplot(mpg, aes(x = cty, y = hwy)) +
  geom_point(alpha = 0.5) +
  stat_smooth(method = "lm", se = FALSE, color = "red") +
  labs(
       x = "cty",
       y = "hwy")

