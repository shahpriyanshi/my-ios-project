
//
//  Constans.swift
//

import Foundation
import UIKit
//import Alamofire
//import SVProgressHUD
//import SVProgressHUD
//import SDWebImage


let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
let ClubStoryBoard = UIStoryboard(name: "Club", bundle: nil)
//let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

let wrongMSG = "Something went wrong"

var isSignIn = false


//let IS_IPAD = (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.Pad)
//let IS_IPHONE = (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.Phone)


//let SCREEN_WIDTH = UIScreen.mainScreen().bounds.size.width
//let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.size.height
//let SCREEN_MAX_LENGTH = max(SCREEN_WIDTH, SCREEN_HEIGHT)
//let SCREEN_MIN_LENGTH = max(SCREEN_WIDTH, SCREEN_HEIGHT)
//
//let IS_IPHONE_4_OR_LESS = (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
//let IS_IPHONE_5 = (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
//let IS_IPHONE_6 = (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
//let IS_IPHONE_6P = (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)
//
//
//let block: SDWebImageCompletionBlock! = {(image: UIImage!, error: NSError!, cacheType: SDImageCacheType, imageURL: NSURL!) -> Void in
//}

extension UIViewController {
//    func backButton() {
//        
//        let barButton = UIBarButtonItem()
//        barButton.title = ""
//        barButton.tintColor = UIColor.navigationTitleColor()
//        self.navigationController?.navigationBar.topItem?.backBarButtonItem = barButton
//    }
//
//    func leftMenuButton()
//    {
//        let btn = UIButton(frame: CGRectMake(0, 0, 30, 30))
//        btn.setImage(UIImage(named: "menu"), forState: .Normal)
//        btn.addTarget(self, action: #selector(UIViewController.btnDidTapOpen), forControlEvents: .TouchUpInside)
//        let barbutton = UIBarButtonItem(customView: btn)
//        self.navigationItem.leftBarButtonItem = barbutton
//        
//    }
//    
//    func btnDidTapOpen()
//    {
//        self.view.endEditing(true)
//        
//        if let drawerController = navigationController?.parentViewController as? KYDrawerController {
//            drawerController.setDrawerState(.Opened, animated: true)
//        }
//    }
//    
//    func logOUT()
//    {
//        
//        let def = NSUserDefaults.standardUserDefaults()
//        let dic = def.dictionaryRepresentation() as NSDictionary
//        let arrayDic = dic.allKeys
//        
//        print(dic)
//        
//        for i in 0  ..< arrayDic.count 
//        {
//            def.removeObjectForKey(arrayDic[i] as! String)
//        }
//        
//        def.synchronize()
//        appDelegate.userProfile = ""
//        appDelegate.regi_id = ""
//        def.setValue("false", forKey: "firstAppear")
//        def.setValue(appDelegate.deviceTokenString, forKey: "deviceToken")
//        def.synchronize()
//
//        let dvc  = mainStoryBoard.instantiateViewControllerWithIdentifier("NavigationController")
//            UIApplication.sharedApplication().keyWindow!.rootViewController = dvc;
//    }
//  
//}
//
//
//func stringToURLEncoding(str: String) -> NSURL
//{
//    //removing space characters with %20 from a string recieved from api
//    //let URLPathAllowedCharacterSet = NSCharacterSet(charactersInString:" ").invertedSet
//    //let imageURL = str.stringByAddingPercentEncodingWithAllowedCharacters(URLPathAllowedCharacterSet)
//    return NSURL(string: imageURL!)!
//}


func isEmptyString(text : NSString) -> Bool
{
    if text .isEqual(to: "") || text.trimmingCharacters(in: NSCharacterSet.whitespaces) .isEmpty
    {
        return true
    }
    else
    {
               return false
    }
    
}



func validePhoneNumber(text : NSString)->Bool
{
    if text.length < 8 || text.length > 10
    {
        return true
    }
    else
    {
        return false
    }
}
    
