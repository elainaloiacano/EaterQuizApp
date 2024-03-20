//
//  ViewController.swift
//  EaterQuiz
//
//  Created by Loiacano, Elaina on 3/20/24.
//

import UIKit

class ViewController: UIViewController {
    var name:String = ""
    var pizza:Int = 0
    var sushi:Int = 0
    var taco:Int = 0
    var hamburger:Int = 0
    var broccoli:Int = 0
    var total:Int = 0
    var sushibonus:Int = 0
    
    @IBOutlet weak var myName: UITextField!
    
    @IBOutlet weak var myTotal: UILabel!
    
    @IBAction func selectPizza(_ sender: UISwitch) {if sender.isOn {
        pizza = 1
    }
        else {
            pizza = 0
        }
    }
    
    @IBAction func selectTacos(_ sender: UISwitch) {if sender.isOn {
        taco = 1
    }
        else {
            taco = 0
        }   
    }
    
    @IBAction func selectSushi(_ sender: UISwitch) {if sender.isOn {
        sushi = 1
    }
        else {
            sushi = 0
        }
    }
    
   
    @IBAction func selectHamburger(_ sender: UISwitch) {if sender.isOn {
        hamburger = 1
    }
        else {
            hamburger = 0
        }
    }
    
    
    @IBAction func selectBroccoli(_ sender: UISwitch) {if sender.isOn {
        broccoli = 1
    }
        else {
            broccoli = 0
        }
    }
    
    
    @IBAction func submit(_ sender: Any) {let name = myName.text!
        total = pizza + sushi + taco + hamburger + broccoli + sushibonus
        if(total <= 1) {
            myTotal.text = "\(name), you are very picky!"
            myImage.image = UIImage(named: "picky")
        }
        else if(total > 1 && total <= 4){
            myTotal.text = "\(name), you like most foods"
            myImage.image = UIImage(named: "mediumfood")
        }
        else {
            myTotal.text = "\(name), you are an adventurous eater!"
            myImage.image = UIImage(named: "adventurous")
        }

    }
    
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBAction func myRating(_ sender: UISlider) { sushibonus = Int(sender.value) 
    }
    
    @IBAction func submitName(_ sender: Any) { myName.resignFirstResponder()
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

