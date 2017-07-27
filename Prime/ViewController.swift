//
//  ViewController.swift
//  Prime
//
//  Created by Com03 on 7/27/2560 BE.
//  Copyright © 2560 Com03. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //impricit
    let strAlertHaveSpace  = "Please Fill Number"
    let strAlertNumberFalse = "Please Fill Number Only"
    let strAlertNotPrime = "Not Prime"
    let strAlertBePrime = "is Prime"
    
    
    
    
    
    @IBOutlet weak var numberTextField: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    @IBAction func checkButton(_ sender: Any) {
        
        
        let strNumberFromTextField  = numberTextField.text!
        print("Number ==> \(strNumberFromTextField)")
        
        
        
        //Check Space
        if strNumberFromTextField != "" {
            
            print("No Space")
            
            //Check Number or Artical
            if let intNumberFromTextField = Int (strNumberFromTextField) {
                print("This is Number")
                
                //Check Prime
                if intNumberFromTextField != 1 {
                    // Not 1
                    var intMyNumber = 2
                    var bolPrime: Bool = true
                    
                    while intMyNumber < intNumberFromTextField  {
                        
                        if intNumberFromTextField % intMyNumber == 0 {
                            bolPrime = false
                            
                        } // if
                        
                        intMyNumber += 1
                    } //While
                    
                    
                    if bolPrime {
                        resultLabel.text = "\(intNumberFromTextField)" + strAlertBePrime
                    } else{
                        resultLabel.text = "\(intNumberFromTextField)" + strAlertNotPrime
                    }
                    
                    
                    
                    
                    
                    
                }else{
                    resultLabel.text = "\(intNumberFromTextField)" + strAlertNotPrime
                }
                
                
            }else{
                print("This is Arical")
                resultLabel.text = strAlertNumberFalse
            }
            
            
        }else{
            
            print("Have Space")
            
            
            resultLabel.text = strAlertHaveSpace
            
        }
        
        
        
    } // CheckButton
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

