# Generate employee data
employee_data <- data.frame(
    name = c("John Doe", "Jane Smith", "Alice Johnson", "Bob Brown", "Charlie Davis"),
    department = c("Engineering", "Marketing", "Human Resources", "Engineering", "Marketing"),
    date_of_join = c("2020-01-01", "2020-02-01", "2020-03-01", "2020-04-01", "2020-05-01")
)

# Write the data to a CSV file
write.csv(employee_data, "employee_data.csv", row.names = FALSE)