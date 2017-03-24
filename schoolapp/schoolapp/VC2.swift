//
//  VC2.swift
//  Created by IMAC-6 on 25/01/17.
//  Copyright © 2017 IMAC-6. All rights reserved.
//

import UIKit

var vc21 = ""
var vc22 = ""
var vc23 = ""
class VC2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func gotohome(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }
    
    

    @IBAction func gotovc3(_ sender: UIButton) {
        
        self.view.endEditing(true)
        
        if validation()
        {
            vc21 = nameofparent.text!
            vc22 = childname.text!
            vc23 = contactnumber.text!
            
            let obj = self.storyboard?.instantiateViewController(withIdentifier: "VC3") as! VC3
            
            //self.showAlert(message: "Your Data Has Been Entered" as NSString)
            
            self.navigationController?.pushViewController(obj, animated:true)
            

        }

    }
    @IBOutlet weak var childname: UITextField!
    @IBOutlet weak var nameofparent: UITextField!
    @IBOutlet weak var contactnumber: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        self.view.endEditing(true)
        return false
    }
    
    func validation() -> Bool
    {
        if isEmptyString(text : nameofparent.text! as NSString)

        {
            showAlert(message: "Please Enter Parent's Name")
            return false
        }
        
        else if isEmptyString(text : childname.text! as NSString)
            
        {
            showAlert(message: "Please Enter Child's Name")
            return false
        }
        
        else if validePhoneNumber(text : contactnumber.text! as NSString)
        {
            showAlert(message: "Please Enter Contact Number")
            return false
        }
        else
        {
        return true
        }
    }
}
