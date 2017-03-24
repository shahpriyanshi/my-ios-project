//
//  HomeVC.swift
//
//  Created by IMAC-6 on 24/01/17.
//  Copyright © 2017 IMAC-6. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func start(_ sender: UIButton) {
        
        let obj = storyboard?.instantiateViewController(withIdentifier: "VC1") as! VC1
        
        self.navigationController?.pushViewController(obj, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
