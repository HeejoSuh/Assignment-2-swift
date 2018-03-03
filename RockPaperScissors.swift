//
//  RockPaperScissors.swift
//  This program is an interactive rock paper scissors game
//
//
//  Created by Heejo Suh in Feb 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//

// cd ICS4U/Assignments/2		swiftc RockPaperScissors.swift		swift RockPaperScissors.swift



import Foundation



print("\n\n")

//array  valid input, what needed to win that input
var play: [String:String] = [
								"Rock":"Paper",
								"Paper":"Scissors",
								"Scissors":"Rock"]
								

var input: String?

var userInput: String = ""
var compInput: String
var result = ""
        


//get valid input
while userInput == "" {
	print("Rock, Scissors, Paper?\nUser:")
    	input = readLine(strippingNewline: true)
	//if valid input 
	if play[String(input!)] != nil{
		userInput = input!
		
		//get computer input
		srand(UInt32(time(nil)))
		//get random key from dictionary
		compInput = Array(play)[Int(random()%(2)+1 )].key
		//compInput = play[Int(random()%(2))]s
		print("Computer: \(compInput)")


		//calculate win
		if userInput == compInput{
			//tie
  		  result = "It's a tie!"
		}else if play[userInput] == compInput{
			//lose
   		 result = "You lost!"
		}else{
  		  //win
   		 result = "You won!"
		}
		print(result)
		break
		
	} else {
		print("ERROR: Try again with Rock, Scissors, or Paper.\n")
	}
}



print("\n\n")

