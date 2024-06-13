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

### Task 1: Generating Employee CSV Data
We will start by generating a CSV file containing employee data. The data will include employee names, departments, and dates of join.

<details>
<summary>Reveal Code</summary>

```r
# Generate employee data
employee_data <- data.frame(
    name = c("John Doe", "Jane Smith", "Alice Johnson", "Bob Brown", "Charlie Davis"),
    department = c("Engineering", "Marketing", "Human Resources", "Engineering", "Marketing"),
    date_of_join = c("2020-01-01", "2020-02-01", "2020-03-01", "2020-04-01", "2020-05-01")
)

# Write the data to a CSV file
write.csv(employee_data, "employee_data.csv", row.names = FALSE)
```

</details>

### Task 2: Reading CSV Data into R
Next, we will read the CSV data into R using the read.csv() function.

<details>
<summary>Reveal Code</summary>

```r
# Read the CSV data into R
employee_data <- read.csv("employee_data.csv")
```

</details>

### Task 3: Data Manipulation and Analysis
We will then perform some data manipulation and analysis tasks, such as adding new employees to the data, grouping the data by department, and calculating the count of employees in each department.

<details>
<summary>Reveal Code</summary>

```r
# Add new employees to the data
new_employees <- data.frame(
    name = c("Eve Evans", "Frank Foster"),
    department = c("Sales", "Marketing"),
    date_of_join = c("2022-01-01", "2022-02-01")
)

employee_data <- rbind(employee_data, new_employees)

# Group the data by department and calculate the count of employees in each department
employee_count <- table(employee_data$department)
```

</details>

### Task 4: Data Visualization
Finally, we will visualize the employee count data in a bar chart, add count labels to the bars, color the bars, and add a legend.

<details>
<summary>Reveal Code</summary>

```r
# Define colors for each bar
colors <- rainbow(length(employee_count))

# Visualize the data in a bar chart
bp <- barplot(employee_count, main = "Employee Count by Department", xlab = "Department", ylab = "Count", col = colors)

# Add count labels to the bars
text(x = bp, y = employee_count, label = employee_count, pos = 3, cex = 0.8, col = "black")

# Add a legend
legend("topright", legend = names(employee_count), fill = colors, cex = 0.8)
```

</details>

### Conclusion
In this lab, we used GitHub Copilot to assist us in performing common R tasks. We generated a CSV file containing employee data, read the data into R, performed some data manipulation and analysis, and visualized the data. We hope you found this lab helpful and learned something new!
