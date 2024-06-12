# Read in the employee_data.csv file
employee_data <- read.csv("employee_data.csv")

# Add new employees to the employee_data dataframe
new_employees <- data.frame(
    name = c("John Doe", "Jane Smith"),
    department = c("Sales", "Marketing"),
    date_of_join = c("2022-01-01", "2022-02-01")
)

employee_data <- rbind(employee_data, new_employees)

# Print the updated employee_data dataframe
print(employee_data)

# Create a table listing employee count grouped by department
employee_count <- table(employee_data$department)

# Define colors for each bar
colors <- rainbow(length(employee_count))

# Visualize the data in a bar chart
bp <- barplot(employee_count, main = "Employee Count by Department", xlab = "Department", ylab = "Count", col = colors)

# Add count to each bar
text(x = bp, y = employee_count, label = employee_count, pos = 3, cex = 0.8, col = "black", font = 2, fontface = "bold")

# Add a legend
legend("topright", legend = names(employee_count), fill = colors, cex = 0.8)

# Add total count
employee_count <- c(employee_count, Total = sum(employee_count))

# Print the employee count with total
print(employee_count)