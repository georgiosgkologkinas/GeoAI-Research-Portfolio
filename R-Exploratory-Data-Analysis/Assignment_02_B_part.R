rm(list = ls())
library(dplyr)
library(ggplot2)
library(MASS)

dedomena = data(mammals)
dedomena1=as.data.frame(mammals)

## Ερώτηση 1 


ggplot(dedomena1, aes(x = body, y = brain)) +
  geom_point(alpha = 0.5) +
  stat_smooth(method = "lm", se = FALSE, color = "red") +
  labs(
    x = "body",
    y = "brain")+
  xlim(0, 500) +
  ylim(0, 500)


# linear regr
lm_model <- lm(brain ~ body, data = dedomena1)


equation <- as.character(round(lm_model$coefficients[1], 2))  # Intercept
equation <- paste0(equation, " + ", as.character(round(lm_model$coefficients[2], 2)), " * body")

# r^2
rsquared <- summary(lm_model)$r.squared

# ektypwsh / equation and R-squared value
cat("Linear Regression Equation: y =", equation, "\n")
cat("R-squared:", rsquared, "\n")









library(ggplot2)

ggplot(dedomena1, aes(x = body, y = brain)) +
  geom_point(alpha = 0.5) +
  labs(x = "body", y = "brain")
  
   

ggplot(dedomena1, aes(x = body, y = brain)) +
  geom_point(alpha = 0.5) +
  stat_smooth(method = "lm", se = FALSE, color = "red") +
  labs(x = "body", y = "brain")


lm_model <- lm(brain ~ body, data = dedomena1)

# the residuals
residuals <- resid(lm_model)

# zoom σε συγκεκριμενο χώρο για διερευνηση.
x_min <- 0  # Replace with your desired minimum x-axis value
x_max <- 280  # Replace with your desired maximum x-axis value
y_min <- -20  # Replace with your desired minimum y-axis value
y_max <-300  # Replace with your desired maximum y-axis value

#  residual plot with zoom
plot(dedomena1$body, residuals, ylab = "Residuals", xlab = "body", xlim = c(x_min, x_max), ylim = c(y_min, y_max),col = "black")
abline(h = 0, col = "red")




#
ggplot(dedomena1, aes(x = body, y = brain)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "nls", formula = y ~ a * exp(b * x), se = FALSE, color = "blue", 
              method.args = list(start = c(a = 1, b = 0.01))) +
  labs(
    x = "body",
    y = "brain") +
  xlim(0, 500) +
  ylim(0, 500)



# Create a scatter plot of cty and hwy with overlapping points and logarithmic model fitting starting from (0, 0)
constant = 0.1  # Adjust the constant as needed

ggplot(dedomena1, aes(x = body + constant, y = brain)) +
  geom_point(alpha = 0.5) +
  stat_smooth(method = "lm", formula = y ~ log(x - constant), se = FALSE, color = "red") +
  labs(
    x = "body",
    y = "brain") +
  xlim(-3, 100) +
  ylim(-35, 125)


# Display the plot
print(plot)

# ταΪσμα - φιτ μοντέλου
model <- lm(brain ~ log(body - constant), data = dedomena1)

# Calculate R-squared
rsquared <- summary(model)$r.squared
cat("R-squared:", rsquared, "\n")

# 
model <- lm(brain ~ log(body - constant), data = dedomena1)

# Plot the residuals !!!
plot(residuals(model), main = "Residuals Plot", xlab = "Observation Index", ylab = "Residuals")



#  Ερώτημα 2 


# επιλέγω υποσυνολο
x_interval <- c(0, 10)


dedomena2 <- dedomena1[dedomena1$body >= x_interval[1] & dedomena1$body <= x_interval[2], ]


plot(dedomena2)     

