# install.packages("httr")  # Uncomment this line if you haven't installed the httr package
library(httr)

city <- readline("Enter your city: ")

# URL encode the city name
city <- URLencode(city)

# Replace with your actual API key
api_key <- "<your_api_key>"

# Construct the API URL
url <- paste0("http://api.openweathermap.org/geo/1.0/direct?q=", city, "&limit=1&appid=", api_key)

# Make the API request
response <- GET(url)

# Parse the response to JSON
content <- content(response, "parsed")

# Extract latitude and longitude
lat <- content[[1]]$lat
lon <- content[[1]]$lon
name <- content[[1]]$name
country <- content[[1]]$country

print(paste("City: ", name, ", Country: ", country))
print(paste("Latitude: ", lat, ", Longitude: ", lon))

# Define the URL for the weather API
weather_url <- paste0("https://api.openweathermap.org/data/2.5/weather?lat=", lat, "&lon=", lon, "&appid=", api_key)

# Make the GET request
weather_response <- GET(weather_url)

# Print the weather response
weather_content <- content(weather_response, "parsed")

# Extract the weather
weather <- weather_content$weather[[1]]$main

# Extract the temperature and convert it from Kelvin to Celsius
temperature <- weather_content$main$temp - 273.15

# Print the weather and temperature
print(paste("Weather in ", city, ": ", weather))
print(paste("Temperature in ", city, ": ", round(temperature, 2), "°C"))