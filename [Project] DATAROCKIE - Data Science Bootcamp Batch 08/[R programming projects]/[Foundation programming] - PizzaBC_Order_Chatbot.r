# Last update: 09/12/2023

# Assign "menu" dataframe by id and our_pizzas lists
id <- c(1, 2, 3, 4, 5, 6)
our_pizzas <- c("Hawaiian", "Pepperoni Lover's", "Meat Lover's", "Veggie Lover's", "Canadian", "Supreme Lover's")
menu <- data.frame(id, our_pizzas)

# Assign "pizzaprice" dataframe by no, size, and price
no <- c(1,2,3)
size <- c("small", "medium", "large")
price <- c(12.99, 19.99, 24.99)
pizzaprice <- data.frame(no, size, price)

# Define order_chatbot function
order_chatbot <- function() {
  print("Hi, Welcome to Pizza BC")
  print("To day, we have special pizza, 'Tomyum' pizza from Thailand it's only 18.99 CAD for medium pan, Do you want one?")
  print("Please answer in 'yes' or 'no'")
  
  chat1 <- readLines("stdin", n=1)    #Receive answer from customer in variable name "chat1"
  if (chat1 == 'yes') {
    tomyum <- 'Tom yum'
    size2 <- 'medium'
    total <- 18.99
    i <- 'yes'
    print("Do you want to upgrade medium to large size?, it's 4.99 CAD")
    print("Please answer in 'yes' or 'no'")
    chat2 <- readLines("stdin", n=1)
    if (chat2 == 'yes') {
      total <- total + 4.99
      size2 <- 'large'
      i <- 'yes'
    }
    else {
      total
      i <- 'yes'
    }
  }
  else {
    total <- 0
    tomyum <- ''
    size2 <- ''
    i <- 'no'
  }
  
  print("We also have other delicious pizza, let see the menu")
  print(menu)
  print("Please key the pizza ID")
  chat3 <- as.numeric(readLines("stdin", n=1))
  print(paste(our_pizzas[chat3], "pizza","what size do you want"))
  print("Please use 1 for small, 2 for medium, and 3 for large")
  print(pizzaprice)
  chat4 <- as.numeric(readLines("stdin", n=1))
  total <- total + price[chat4]
  
  # Print summarize order: It have 2 case, with/without "tomyum" pizza, so "if" had been used to print the correct sumarize order
  if (i == 'yes') {
      print(paste("Today, you have", our_pizzas[chat3], size[chat4], "size and", tomyum, size2, "size", "so, your total is ", total, "CAD, thank you have a good day"))
  }
  else {
  print(paste("Today, you have", our_pizzas[chat3], size[chat4], "size and your total is ", total, "CAD, thank you have a good day"))
  }
}

#call function to use it
order_chatbot()