    func isValidSpecialCharacter(text : NSString) -> Bool
    {
        let searchTerm = text as String
        
        
        let characterset = NSCharacterSet(charactersIn:
            "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ0123456789")
        
        if searchTerm.rangeOfCharacter(from: characterset.inverted) != nil {
            print("string contains special characters")
            return true
        }
        return false
    }
    
    func validateEmailWithString(Email: NSString) -> Bool {
        let emailRegEx = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return !emailTest.evaluate(with: Email)
    }
    
    func textRange(text : NSString) ->Bool
    {
        if  text.length > 5
        {
            return false
        }
        else
        {
            return true
        }
    }
    
//    func validateValueDesimal(text : NSString)->Bool
//    {
//        
//        let emailRegEx = "^\\d{1,4}(\\.\\d{2})$"
//        
//        if text.doubleValue < 0.5
//        {
//            return true
//        }
//        
//        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//        
//        return !emailTest.evaluateWithObject(text)
//    }
    
//    func seperateAddressFromString (str : NSString) -> ( String, String )
//    {
//        var strAddress : NSString = ""
//        let array = str.componentsSeparatedByString(",")
//        let street = array[0] as String
//        
//        for i in 1  ..< array.count
//        {
//            if i == 1
//            {
//                strAddress = strAddress.stringByAppendingString(array[i])
//            }
//            else
//            {
//                strAddress = strAddress.stringByAppendingString(array[i])
//            }
//        }
//        return ( street, strAddress as String )
//    }
//    
//    func jsonStringConvert(dict : AnyObject) -> String {
//        do {
//            let jsonData = try NSJSONSerialization.dataWithJSONObject(dict, options: NSJSONWritingOptions.PrettyPrinted)
//            return  String(data: jsonData, encoding: NSUTF8StringEncoding)! as String
//            
//        } catch {
//            return ""
//        }
//    }

enum popUpMessage : String {
    case emptyFullName =  "Full Name name should not be blank"
    case emptyCountry = "Empty Country"
    case emptyFirstName =  "Please Enter First Name"
    case emptyLastName =  "Please Enter Last Name"
    case emptyPassword =  "Please enter password"
    case emptyNewPassword =  "Please enter new password"
    case empttConPassword = "Please enter confirm password"
    case emptyEmailId =  "Please Enter Valid Email-ID"
    case emptyQue =  "Please enter Security Question"
    case emptyAns =  "Please enter Security Answer"
    case emptyPhoneNo = "Phone number should not be blank"
    case emptyAddress = "Address should not be blank"
    case emptyCity = "City name should not be blank"
    case emptyState = "State name should not be blank"
    case emptyZip = "Zip code should not be blank"
    case FirstName = "First name should be less than 31 characters"
    case LastName = "Last name should be less than 31 characters"
    case EmailId = "Oops! Invalid email. Please try again"
    case PhoneNo = "Please enter valid contact number"
    case Password = "Password must have more than 6 and less than 16 characters"
    case ConPassword = "Password and confirmed password must be the same"
    case AcceptTerms = "Please agree to privacy policy & terms and conditions"
    case AcceptService = "Please agree to service agreement"
    case AcceptHippa = "Accept HIPAA agreement"
    case doSign = "Please do a signature before submitting"
    case validePass = "Password must be 6 to 20 character and one digit and one special character"
    
    case emptyBio = "Please Write Somethig in Bio"
    case singlePrice = "Please Add Single Price"
    case familyPrice = "Please Add Family Price"
    case additionalPrice = "Please Add Additional Price"
    
    case offer1 = "Please Add first offer"
    case offer2 = "Please Add second offer"
    case emptyClicName = "Please enter business name"
    
    case productName = "Product name should not be blank"
    case productDesc = "Product description should not be blank"
    case productPrice = "Product price should not be blank"
    case offerName = "Offer title should not be blank"
    case offerDesc = "Offer description should not be blank"
    case offerCost = "Cost price should not be blank"
    case offerValue = "Value price should not be blank"
    
    case emptyDocName = "Doctor name should not be blank"
    case emptyPhoto = "Please select image"
    
    case offerLimit = "Maximum 3 active offers per Club Account"
    
