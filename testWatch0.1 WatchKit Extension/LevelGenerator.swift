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
    var thirdOperand: Int = 0
    
    var result: Int = 0
    
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
            resultString = "\(firstOperand) \(currentOperator) \(secondOperand) = \(Int(result))?"
        }
        else {
            resultString = "\(firstOperand) \(currentOperator) \(secondOperand) = \(Int(result) - Int.random(in: 1...4))?"
        }
        
        return resultString
    }
    
    func GenerateMiddleLevel() -> String {
        let indexOf1Operator = Int.random(in: 0...2)
        let indexOf2Operator = Int.random(in: 0...2)
        
        
        firstOperand = Int.random(in: -20...20)
        secondOperand = Int.random(in: 10...20)
        thirdOperand = Int.random(in: -5...5)
        
        if (indexOf2Operator == 2 && indexOf1Operator != 2) {
            currentOperator = operators[indexOf2Operator]
            CalculateResult(firstOperand: secondOperand, secondOperand: thirdOperand)
                       
            currentOperator = operators[indexOf1Operator]
            CalculateResult(firstOperand: firstOperand, secondOperand: Int(result))
           
            var resultString = "\(firstOperand) \(operators[indexOf1Operator]) \(secondOperand) \(operators[indexOf2Operator]) \(thirdOperand) = ?"
            return resultString
        }
        else{
            currentOperator = operators[indexOf1Operator]
            
            CalculateResult(firstOperand: firstOperand, secondOperand: secondOperand)
            
            currentOperator = operators[indexOf2Operator]
            CalculateResult(firstOperand: Int(result), secondOperand: thirdOperand)
            
            var resultString = "\(firstOperand) \(operators[indexOf1Operator]) \(secondOperand) \(operators[indexOf2Operator]) \(thirdOperand) = ?"
            return resultString
        }
    }
    
    func CalculateResult(firstOperand: Int, secondOperand: Int) {
        switch currentOperator {
        case "+": result = firstOperand + secondOperand
        case "-": result = firstOperand - secondOperand
        case "*": result = firstOperand * secondOperand
//        case "/": result = Double(firstOperand) / Double(secondOperand
        default: break
        }
    }
    
    func GenerateAnswers() -> [Int] {
        var Answers: [Int] = [-1, -1, -1, -1]
        let randomDX = Int.random(in: 2...4)
        
        Answers[0] = result
        Answers[1] = result - randomDX
        Answers[2] = result + randomDX
        Answers[3] = result * randomDX
        
        Answers.shuffle()
        
        return Answers
    }
}
