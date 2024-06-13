# Read the CSV data into R
employee_data <- read.csv("employee_data.csv")

print(employee_data)

# Add new employees to the data
new_employees <- data.frame(
    name = c("Eve Evans", "Frank Foster"),
    department = c("Sales", "Marketing"),
    date_of_join = c("2022-01-01", "2022-02-01")
)

employee_data <- rbind(employee_data, new_employees)

print(employee_data)

# Write the data to a CSV file
write.csv(employee_data, "employee_data.csv", row.names = FALSE)