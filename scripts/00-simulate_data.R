#### Preamble ####
# Purpose: Simulates of Death of Homeless Data
# Author:Shipeng Zhang
# Date: 22 January 2024
# Contact: shipeng.zhang@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
library(caret)

# Load and prepare data
NHPI_data <- read_csv("outputs/data/analysis_data.csv")
set.seed(123) # for reproducibility
train_index <- createDataPartition(y = NHPI_data$Consumption, p = 0.8, list = FALSE)
train_data <- NHPI_data[train_index, ]
test_data <- NHPI_data[-train_index, ]

# Train model
model <- train(Consumption ~ NHPI, data = train_data, method = "lm")

# Evaluate model
predictions <- predict(model, newdata = test_data)
RMSE <- sqrt(mean((test_data$Consumption - predictions)^2))
R_squared <- cor(test_data$Consumption, predictions)^2

# Visualize results
ggplot() +
  geom_point(data = test_data, aes(x = NHPI, y = Consumption), color = "blue") +
  geom_line(data = test_data, aes(x = NHPI, y = predictions), color = "red") +
  labs(x = "NHPI", y = "Consumption", title = "Actual vs. Predicted Consumption")

# Print evaluation metrics
print(paste("RMSE:", RMSE))
print(paste("R-squared:", R_squared))
