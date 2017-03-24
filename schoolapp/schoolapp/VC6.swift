//
//  VC6.swift
//  Created by IMAC-6 on 27/01/17.
//  Copyright © 2017 IMAC-6. All rights reserved.
//

import UIKit


class VC6: UIViewController {

    @IBOutlet weak var timings: UILabel!
    
    @IBAction func gotovc7(_ sender: UIButton) {
        
    let  obj6 = storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        self.showAlert(message: "your rates has been recorded" as NSString)
        self.navigationController?.pushViewController(obj6, animated: true)
       
    }
    @IBOutlet weak var datepickoutlet: UIDatePicker!
    
    @IBAction func datepickaction(_ sender: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        let strDate = dateFormatter.string(from: datepickoutlet.date)
        timings.text! = strDate

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
