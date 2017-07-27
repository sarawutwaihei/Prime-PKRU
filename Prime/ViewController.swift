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
    
    
    
    @IBOutlet weak var numberTextField: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    @IBAction func checkButton(_ sender: Any) {
        
        
        let strNumberFromTextField  = numberTextField.text!
        print("Number ==> \(strNumberFromTextField)")
        
        
        
        if strNumberFromTextField != "" {
            
            print("No Space")
            
            
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

