//
//  VC5.swift
//  Created by IMAC-6 on 27/01/17.
//  Copyright © 2017 IMAC-6. All rights reserved.
//

import UIKit




class VC5: UIViewController,FloatRatingViewDelegate {

    @IBOutlet weak var playgrp: UILabel!
   var vc51 = ""
    var vc52 = ""
    var vc53 = ""
    var vc54 = ""
    var vc56 = ""

    @IBOutlet weak var FloatRatingView: FloatRatingView!
    
    @IBOutlet weak var F1: FloatRatingView!
    
    @IBOutlet weak var F2: FloatRatingView!
    
    @IBOutlet weak var F3: FloatRatingView!
    
    @IBOutlet weak var F4: FloatRatingView!
    
    @IBOutlet weak var F5: FloatRatingView!
    
    
    @IBAction func gotovc4(_ sender: UIButton) {
        
    navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func gotovc6(_ sender: UIButton) {
        

        let obj5 = self.storyboard?.instantiateViewController(withIdentifier: "VC6") as! VC6
        
        self.navigationController?.pushViewController(obj5, animated:true)
        //callCreateAccountAPI()

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        F1.delegate = self
        F1.maxRating = 5
        F1.minRating = 0
        F1.rating = 0
        F1.editable = true
        F1.halfRatings = true
        F1.floatRatings = true
        F1.emptyImage = UIImage(named: "20")
        F1.fullImage = UIImage(named : "19")
        
        
        F2.delegate = self
        F2.maxRating = 5
        F2.minRating = 0
        F2.rating = 0
        F2.editable = true
        F2.halfRatings = true
        F2.floatRatings = true
        F2.emptyImage = UIImage(named: "20")
        F2.fullImage = UIImage(named : "19")
        
        
        F3.delegate = self
        F3.maxRating = 5
        F3.minRating = 0
        F3.rating = 0
        F3.editable = true
        F3.halfRatings = true
        F3.floatRatings = true
        F3.emptyImage = UIImage(named: "20")
        F3.fullImage = UIImage(named : "19")
        
        F4.delegate = self
        F4.maxRating = 5
        F4.minRating = 0
        F4.rating = 0
        F4.editable = true
        F4.halfRatings = true
        F4.floatRatings = true
        F4.emptyImage = UIImage(named: "20")
        F4.fullImage = UIImage(named : "19")
        
        
        F5.delegate = self
        F5.maxRating = 5
        F5.minRating = 0
        F5.rating = 0
        F5.editable = true
        F5.halfRatings = true
        F5.floatRatings = true
        F5.emptyImage = UIImage(named: "20")
        F5.fullImage = UIImage(named : "19")
        
        
        FloatRatingView.delegate = self
        FloatRatingView.maxRating = 5
        FloatRatingView.minRating = 0
        FloatRatingView.rating = 0
        FloatRatingView.editable = true
        FloatRatingView.halfRatings = true
        FloatRatingView.floatRatings = true
        FloatRatingView.emptyImage = UIImage(named: "20")
        FloatRatingView.fullImage = UIImage(named : "19")
        
        //self.playgrp.text = NSString(F1, didUpdate: "%.2f") as String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    

    func floatRatingView(_ ratingView: FloatRatingView, didUpdate rating: Float) {
       
    }
    func floatRatingView(_ ratingView: FloatRatingView, isUpdating rating: Float) {
    }


}
