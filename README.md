# GitHub Copilot Lab in R

## Introduction
In this lab, we will use GitHub Copilot to assist us in performing common R tasks. We will generate a CSV file containing employee data, read the data into R, perform some data manipulation and analysis, and finally visualize the data.

## Prerequisites
- Basic knowledge of R programming
- Visual Studio Code installed
- GitHub Copilot extension installed in Visual Studio Code

## Lab Tasks
For each of the tasks in this section use either Copilot Chat or the Copilot in-line popup (CTRL + I on Windows or Command + I on macOS) to generate the code. 

You can see an example of what the code should look like by clicking *Reveal Code*, but to get the most out of these tasks you should refrain from looking at the code.

### Task 1: Generating Employee & Department CSV Data
We will start by generating a CSV file containing employee data. The data will include employee names, departments, and dates of join.

Generate another CSV file containing departments and the manager for each department.

### Task 2: Reading CSV Data into R and data manipulation
Next, we will read the employee CSV data into R using the read.csv() function, then perform some data manipulation by adding some new employees to the dataset.

Now read in the departments CSV data, join the two datasets together, then output to a combined employee CSV file that includes each employees manager. If an employee is the manager for the department or the department has no manager output their manager as "CEO".

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

### Conclusion
In this lab, we used GitHub Copilot to assist us in performing common R tasks. We hope you found this lab helpful and learned something new!
