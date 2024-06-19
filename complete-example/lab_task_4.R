# Define the function
calculate <- function(num1, num2, operation) {
  switch(operation,
         "+" = num1 + num2,
         "-" = num1 - num2,
         "*" = num1 * num2,
         "/" = if(num2 != 0) num1 / num2 else "Error: Division by zero",
         "Invalid operation")
}

# Read the numbers & operator
num1 <- readline(prompt = "Enter first number: ")
num2 <- readline(prompt = "Enter second number: ")
operation <- readline(prompt = "Enter operation (+, -, *, /): ")

# Validate the numbers
num1_numeric <- suppressWarnings(as.numeric(num1))
num2_numeric <- suppressWarnings(as.numeric(num2))

if (is.na(num1_numeric) || is.na(num2_numeric)) {
  cat("Error: Both inputs must be numbers.\n")
} else {
  # Perform the calc
  result <- calculate(num1_numeric, num2_numeric, operation)

  # Output the result
  cat("Result: ", result, "\n")
}