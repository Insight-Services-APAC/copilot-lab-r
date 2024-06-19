# Read the CSV data into R
employee_data <- read.csv("employee_data_with_manager.csv")

# Group the data by department and calculate the count of employees in each department
employee_count <- table(employee_data$department)

print(employee_count)

# Define colors for each bar
colors <- rainbow(length(employee_count))

# Visualize the data in a bar chart
bp <- barplot(employee_count, main = "Employee Count by Department", xlab = "Department", ylab = "Count", col = colors)

# Add count labels to the bars
text(x = bp, y = employee_count, label = employee_count, pos = 3, cex = 0.8, col = "black")

# Add a legend
legend("topright", legend = names(employee_count), fill = colors, cex = 0.8)