    case corrctValue = "Maximum amount ($9999.99) with two decimals ($09.90) and minimum amount at least 50 cents."
    case timeNotAdd  = "Please add all day times"
    
    case emptyCardNo = "Card number should not be blank"
    case emptyCSV = "CVV number should not be blank"
    case emptyMonth = "Month should not be blank"
    case emptyYear = "Year should not be blank"
    case emptyCheckBox = "Please select a checkbox"
    
    case emptyBusinessContact = "Please enter business contact number"
    case emptyBusinessDescription = "Please enter business description"
    case emptyBusinessSuggestion = "Please enter business suggestion"
}

func showAlert(message : NSString)
{
    //self.view.makeToast(message:message as String , duration: 2, position: HRToastPositionTop )
    UIAlertView(title: "", message: message as String, delegate: nil, cancelButtonTitle: nil, otherButtonTitles: "OK").show()
}

//func checkInternate() -> Bool
//{
//    let status = Reach().connectionStatus()
//    switch status {
//    case .Unknown, .Offline:
//        let alert = UIAlertView(title: "No Internet Connection", message: "Make sure your device is connected to the internet.", delegate: nil, cancelButtonTitle: "OK")
//        alert.show()
//        return false
//        
//    case .Online(.WWAN), .Online(.WiFi):
//        return true
//    }
//}
//
//
//func verifyUrl (urlString: String?) -> Bool {
//    //Check for nil
//    if let urlString = urlString {
//        // create NSURL instance
//        if let url = NSURL(string: urlString) {
//            // check if your application can open the NSURL instance
//            return UIApplication.sharedApplication().canOpenURL(url)
//        }
//    }
//    return false
//}
//
//func calculatePer(array : NSArray) -> ([String])
//{
//    var addPerPriceArray : [String] = []
//    for var i = 0 ; i < array.count ; i += 1
//    {
//        let p = NSString(format: "%@", array[i] as! String).doubleValue + 3.0
//        
//        let total = p + (p*0.4)
//        addPerPriceArray.append(String(format: "%.2f",total))
//    }
//    return addPerPriceArray
//}
//
//
//func textFieldAddPointZERO(textfield : UITextField)
//{
//    if textfield.text?.characters.count > 0
//    {
//        if textfield.text!.characters.contains(".")
//        {
//            
//            let array = textfield.text?.componentsSeparatedByString(".")
//            print(array)
//            if array?.count == 1
//            {
//                textfield.text =  String(format: "%@.00",textfield.text!)
//            }
//            else if array?.count == 2
//            {
//                if array![0] == ""
//                {
//                    textfield.text = String(format: "00.%@",array![1])
//                }
//                
//                if array![1].characters.count == 0
//                {
//                    textfield.text =  String(format: "%@00",textfield.text!)
//                }
//                else if array![1].characters.count == 1
//                {
//                    textfield.text =  String(format: "%@0",textfield.text!)
//                }
//                else if array![1].characters.count > 2
//                {
//                    var myNSString = array![1] as NSString
//                    myNSString = myNSString.substringWithRange(NSRange(location: 0, length:2))
//                    
//                    textfield.text =  String(format: "%@.%@",array![0],myNSString)
//                }
//            }
//            
//        }
//        else{
//            textfield.text =  String(format: "%@.00",textfield.text!)
//        }
//    }
//}

//extension String {
//    var length : Int {
//        return self.characters.count
//    }
//}
//
//
//extension UIImageView {
//    func downloadedFrom(link link:String, contentMode mode: UIViewContentMode) {
//        guard
//            let url = NSURL(string: link)
//            else {return}
//        contentMode = mode
//        NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
//            guard
//                let httpURLResponse = response as? NSHTTPURLResponse where httpURLResponse.statusCode == 200,
//                let mimeType = response?.MIMEType where mimeType.hasPrefix("image"),
//                let data = data where error == nil,
//                let image = UIImage(data: data)
//                else { return }
//            dispatch_async(dispatch_get_main_queue()) { () -> Void in
//                self.image = image
//            }
//        }).resume()
//    }
}

