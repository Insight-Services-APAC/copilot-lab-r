# 1. Data Exploration: Start by loading the mtcars dataset and use functions like str(), summary(), and head() to understand the structure of the data. Plot some basic graphs to visualize the data.
# Load the mtcars dataset
data(mtcars)

# Use str() to understand the structure of the data
str(mtcars)

# Use summary() to get summary statistics of the data
summary(mtcars)

# Use head() to view the first few rows of the data
head(mtcars)

# Plot some basic graphs to visualize the data
plot(mtcars$mpg, mtcars$wt, main = "Miles per Gallon vs. Weight", xlab = "Miles per Gallon", ylab = "Weight")
plot(mtcars$mpg, mtcars$hp, main = "Miles per Gallon vs. Horsepower", xlab = "Miles per Gallon", ylab = "Horsepower")

# 2. Data Preprocessing: Check for missing values in the dataset. If there are any, handle them appropriately (e.g., by removing the rows with missing values or by imputing them). Also, if necessary, normalize or scale the data.
# Check for missing values
missing_values <- sum(is.na(mtcars))
if (missing_values > 0) {
    # Handle missing values
    # Option 1: Remove rows with missing values
    mtcars <- na.omit(mtcars)
    
    # Option 2: Impute missing values
    # You can use various imputation methods, such as mean imputation or regression imputation
    # Here's an example of mean imputation
    # mtcars <- na.aggregate(mtcars, FUN = mean)
}

# Normalize or scale the data
# You can use various scaling methods, such as min-max scaling or z-score scaling
# Here's an example of min-max scaling
mtcars_scaled <- scale(mtcars, center = FALSE, scale = apply(mtcars, 2, max) - apply(mtcars, 2, min))

# 3. Model Building: Split the dataset into a training set and a test set. Use the training set to build a linear regression model with mpg as the target variable and the other variables as predictors.
# Split the dataset into a training set and a test set
set.seed(123)  # Set seed for reproducibility
train_indices <- sample(1:nrow(mtcars), 0.7 * nrow(mtcars))  # 70% of the data for training
train_data <- mtcars[train_indices, ]
test_data <- mtcars[-train_indices, ]

# Build a linear regression model
model <- lm(mpg ~ ., data = train_data)

# 4. Model Evaluation: Use the test set to evaluate the performance of the model. Calculate the mean squared error (MSE) and the coefficient of determination (R^2).
# Use the test set to evaluate the performance of the model
predictions <- predict(model, newdata = test_data)
mse <- mean((test_data$mpg - predictions)^2)
r_squared <- summary(model)$r.squared

# 5. Model Improvement: If the model's performance is not satisfactory, try to improve it. This could involve adding interaction terms, using a different model, or tuning the model's parameters.
# If the model's performance is not satisfactory, try to improve it
# Option 1: Adding interaction terms
# You can add interaction terms between variables to capture non-linear relationships
# For example, adding an interaction term between mpg and hp
model_with_interaction <- lm(mpg ~ . + mpg:hp, data = train_data)

# Option 2: Using a different model
# Linear regression may not be the best model for the data
# You can try using other models, such as decision trees, random forests, or support vector machines
# For example, using a random forest model
install.packages("randomForest")
library(randomForest)
model_rf <- randomForest(mpg ~ ., data = train_data)

# Option 3: Tuning the model's parameters
# You can try tuning the parameters of the model to improve its performance
# For example, tuning the regularization parameter in linear regression
install.packages("glmnet")
library(glmnet)
model_tuned <- cv.glmnet(x = as.matrix(train_data[, -1]), y = train_data$mpg, alpha = 1)

# Choose the best model based on evaluation metrics (e.g., MSE, R^2)
# Evaluate the models on the test set
predictions_with_interaction <- predict(model_with_interaction, newdata = test_data)
mse_with_interaction <- mean((test_data$mpg - predictions_with_interaction)^2)
r_squared_with_interaction <- summary(model_with_interaction)$r.squared

predictions_rf <- predict(model_rf, newdata = test_data)
mse_rf <- mean((test_data$mpg - predictions_rf)^2)
r_squared_rf <- cor(predictions_rf, test_data$mpg)^2

predictions_tuned <- predict(model_tuned, newx = as.matrix(test_data[, -1]), s = "lambda.min")
mse_tuned <- mean((test_data$mpg - predictions_tuned)^2)
r_squared_tuned <- cor(predictions_tuned, test_data$mpg)^2

# Compare the evaluation metrics of the models
evaluation_metrics <- data.frame(
    Model = c("Linear Regression", "Linear Regression with Interaction", "Random Forest", "Tuned Linear Regression"),
    MSE = c(mse, mse_with_interaction, mse_rf, mse_tuned),
    R_squared = c(r_squared, r_squared_with_interaction, r_squared_rf, r_squared_tuned)
)
evaluation_metrics

# 6. Prediction: Finally, use the model to make predictions on new data.
# Use the model to make predictions on new data
new_data <- data.frame(
    cyl = c(6, 4, 8),
    disp = c(200, 100, 300),
    hp = c(150, 80, 200),
    drat = c(3.5, 3.9, 3.2),
    wt = c(2.8, 2.2, 3.5),
    qsec = c(17.5, 20.2, 16.4),
    vs = c(0, 1, 1),
    am = c(1, 0, 0),
    gear = c(4, 4, 3),
    carb = c(4, 2, 2)
)

predictions_new_data <- predict(model, newdata = new_data)
predictions_new_data