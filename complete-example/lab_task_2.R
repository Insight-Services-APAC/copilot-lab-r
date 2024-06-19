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

# Read in the department data
department_data <- read.csv("department_data.csv")

print(department_data)

# Left Join the department data with the employee data
employee_data <- merge(employee_data, department_data, by = "department", all.x = TRUE)

# Check if an employee is the manager or if the department has no manager
employee_data$manager[is.na(employee_data$manager) | employee_data$name == employee_data$manager] <- "CEO"

# Print the updated employee data
print(employee_data)

# Write the employee data with manager to CSV
write.csv(employee_data, "employee_data_with_manager.csv", row.names = FALSE)
