setwd('C:/Users/it24103669/Desktop/IT24103635')
branch_data <- read.table("Exercise.txt", header = TRUE, sep = "\t")
str(branch_data)      # Shows structure and types
head(branch_data)     # Displays first few rows
boxplot(branch_data$Sales, 
        main = "Boxplot of Sales", 
        xlab = "Sales", 
        horizontal = TRUE, 
        col = "lightblue", 
        border = "darkblue", 
        na.rm = TRUE)
names(branch_data)
str(branch_data)
summary(branch_data)
branch_data <- read.table("Exercise.txt", header = FALSE, sep = ",")
colnames(branch_data) <- c("ID", "Sales", "Advertising", "Years")
str(branch_data)
boxplot(branch_data$Sales, 
        main = "Boxplot of Sales", 
        xlab = "Sales", 
        horizontal = TRUE, 
        col = "lightblue", 
        border = "darkblue")
branch_data <- read.csv("Exercise.txt", header = FALSE)
colnames(branch_data) <- c("ID", "Sales", "Advertising", "Years")
branch_data$Sales <- as.numeric(branch_data$Sales)
branch_data$Advertising <- as.numeric(branch_data$Advertising)
branch_data$Years <- as.numeric(branch_data$Years)
str(branch_data)
boxplot(branch_data$Sales, main = "Boxplot of Sales", horizontal = TRUE)
summary(branch_data$Advertising)
IQR(branch_data$Advertising)
IQR(branch_data$Advertising, na.rm = TRUE)
IQR(branch_data$Advertising)
find_outliers <- function(x) {
  # Remove NA values
  x <- x[!is.na(x)]
  
  # Calculate Q1, Q3, and IQR
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  
  # Define bounds
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  
  # Return outliers
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}
outliers_in_years <- find_outliers(branch_data$years)
print(outliers_in_years)
