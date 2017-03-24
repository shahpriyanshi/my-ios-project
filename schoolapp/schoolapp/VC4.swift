//
//  VC4.swift
//  Copyright © 2017 IMAC-6. All rights reserved.
//

import UIKit


class VC4: UIViewController {
    
    var count  = 0
    var flag = 0
    
    @IBAction func playgroup(_ sender: UIButton) {
        
       
        if (count == 0)
        {
        count = count + 1
        flag = 1
        playgroup.backgroundColor = UIColor.black
        }else if (count == 1)
        {
            count = count + 1
            playgroup.backgroundColor = UIColor.black
        }else if (count >= 2)
        {
            count = 0
            playgroup.backgroundColor = UIColor.orange
        }else{
            count = 0
            playgroup.backgroundColor = UIColor.orange
        }
        
    }
    
    @IBAction func nursery(_ sender: UIButton) {
        
        if (count == 0)
        {
            count = count + 1
            flag = 1
            nursery.backgroundColor = UIColor.black
        }else if (count == 1)
        {
            count = count + 1
            nursery.backgroundColor = UIColor.black
        }else if (count >= 2)
        {
            count = 0
            nursery.backgroundColor = UIColor.orange
            
        }else{
            count = 0
            nursery.backgroundColor = UIColor.orange
        }

    }
    
    @IBAction func jrkg(_ sender: UIButton) {
        
        if (count == 0)
        {
            count = count + 1
            flag = 1
            jrkg.backgroundColor = UIColor.black
        }else if (count == 1)
        {
            count = count + 1
            jrkg.backgroundColor = UIColor.black
        }else if (count >= 2)
        {
            count = 0
            jrkg.backgroundColor = UIColor.orange
        }else{
            count = 0
            jrkg.backgroundColor = UIColor.orange

        }

    }
    
    @IBAction func srkg(_ sender: UIButton) {
        
        if (count == 0)
        {
            count = count + 1
            flag = 1
            srkg.backgroundColor = UIColor.black
        }else if (count == 1)
        {
            count = count + 1
            srkg.backgroundColor = UIColor.black
        }else if (count >= 2)
        {
            count = 0
            srkg.backgroundColor = UIColor.orange

        }
        else{
            count = 0
            srkg.backgroundColor = UIColor.orange

        }

    }
    
    @IBAction func daycare(_ sender: UIButton) {
        
        if (count == 0)
        {
            count = count + 1
            flag = 1
            daycare.backgroundColor = UIColor.black
        }else if (count == 1)
        {
            count = count + 1
            daycare.backgroundColor = UIColor.black
        }else if (count >= 2)
        {
            count = 0
            daycare.backgroundColor = UIColor.orange

        }
        else{
            count = 0
            daycare.backgroundColor = UIColor.orange

        }

    }
    @IBOutlet weak var playgroup: UIButton!
    @IBOutlet weak var jrkg: UIButton!
    @IBOutlet weak var srkg: UIButton!
    @IBOutlet weak var daycare: UIButton!
    @IBOutlet weak var nursery: UIButton!
    
    @IBAction func gotovc3(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }

    @IBAction func gotovc5(_ sender: UIButton) {
        
//        callCreateAccountAPI()
//     
        
        let obj4 = self.storyboard?.instantiateViewController(withIdentifier: "VC5") as! VC5
        
        
        if (count == 1 || count == 2)
        {
        self.navigationController?.pushViewController(obj4, animated:true)
            print(count)
        }else
        {
            //Alert - please select atleast one item
            print("No item selected")
            print(count)
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //playgroup.backgroundColor = UIColor.black

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func callCreateAccountAPI()
//    {
//        //activityLoader(isOn: true)
//        let parameter = [
//            "interest" : playgroup + nursery + jrkg + srkg + daycare
//            ]
//        
//        //let url = "http://inq.citgroup.in/reg.php"
//        //let url = mainURL+URLs.registration.rawValue
//        //print(url)
//        
//        Alamofire.request("http://inq.citgroup.in/reg.php", method: .post, parameters: parameter, encoding: JSONEncoding.default, headers: nil).responseJSON
//            {
//                response in
//                
//                
//                if response.result.value != nil
//                {
//                    let data = response.result.value
//                    print(data)
//                    
//                    let status = data as! String
//                    print(status)
//                    if status == "insert data here"
//                    {
//                        
//                        self.callgeneology()
//                    }
//                    else
//                    {
//                        let mess=data as! String
//                        self.showAlert(message: mess as NSString)
//                    }
//                }
//        }
//    }
//    
//    func callgeneology()
//    {
//        let parameter = [
    //            let parameter = [
    //            "interest" : playgroup + nursery + jrkg + srkg + daycare
//        ]
//        
//        let url = "http://inq.citgroup.in/reg.php"
//        //let url = mainURL+URLs.genealogy.rawValue
//        print(url)
//        
//        Alamofire.request("http://inq.citgroup.in/reg.php", method: .post, parameters: parameter, encoding: JSONEncoding.default, headers: nil).responseJSON
//            {
//                Response in
//                
//                if Response.result.value != nil
//                {
//                    let result = Response.result.value
//                    
//                    print(result)
//                    
//                    let status = result as! String
//                    if status == "insert data here"
//                    {
//                        
//                        let obj = self.storyboard?.instantiateViewController(withIdentifier: "VC5") as! VC5
//                        
//                        self.showAlert(message: "Your Interest Has Been Entered" as NSString)
//                        
//                        self.navigationController?.pushViewController(obj, animated:true)
//                        
//                        //appDelegate.window?.rootViewController = obj
//                        
//                        
//                    }
//                    else
//                    {
//                        self.showAlert(message: "Connection Failed!\n Make sure your device is connected.\n Please try again!")
//                        print("response is NIL")
//                    }
//                }
//        }
//    }
//    
//    
//
   
}
