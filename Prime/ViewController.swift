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
    let strAlertNumberFalse = "กรุณากรอง ตัวอักษร"
    
    
    
    
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
            }else{
                print("This is Arical")
                resultLabel.text = strAlertHaveSpace
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

