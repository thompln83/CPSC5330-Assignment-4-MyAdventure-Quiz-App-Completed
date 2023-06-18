//
//  QuizLogic.swift
//  QuizApp_Completed
//

import Foundation


struct QuizLogic {
    
    var questionIndex : Int = 0
    var score : Int = 0
    
    //Intro
    /* MyAdventure: Choose your Own Oregon Trail Story allows you relive one of the greatest adventures in American history. It was a long, difficult journey that often resulted in failure and death.  But for those who succeeded, it led to a new and better life in Oregon. If for some reason you don't survive your wagon burns, you run out of provisions, or you die of cholera don't give up!  Unlike the real-life pioneers of 1848, you can try again and again until you succeed and get a winning score (of 3). On the screen you'll see choices that you can click to perform different functions vital to the success of your journey. Good Luck! */
    
    let question = [
                Question("When to set off on the trail: Leave too early you may encounter snow storms; Leave too late and you will not reach Oregon before winter. When do you want to start?",
                         "Between January and March",
                         "Between May and June",
                         "Between May and June"),
                Question("South Pass is a valley that cuts through the Rocky Mountain where the trail splits. If short on supplies, head for Fort Bridger or take the shorter route and go directly to the Green River. Which route do you choose?",
                         "Head for Fort Bridger",
                         "Directly to Green River",
                         "Head for Fort Bridger"),
                Question("Be warned, stranger.  Don't dig a water hole!  Drink only river water. Salty as the Platte River is--it's better than the cholera. Choose your source of drinking water.",
                         "Salty Platte River",
                         "Typhoid Trail Watering Hole",
                         "Salty Platte River"),
                Question("Unlike the real-life pioneers of 1848, you can try again and again until you succeed and get a winning score (of 3). If your current score is 3, Congratulations, you have made it to Oregon!",
                         "Travel the Trail Again!",
                         "Choose your Own Oregon Trail Story!",
                         " "),
               
            ]
    
    mutating func compareUserResponse(_ response: String) -> Bool {
        if response == question[questionIndex].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func increaseIndex() {
        if questionIndex < question.count-1 {
            questionIndex += 1
        } else {
            questionIndex = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getNextQuestion() -> String {
        return question[questionIndex].question
    }
    
    func getChoiceOne() -> String {
        return question[questionIndex].option_one
    }
    
    func getChoiceTwo() -> String {
        return question[questionIndex].option_two
    }
    
    func getImageName() -> Int {
        return questionIndex
    }
    
    
}
