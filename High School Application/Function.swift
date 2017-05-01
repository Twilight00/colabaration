//
//  Function.swift
//  High School Application
//
//  Created by 2017andreworosco on 3/14/17.
//  Copyright © 2017 2017alexisperez. All rights reserved.
//

import Foundation
var StoredValues = Values()
func calculatorreturn() -> Double
{
    let Counts = Counters()
    
    return Calculator(One: Counts.ONE, Two: Counts.TWO, Oper: Counts.OPER) + Calculator(One: Counts.THREE, Two: Counts.FOUR, Oper: Counts.OPER) + Calculator(One: Counts.FIVE, Two: Counts.SIX, Oper: Counts.OPER) + Calculator(One: Counts.SEVEN, Two: Counts.EIGHT, Oper: Counts.OPER) + Calculator(One: Counts.NINE, Two: Counts.TEN, Oper: Counts.OPER) + Calculator(One: Counts.ELEVEN, Two: Counts.TWELVE, Oper: Counts.OPER)
}




var zeroone = 0
var ADD: Character = "+"


func totalPersonCountFunction() -> Double
{
    
    
    return StoredValues.totalStudentWOCount + StoredValues.totalChildCount
}

