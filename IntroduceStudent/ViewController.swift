//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Bayson on 1/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    var number_of_pet = 0
    
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolNameTextField: UITextField!
    
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        number_of_pet = Int(sender.value)
        if number_of_pet == 0{
            numberOfPetsLabel.text = " I don't have a pet."
        }else if number_of_pet == 1{
            numberOfPetsLabel.text = " I have a pet."
        }else if number_of_pet > 1{
            numberOfPetsLabel.text = " I have \(number_of_pet) pets."
        }
//        numberOfPetsLabel.text = "\(Int(sender.value))"
      }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
            
            // Lets us choose the title we have selected from the segmented control
            // In our example that is whether it is first, second, third or forth
            let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
            
            // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
            let introduction = "My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolNameTextField.text!). I am currently in my \(year!) year and I own \(number_of_pet) pets. It is \(morePetsSwitch.isOn) that I want more pets."
            
            // Creates the alert where we pass in our message, which our introduction.
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
            // A way to dismiss the box once it pops up
            let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
            // Passing this action to the alert controller so it can be dismissed
            alertController.addAction(action)
                
            present(alertController, animated: true, completion: nil)
        }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

