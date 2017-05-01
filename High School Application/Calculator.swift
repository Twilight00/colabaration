//
//  Calculator.swift
//  High School Application
//
//  Created by 2017andreworosco on 3/14/17.
//  Copyright © 2017 2017alexisperez. All rights reserved.
//

import Foundation

//This holds the ticket values and the vars below outside the dictionary bring out the value
var Tickets: [String:Double] = [
    "child":5,
    "ASB": 0,
    "StudentWo":9,
    "StudentW": 6,
    "Adults": 10,
    "Senior": 8,
]
var childCost = Tickets["child"]!
var ASBCost = Tickets["ASB"]!
var studentWoCost = Tickets["StudentWo"]!
var studentWCost = Tickets["StudentW"]!
var adultsCost = Tickets["Adults"]!
var seniorCost = Tickets["Senior"]!

// The calculator would allow for it deal with such a thing as percentages and be abe to do a bit more
func Calculator(One: Double, Two : Double, Oper : Character) -> Double
{
    var answer: Double = 0
    switch Oper{
    case Character("+"):
        answer = One + Two
        break

    case Character("*"):
        answer = One * Two
        break
        
    default :
        answer = 0
        break
        
    }
    return answer
}

//This calculator would allow for adding of last amount to updated amount

func addCalculator(One: Double, Two : Double, Oper : Character) -> Double
{
    var answer: Double = 0
    switch Oper{
    case Character("+"):
        answer = One + Two
        break

    default :
        answer = 0
        break
        
    }
    
    return answer
}
//create variable to be able to manipulate and have it manipulate to a double

//allows for the calculator to hold the determinates that allow for the calacultaor to function and add the variables together.
class Counters{
    var ONE: Double = childCost
    var TWO: Double = Double(valueCount["childCount"]!)
    
    
    var OPER : Character = "*"
    
    var THREE: Double = studentWoCost
    var FOUR: Double = Double(valueCount["studentWo"]!)
    
    
    var FIVE: Double = ASBCost
    var SIX: Double = Double(valueCount["asb"]!)
    
    
    var SEVEN: Double = studentWCost
    var EIGHT: Double = Double(valueCount["studentW"]!)
    
    
    var NINE: Double = adultsCost
    var TEN: Double = Double(valueCount["adults"]!)
    
    
    var ELEVEN: Double = seniorCost
    var TWELVE: Double = Double(valueCount["senior"]!)
    }

/*class Holders{
    var totalHolder: Double = Double(totalHolders["totalCost"]!)
    // var ADD: Character = "+"
    
}*/
