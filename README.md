# GitHub Copilot Lab in R

## Introduction
In this lab, we will use GitHub Copilot to assist us in performing a variety of R tasks, such as generating data, data manipulation, data analysis, pulling data from REST API's, refactoring code and using R to build a predictive ML model.

## Prerequisites
- Basic knowledge of R programming
- Visual Studio Code installed
- GitHub Copilot extension installed in Visual Studio Code

## Lab Tasks
For each of the tasks in this section use either inline completions (ghost text), Copilot Chat or the Copilot in-line popup (CTRL + I on Windows or Command + I on macOS) to generate the code. 

### Task 1: Generating Employee & Department CSV Data
We will start by generating a CSV file containing employee data. The data will include employee names, departments, and dates of join.

Generate another CSV file containing departments and the manager for each department.

### Task 2: Reading CSV Data into R and data manipulation
Next, we will read the employee CSV data into R using the read.csv() function, then perform some data manipulation by adding some new employees to the dataset.

Now read in the departments CSV data, join the two datasets together, then output to a combined employee CSV file that includes each employees manager. If an employee is the manager for the department or the department has no manager output their manager as "CEO".

Try asking Copilot how you can use method chaining to filter where manager is the CEO and descending sort the employees by date of join, outputting the result.

### Task 3: Data Analysis & Visualization

In this task we will do some data analysis and visualization. Start by reading in the new employee CSV from task 2, try grouping the data by department, and calculating the count of employees in each department.

Finally, we will visualize the employee count data in a bar chart, add count labels to the bars, color the bars, and add a legend.

### Task 4: Creating a Basic Calculator in R
In this task, you will create a basic calculator in R that reads all the input from the command line, and can perform basic operations such as addition, subtraction, multiplication, and division operations. 

Try asking Copilot if your code can be improved, see what improvements can be made, maybe error handling? maybe a reusable method? maybe validation?

### Task 5: Retrieve weather data from a REST API

In this task, you will interact with the OpenWeatherMap API to retrieve weather data for a specific city.

1. Register an account at [OpenWeatherMap](https://openweathermap.org/).
2. Once you have registered, navigate to the API keys section and generate a new API key.
3. In your R environment, read a city name from the command line.
4. Use the Geocoding API to convert the city name to latitude and longitude. The API endpoint is `http://api.openweathermap.org/geo/1.0/direct?q={city name}&limit={limit}&appid={API key}`. Replace `{city name}` with the city name you read from the command line, `{limit}` with 1, and `{API key}` with your actual API key.
5. Use the Current Weather Data API to retrieve the current weather for the latitude and longitude you obtained in the previous step. The API endpoint is `http://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}`. Replace `{lat}` and `{lon}` with the latitude and longitude you obtained, and `{API key}` with your actual API key.
6. Print the weather data to the console.

> [!NOTE]  
> All the APIs used in this task are free. No paid APIs are required.

Now see how you can use Copilot to improve your code.

### Task 6: Predictive Modeling with R
In this final task, you will use GitHub Copilot to assist you in building a predictive model using R. We will use the built-in mtcars dataset in R, which contains various car attributes and their corresponding miles per gallon (mpg).

1. Data Exploration: Start by loading the mtcars dataset and use functions like str(), summary(), and head() to understand the structure of the data. Plot some basic graphs to visualize the data.
2. Data Preprocessing: Check for missing values in the dataset. If there are any, handle them appropriately (e.g., by removing the rows with missing values or by imputing them). Also, if necessary, normalize or scale the data.
3. Model Building: Split the dataset into a training set and a test set. Use the training set to build a linear regression model with mpg as the target variable and the other variables as predictors.
4. Model Evaluation: Use the test set to evaluate the performance of the model. Calculate the mean squared error (MSE) and the coefficient of determination (R^2).
5. Model Improvement: If the model's performance is not satisfactory, try to improve it. This could involve adding interaction terms, using a different model, or tuning the model's parameters.
6. Prediction: Finally, use the model to make predictions on new data.

Throughout this task, you can use GitHub Copilot to generate code snippets, suggest improvements, and provide explanations for the code. This will not only help you complete the task more efficiently, but also deepen your understanding of data science in R.

### Conclusion
In this lab, we used GitHub Copilot to assist us in performing common R tasks. We hope you found this lab helpful and learned something new!