#
ggplot(dedomena2, aes(x = body, y = brain)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", formula = y ~ x, se = FALSE, color = "red") +
  labs(
    x = "Body",
    y = "Brain") +
  xlim(-3, x_interval[2]) +
  ylim(0, 500)



# 
model <- lm(brain ~ body, data = dedomena2)

#  R-squared
rsquared <- summary(model)$r.squared
cat("R-squared:", rsquared, "\n")

#  residuals
residuals <- residuals(model)
# 
plot(dedomena2$body, residuals, main = "Residuals Plot", xlab = "Body", ylab = "Residuals")

abline(h = 0, col = "red", lty = 2)

# Ερώτημα 3 


 ggplot(mammals, aes(x = body, y = brain)) +
  geom_point() +
  scale_x_log10() +
  scale_y_log10() +
  labs(x = "Body Mass (log10)",
       y = "Brain Mass (log10)") +
  ggtitle("Log-Log Scatter Plot of Body vs. Brain Mass")

 
 ggplot(dedomena1, aes(x = body, y = brain)) +
   geom_point() +
   scale_x_log10() +
   scale_y_log10() +
   labs(x = "Body Mass (log10)", y = "Brain Mass (log10)") +
   ggtitle("Log-Log Scatter Plot of Body vs. Brain Mass") +
   geom_smooth(method = "lm", se = FALSE, color = "red")

 
 
 lm_model <- lm(log10(brain) ~ log10(body), data = mammals)
 

 r_squared <- summary(lm_model)$r.squared
 

 

 cat("R-squared:", round(r_squared, 4), "\n")

 
 residuals <- residuals(lm_model)
 

 residual_plot <- ggplot(data.frame(log10_body = log10(mammals$body), residuals = residuals), aes(x = log10_body, y = residuals)) +
   geom_point() +
   geom_hline(yintercept = 0, color = "red", linetype = "dashed") +
   labs(x = "log10(Body Mass)", y = "Residuals", title = "Residuals Plot")
 
 print(residual_plot)
 
# Ερώτημα 4 
 dedomena4=dedomena1
 
 # Create a new column 'brb_ratio' using the division of 'brain' by 'body'
 dedomena4$brb_ratio <- mammals$brain / mammals$body
 
 # Print the updated dataset
 print(dedomena4)
dedomena4 = as.data.frame(dedomena4)

dedomena4$names <- rownames(dedomena4)

# Create a bar plot
 ggplot(dedomena4, aes(x = names, y = brb_ratio)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(x = "Mammal Name", y = "brb_ratio") +
  ggtitle("Distribution of brb_ratio for Mammals") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


######################################################


 mean_brb_ratio <- mean(dedomena4$brb_ratio)
 sd_brb_ratio <- sd(dedomena4$brb_ratio)
 
 ggplot(dedomena4, aes(x = names, y = brb_ratio)) +
   geom_bar(stat = "identity", fill = "blue") +
   labs(x = "Mammal Name", y = "brb_ratio") +
   ggtitle("Distribution of brb_ratio for Mammals") +
   theme_minimal() +
   theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
   geom_text(aes(x = 0.5, y = mean_brb_ratio, label = paste("Mean: ", round(mean_brb_ratio, 2))), vjust = -1) +
   geom_text(aes(x = 0.5, y = mean_brb_ratio + 0.1 * sd_brb_ratio, label = paste("SD: ", round(sd_brb_ratio, 2))), vjust = -1)

 
 
#############################################
 
 # Calculate the mean and standard deviation of brb_ratio
 mean_brb_ratio <- mean(dedomena4$brb_ratio)
 sd_brb_ratio <- sd(dedomena4$brb_ratio)
 
 


plot =  ggplot(dedomena4, aes(x = names, y = brb_ratio)) +
   geom_bar(stat = "identity", fill = "blue") +
   labs(x = "Mammal Name", y = "brb_ratio") +
   ggtitle("Distribution of brb_ratio for Mammals") +
   theme_minimal() +
   theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
   geom_text(aes(x = 0.5, y = mean_brb_ratio, label = paste("Mean: ", round(mean_brb_ratio, 2))), vjust = -1) +
   geom_text(aes(x = 0.5, y = mean_brb_ratio + 0.1 * sd_brb_ratio, label = paste("SD: ", round(sd_brb_ratio, 2))), vjust = -1)
 
         
         
plot +
  geom_hline(yintercept = mean_brb_ratio, color = "red", linetype = "dashed", size = 1) +
  geom_hline(yintercept = c(mean_brb_ratio - sd_brb_ratio, mean_brb_ratio + sd_brb_ratio), color = "green", linetype = "dotted", size = 1)
######################################





  
  


