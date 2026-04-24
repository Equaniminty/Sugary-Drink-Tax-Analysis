# 1. Simulate the expanded dataset (Philly vs NYC)
set.seed(123) 

generate_data <- function(n, prob, city, year) {
  # Added curly braces for the function body
  data.frame(
    city = city,
    year = year,
    soda_daily = rbinom(n, 1, prob)
  )
}

# 2. Create the Master Data Frame from Historical YRBSS Averages
df <- rbind(
  # Pre-Tax Years
  generate_data(1170, 0.237, "Philadelphia", 2013),
  generate_data(1509, 0.216, "Philadelphia", 2015), 
  generate_data(8124, 0.157, "NYC", 2013), 
  generate_data(6860, 0.158, "NYC", 2015),
  
  # Post-Tax Years
  generate_data(1458, 0.176, "Philadelphia", 2017),
  generate_data(1091, 0.135, "Philadelphia", 2019),
  generate_data(8129, 0.149, "NYC", 2017),
  generate_data(7766, 0.124, "NYC", 2019)
)

# 3. Create dummies within the dataframe
# This ensures the 'lm' function can find them in 'data = df'
df$philly <- ifelse(df$city == "Philadelphia", 1, 0)
df$post_period <- ifelse(df$year >= 2017, 1, 0)

# 4. Linear Model to Estimate Impact of Policy Change (Difference-in-Differences)
lpm_model <- lm(soda_daily ~ philly * post_period, data = df)
summary(lpm_model)