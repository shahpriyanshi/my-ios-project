//
//  VC3.swift
//  Created by IMAC-6 on 25/01/17.
//  Copyright © 2017 IMAC-6. All rights reserved.
//

import UIKit
var vc31 = ""
var vc32 = ""

class VC3: UIViewController {

    @IBOutlet weak var emailid: UITextField!
    @IBOutlet weak var houseno: UITextField!
    @IBOutlet weak var flatno: UITextField!
    @IBOutlet weak var landmark: UITextField!
    @IBOutlet weak var area: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var code: UITextField!
    
    @IBAction func gotovc2(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func gotovc4(_ sender: UIButton) {
        
        if validation()
        {
            vc31 = emailid.text!
            vc32 = houseno.text! + flatno.text! + landmark.text! + area.text! + city.text! + code.text!

            let obj = self.storyboard?.instantiateViewController(withIdentifier: "VC4") as! VC4
            
            self.showAlert(message: "Your Data Has Been Entered" as NSString)
            
            self.navigationController?.pushViewController(obj, animated:true)
            

        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
    func validation() -> Bool
    {
        if isEmptyString(text : emailid.text! as NSString)
            
        {
            showAlert(message: "Please Enter Email")
            return false
        }

        else if validateEmailWithString(Email: emailid.text! as NSString)
            
        {
            showAlert(message: "Please Enter valid email")
            return false
        }

        else if isEmptyString(text: houseno.text! as NSString)
            
        {
            showAlert(message: "Please Enter House Number")
            return false
        }
        else if isEmptyString(text : flatno.text! as NSString)
            
        {
            showAlert(message: "Please Enter Flat Number")
            return false
        }
        else if isEmptyString(text : landmark.text! as NSString)
            
        {
            showAlert(message: "Please Enter Landmark")
            return false
        }
        else if isEmptyString(text : area.text! as NSString)
            
        {
            showAlert(message: "Please Enter Area Name")
            return false
        }
            
        else if isEmptyString(text : city.text! as NSString)
            
        {
            showAlert(message: "Please Enter City Name")
            return false
        }
            
   
        else if textRange(text : code.text! as NSString)
        {
            showAlert(message: "Please Enter Valid Pin Code")
            return false
        }
            
        else
        {
            return true
        }
    
    

    }
}
