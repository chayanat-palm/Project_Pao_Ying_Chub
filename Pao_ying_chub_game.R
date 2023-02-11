pao_ying_chub <- function(){
  login <- function() {
    un <- readline("Enter your Username: ")
    pw <- readline("Enter your Password: ")
    if(un == "palm007" & pw == "1234") {
      cat("\nSuccessfully login.\n")
    } else {
      cat("\nYour username/ password is incorrect.\n")
      login()
    }
  }
  cat("\nAuthentication is required.\n")
  login()
  cat("####################################\nWelcome to Rock Paper Scissors GAME\n####################################\n")
  cat("Game Rules:\n")
  cat("1.To select a hand, simply type 1, 2, or 3.
  [1:rock, 2:paper, 3:scissors]\n")
  cat("2.Rock wins against Scissors;
  Paper wins against Rock;
  and Scissors wins against Paper.
  If both players select the same hand,
  it is considered a tie\n")
  cat("3.Type 4 to exit the game if
  you're tired or bored.")
  cat("\n##################################\n##################################\n")
  cat("Then let's get this game started!")
  cat("\n##################################\n##################################\n")
  hands <- c("rock", "paper", "scissors")
  user_hand = 0
  win = 0
  tie = 0
  lose = 0
  while (user_hand != 4) {
    com_hand <- sample( c(1, 2, 3), 1)
    user_hand <- as.numeric(readline("Please select hand[1:Rock, 2:Paper, 3:Scissors, 4:Exit]: "))
    if(is.na(user_hand) | user_hand == 0) {
      user_hand <- as.numeric(0)
      cat("\nYou must type one of the following numbers: 1, 2, 3, or 4.\n")
    } else if(user_hand == com_hand) {
      cat("\nYou select:",hands[user_hand])
      cat("\nBot select:",hands[com_hand])
      tie <- tie + 1
      cat("\nTIE!\n")
    } else if (user_hand == 1 & com_hand == 2) {
      cat("\nYou select:",hands[user_hand])
      cat("\nBot select:",hands[com_hand])
      lose <- lose + 1
      cat("\nYou Lose!\n")
    } else if (user_hand == 1 & com_hand == 3) {
      cat("\nYou select:",hands[user_hand])
      cat("\nBot select:",hands[com_hand])
      win <- win +1
      cat("\nYou Win!!\n")
    } else if (user_hand == 2 & com_hand == 1) {
      cat("\nYou select:",hands[user_hand])
      cat("\nBot select:",hands[com_hand])
      win <- win +1
      cat("\nYou Win!!\n")
    } else if (user_hand == 2 & com_hand == 3) {
      cat("\nYou select:",hands[user_hand])
      cat("\nBot select:",hands[com_hand])
      lose <- lose + 1
      cat("\nYou Lose!\n")
    } else if (user_hand == 3 & com_hand == 1) {
      cat("\nYou select:",hands[user_hand])
      cat("\nBot select:",hands[com_hand])
      lose <- lose +1
      cat("\nYou Lose!\n")
    } else if (user_hand == 3 & com_hand == 2) {
      cat("\nYou select:",hands[user_hand])
      cat("\nBot select:",hands[com_hand])
      win <- win +1
      cat("\nYou Win!!\n")
    } else if (user_hand == 4) {
      cat("\n##################################\n##################################\n\n")
      cat("Match Results:\n")
      cat("WIN  =",win,"\n")
      cat("TIE  =",tie,"\n")
      cat("LOSE =",lose,"\n")
      cat("\n##################################\n##################################\n")
      cat("Thank you for taking the time to play this game :)")
    } else {
      cat("\nYou must type one of the following numbers: 1, 2, 3, or 4.\nWating . . . ")
    }
  }
}