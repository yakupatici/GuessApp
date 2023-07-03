//
//  ViewController2.swift
//  GuessApp
//
//  Created by Jacob on 3.07.2023.
//

import UIKit

class ViewController2: UIViewController {
    
    
    @IBOutlet weak var remainingGuessLabel: UILabel!
    
    
    @IBOutlet var IncreaaseLabel: UILabel!
    
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    
    
    var randomNumber :Int?
    var remainingGuesses = 5
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomNumber = Int(arc4random_uniform(100)) // 0-100
        print("Random Number : \(randomNumber!)")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let gelenVeri = sender as? Bool{
            let gidilecekVC = segue.destination as! ViewController3
            
            gidilecekVC.result = gelenVeri
        }
        
        
        
    }
        @IBAction func Submit(_ sender: Any) {
            IncreaaseLabel.isHidden = false
            remainingGuesses -= 1
            
            
            if let data = textField.text {
                if let guess = Int(data){
                    
                    if remainingGuesses != 0 {
                        
                        if guess == randomNumber! {
                            // Correct Guess
                            let resultt = true
                            performSegue(withIdentifier: "guessToResult", sender: resultt)
                            return
                        }
                        if guess > randomNumber! {
                            IncreaaseLabel.text = "Decrease"
                            remainingGuessLabel.text = "Remaining Guess : \(remainingGuesses)"
                            
                        }
                        if guess < randomNumber! {
                            IncreaaseLabel.text = "Increase"
                            remainingGuessLabel.text = "Remaining Guess : \(remainingGuesses)"
                        }
                       
                        
                    }; if (remainingGuesses == 0) {
                        let resultt = false
                        performSegue(withIdentifier: "guessToResult", sender: resultt)
                        
                    }
                    textField.text = ""
                }
                
                
            }
            
            
        }
        
        
        
    
 
    
}
