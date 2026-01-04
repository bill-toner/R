ones <- c(1:5)
twos <- c(seq(2, 10, 2))
threes <- c(seq(1, 15, 3))
fours <- c(seq(1, 20, 4))
fives <- c(seq(1, 25, 5))

numbers_df <- data.frame(
  Ones = ones, Twos = twos, Threes = threes, Fours = fours, Fives = fives
)

numbers_df

sixes <- c(seq(6, 36, 6))
new_df <- rbind(numbers_df, sixes)
new_df
new_df <- cbind(numbers_df, sixes)
new_df

new_df[6, 5]
new_df[6, "Fives"]

divide_and_round <- function(x, y) {
  result <- x / y
  return(round(result, 2))
}

pirate_names <- c("Blackbeard", "Anne Bonny", "Black Bart")
crew_sizes <- c(5, 3, 7)
ships_df <- data.frame(
  Captain = pirate_names, CrewSize = crew_sizes
)

ships_df[1]
ships_df$Captain
ships_df <- rbind(ships_df, list("Henry Morgan", 5))
ships_df

for (size in ships_df$CrewSize) { 
  if (size > 5) {
    print(paste(size, "is a large crew size"))
  } else if (size > 3) { 
    print(paste(size, "is a medium crew size"))
  } else { 
    print(paste(size, "is a small crew size"))
    }
}
