//
//  QuizViewController.swift
//  Photosynthesis
//
//  Created by Katie Collins on 2/15/16.
//  Copyright (c) 2016 BioBeasts. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    
    @IBOutlet var question: UILabel!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    
    @IBOutlet var nextButton: UIButton!
    
    @IBOutlet var result: UILabel!
    
    var randNum = 0
    
    var correctAnswer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        hide()
        
        nextQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomQuestion() {
        
        // Cycle thru questions
        randNum += 1
        
        switch(randNum) {
        case 1:
            question.text = "How many phosphate groups are in ATP?"
            button1.setTitle("0", forState: UIControlState.Normal)
            button2.setTitle("1", forState: UIControlState.Normal)
            button3.setTitle("2", forState: UIControlState.Normal)
            button4.setTitle("3", forState: UIControlState.Normal)
            correctAnswer = "4"
        case 2:
            question.text = "What is the correct sequence for the Calvin Cycle?"
            button1.setTitle("CO2 + RuBP, PGA, G3P, RuMP", forState: UIControlState.Normal)
            button2.setTitle("CO2 + RuMP, G3P, PGA, RuBP", forState: UIControlState.Normal)
            button3.setTitle("CO2 + RuBP, RuMP, G3P, PGA", forState: UIControlState.Normal)
            button4.setTitle("PGA, RuMP, G3P, CO2 + RuBP", forState: UIControlState.Normal)
            correctAnswer = "1"
        case 3:
            question.text = "Kranz anatomy occurs in which of the following plants?"
            button1.setTitle("C3 plants", forState: UIControlState.Normal)
            button2.setTitle("CAM3 plants", forState: UIControlState.Normal)
            button3.setTitle("C4 plants", forState: UIControlState.Normal)
            button4.setTitle("CAM plants", forState: UIControlState.Normal)
            correctAnswer = "3"
        case 4:
            question.text = "Which of the following colors of light contribute least to photosynthesis?"
            button1.setTitle("Yellow", forState: UIControlState.Normal)
            button2.setTitle("Red", forState: UIControlState.Normal)
            button3.setTitle("Blue", forState: UIControlState.Normal)
            button4.setTitle("Green", forState: UIControlState.Normal)
            correctAnswer = "4"
        case 5:
            question.text = "How many ATP & NADPH molecules are used during the Calvin Cycle (3 Turns)?"
            button1.setTitle("9", forState: UIControlState.Normal)
            button2.setTitle("6", forState: UIControlState.Normal)
            button3.setTitle("12", forState: UIControlState.Normal)
            button4.setTitle("15", forState: UIControlState.Normal)
            correctAnswer = "4"
        case 6:
            question.text = "How is the excess energy released during the light reactions?"
            button1.setTitle("Light", forState: UIControlState.Normal)
            button2.setTitle("Heat", forState: UIControlState.Normal)
            button3.setTitle("Neutrinos", forState: UIControlState.Normal)
            button4.setTitle("Kinetic Energy", forState: UIControlState.Normal)
            correctAnswer = "2"
        case 7:
            question.text = "What is the correct overall reaction for photosynthesis?"
            button1.setTitle("6 CO2 + 6 H2O = C6H12O6 + 6 O2", forState: UIControlState.Normal)
            button2.setTitle("6 CO2 + C6H12O6 = 6 O2 + 6 H2O", forState: UIControlState.Normal)
            button3.setTitle("6 O2 + C6H12O6 = 6 H2O + 6 CO2", forState: UIControlState.Normal)
            button4.setTitle("6 H2O +  C6H12O6 = 6 O2 + 6 CO2", forState: UIControlState.Normal)
            correctAnswer = "1"
        case 8:
            question.text = "Which enzyme is responsible for photorespiration?"
            button1.setTitle("PEP Carboxylase", forState: UIControlState.Normal)
            button2.setTitle("Rubisco", forState: UIControlState.Normal)
            button3.setTitle("Reductase", forState: UIControlState.Normal)
            button4.setTitle("Lactase", forState: UIControlState.Normal)
            correctAnswer = "2"
        case 9:
            question.text = "Which of the following is a C4 Plant?"
            button1.setTitle("Pineapple", forState: UIControlState.Normal)
            button2.setTitle("Grass", forState: UIControlState.Normal)
            button3.setTitle("Sorghum", forState: UIControlState.Normal)
            button4.setTitle("Tomato", forState: UIControlState.Normal)
            correctAnswer = "3"
        case 10:
            question.text = " Electrons are excited in the ______________ of the photosystem before entering the ETC."
            button1.setTitle("Xylem", forState: UIControlState.Normal)
            button2.setTitle("Carotenoids", forState: UIControlState.Normal)
            button3.setTitle("Chlorophyll molecules", forState: UIControlState.Normal)
            button4.setTitle("Reaction Center", forState: UIControlState.Normal)
            correctAnswer = "4"
        case 11:
            question.text = "A quantized pocket of light energy is a ___________."
            button1.setTitle("Electron", forState: UIControlState.Normal)
            button2.setTitle("Gamma Ray", forState: UIControlState.Normal)
            button3.setTitle("Photon", forState: UIControlState.Normal)
            button4.setTitle("Proton", forState: UIControlState.Normal)
            correctAnswer = "3"
        case 12:
            question.text = " The plant takes in Energy in the form of ____ and releases it as ____ & ____."
            button1.setTitle("Electromagnetic energy… Heat… Food", forState: UIControlState.Normal)
            button2.setTitle("Heat… Gamma Rays… Water", forState: UIControlState.Normal)
            button3.setTitle("Water… Oxygen… Electromagnetic Energy", forState: UIControlState.Normal)
            button4.setTitle("Food… ATP… CO2", forState: UIControlState.Normal)
            correctAnswer = "1"
        case 13:
            question.text = "Why are plants green?"
            button1.setTitle("They aren’t", forState: UIControlState.Normal)
            button2.setTitle("Plants absorb only green light", forState: UIControlState.Normal)
            button3.setTitle("All photosynthetic organisms are green", forState: UIControlState.Normal)
            button4.setTitle("Plants reflect green light", forState: UIControlState.Normal)
            correctAnswer = "4"
        case 14:
            question.text = "What is the difference between CAM and C4?"
            button1.setTitle("Temporal Separation vs. Spatial Separation", forState: UIControlState.Normal)
            button2.setTitle("Fixes Carbon into a 3 Carbon Compound vs. into a 4 Carbon Compound", forState: UIControlState.Normal)
            button3.setTitle("Functions well in heat vs. not well", forState: UIControlState.Normal)
            button4.setTitle("Has Rubisco vs. PEP Carboxylase", forState: UIControlState.Normal)
            correctAnswer = "1"
        default:
            question.text = "QUIZ IS OVER!!!"
            button1.setTitle("", forState: UIControlState.Normal)
            button2.setTitle("", forState: UIControlState.Normal)
            button3.setTitle("", forState: UIControlState.Normal)
            button4.setTitle("", forState: UIControlState.Normal)
            correctAnswer = "1"
        }
    }
    
    func hide() {
        result.hidden = true
        nextButton.hidden = true
    }
    
    func unhide() {
        result.hidden = false
        nextButton.hidden = false
    }
    
    @IBAction func button1Pressed(sender: AnyObject) {
        unhide()
        if correctAnswer == "1" {
            result.text = "You are CORRECT!"
        }
        else {
            result.text = "You are WRONG! The correct answer is button " + correctAnswer
        }
    }
    
    @IBAction func button2Pressed(sender: AnyObject) {
        unhide()
        if correctAnswer == "2" {
            result.text = "You are CORRECT!"
        }
        else {
            result.text = "You are WRONG! The correct answer is button " + correctAnswer
        }
    }
    
    @IBAction func button3Pressed(sender: AnyObject) {
        unhide()
        if correctAnswer == "3" {
            result.text = "You are CORRECT!"
        }
        else {
            result.text = "You are WRONG! The correct answer is button " + correctAnswer
        }
    }
    
    @IBAction func button4Pressed(sender: AnyObject) {
        unhide()
        if correctAnswer == "4" {
            result.text = "You are CORRECT!"
        }
        else {
            result.text = "You are WRONG! The correct answer is button " + correctAnswer
        }
    }

    @IBAction func nextQuestion() {
        randomQuestion()
        hide()
    }

}
