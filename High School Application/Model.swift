//
//  Model.swift
//  High School Application
//
//  Created by 2017andreworosco on 3/14/17.
//  Copyright © 2017 2017alexisperez. All rights reserved.
//

import Foundation
struct Values
{
    
    //Total Running
    
    var TotMones : Double = 0
    var totalChildCount : Double = 0
    var totalASBCount : Double = 0
    var totalStudentWOCount : Double = 0
    var totalStudentWCount : Double = 0
    var totalAdultsCount : Double = 0
    var totalSeniorCount : Double = 0
    
    //Subtotal Running
    var currentChildCount : Double = 0
    var currentStudentWoCount : Double = 0
    var currentStudentWCount : Double = 0
    var currentASBCount : Double = 0
    var currentadultsCount : Double = 0
    var currentseniorwCard : Double = 0
    var subtotal : Double = 0
    
    
    //stepper count
    var childStepperCount : Double = 0
}
//holds stepper count
var valueCount: [String:Int] = [
    "childCount":0,
    "studentWo":0,
    "asb": 0,
    "studentW": 0,
    "adults": 0,
    "senior": 0
    
    
]
