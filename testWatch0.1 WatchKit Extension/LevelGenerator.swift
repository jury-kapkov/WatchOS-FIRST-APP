//
//  LevelGenerator.swift
//  testWatch0.1
//
//  Created by Admin on 13/12/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import WatchKit

class LevelGenerator	 {
    
    let operators: [String] = ["+", "-", "*", "/"]
    var currentOperator: String = ""
    
    var firstOperand: Int = 0
    var secondOperand: Int = 0
    var result: Double = 0
    
    var easyResult: Bool = false
    
    func GenerateEasyLevel() -> String {
        let indexOfOperator = Int.random(in: 0...2)
        currentOperator = operators[indexOfOperator]

        firstOperand = Int.random(in: 1...10)
        secondOperand = Int.random(in: 1...10)
        
        CalculateResult(firstOperand: firstOperand, secondOperand: secondOperand)
        
        var resultString = ""
        easyResult = Bool.random()
        
        if easyResult {
            resultString = "\(firstOperand) \(currentOperator) \(secondOperand) = \(Int(result))"
        }
        else {
            resultString = "\(firstOperand) \(currentOperator) \(secondOperand) = \(Int(result) - Int.random(in: 1...4))"
        }
        
        return resultString
    }
    
    func GenerateMiddleLevel() -> String {
        let indexOfOperator = Int.random(in: 0...operators.count)
        currentOperator = operators[indexOfOperator]
        
        firstOperand = Int.random(in: 1...10)
        secondOperand = Int.random(in: 1...10)
        
        CalculateResult(firstOperand: firstOperand, secondOperand: secondOperand)
        
        var resultString = ""
        if (currentOperator != "/") {
            resultString = "\(firstOperand) \(currentOperator) \(secondOperand) = \(Int(result))"
        }
        else{
            resultString = "\(firstOperand) \(currentOperator) \(secondOperand) = \(NSString(format: "%.2f", result))"
        }
        return resultString
    }
    
    func CalculateResult(firstOperand: Int, secondOperand: Int) {
        switch currentOperator {
        case "+": result = Double(firstOperand + secondOperand)
        case "-": result = Double(firstOperand - secondOperand)
        case "*": result = Double(firstOperand * secondOperand)
        case "/": result = Double(firstOperand) / Double(secondOperand)
        default: break
        }
    }
    
    func GenerateAnswers() -> [Double] {
        var Answers: [Double] = [-1, -1, -1, -1]
        let randomDX = Int.random(in: 1...5)
        
        Answers[0] = result
        Answers[1] = Double(result - Double(randomDX))
        Answers[2] = Double(result + Double(randomDX))
        Answers[3] = Double(result * Double(randomDX))
        
        Answers.shuffle()
        
        return Answers
    }
}
