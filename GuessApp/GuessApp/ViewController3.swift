//
//  ViewController3.swift
//  GuessApp
//
//  Created by Jacob on 3.07.2023.
//

import UIKit

class ViewController3: UIViewController {
    
    
    
    @IBOutlet weak var imageViewResult: UIImageView!
    
    
    @IBOutlet weak var labelResult: UILabel!
    
    var result : Bool?
    
    
    

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Result Screen"
        
        print(result!)
        
        
        if result! {
            labelResult.text = "You Win"
            imageViewResult.image = UIImage(named: "happypicture")
            
            
            
        }else
        {
            labelResult.text = "You Fail"
            imageViewResult.image = UIImage(named: "sadpicture")
            
            
        }
        
        
        
    }
    

 
    @IBAction func playAgain(_ sender: Any) {
        navigationController?.popToRootViewController(animated:true)
    }
}
