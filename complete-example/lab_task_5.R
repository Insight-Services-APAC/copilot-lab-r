# install.packages("httr")  # Uncomment this line if you haven't installed the httr package
library(httr)

# Constants
BASE_URL_GEO <- "http://api.openweathermap.org/geo/1.0/direct"
BASE_URL_WEATHER <- "https://api.openweathermap.org/data/2.5/weather"
API_KEY <- "<your_api_key>"

# Function to make API request and parse response
make_api_request <- function(url) {
  response <- GET(url)
  if (http_type(response) != "application/json") {
    stop("API request failed")
  }
  content(response, "parsed")
}

# Read city name
city <- readline("Enter your city: ")
if (city == "") {
  stop("City name cannot be empty")
}

# URL encode the city name
city <- URLencode(city)

# Construct the API URL
url <- paste0(BASE_URL_GEO, "?q=", city, "&limit=1&appid=", API_KEY)

# Make the API request
content <- make_api_request(url)

# Extract latitude and longitude
lat <- content[[1]]$lat
lon <- content[[1]]$lon
name <- content[[1]]$name
country <- content[[1]]$country

print(paste("City: ", name, ", Country: ", country))
print(paste("Latitude: ", lat, ", Longitude: ", lon))

# Define the URL for the weather API
weather_url <- paste0(BASE_URL_WEATHER, "?lat=", lat, "&lon=", lon, "&appid=", API_KEY)

# Make the GET request
weather_content <- make_api_request(weather_url)

# Extract the weather
weather <- weather_content$weather[[1]]$main

# Extract the temperature and convert it from Kelvin to Celsius
temperature <- weather_content$main$temp - 273.15

# Print the weather and temperature
print(paste("Weather in ", city, ": ", weather))
print(paste("Temperature in ", city, ": ", round(temperature, 2), "°C"))