//
//  VC1.swift
//  Created by IMAC-6 on 24/01/17.
//  Copyright © 2017 IMAC-6. All rights reserved.
//

import UIKit

class VC1: UIViewController {

    
    @IBAction func backtohome(_ sender: UIButton) {
        
       navigationController?.popViewController(animated: true)
    }
    
       override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func nxt(_ sender: AnyObject)
    {
        let obj3 = storyboard?.instantiateViewController(withIdentifier: "VC2") as! VC2
        navigationController?.pushViewController(obj3, animated: true)
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
