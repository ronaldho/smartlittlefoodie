//
//  DinnerListViewController.swift
//  characterfeeder
//
//  Created by Ronald Ho on 2015-09-13.
//  Copyright (c) 2015 healthyyou. All rights reserved.
//

import UIKit

class DinnerListViewController: UIViewController {

    @IBOutlet weak var locationOne: UIImageView!
    @IBOutlet weak var locationTwo: UIImageView!
    @IBOutlet weak var locationThree: UIImageView!
    @IBOutlet weak var locationFour: UIImageView!
    @IBOutlet weak var locationFive: UIImageView!
    @IBOutlet weak var locationSix: UIImageView!
    @IBOutlet weak var locationSeven: UIImageView!
    @IBOutlet weak var locationEight: UIImageView!
    @IBOutlet weak var locationNine: UIImageView!
    
    var mealChoices = [String]();
    
    func tapHelper1(sender:UITapGestureRecognizer){
        println("image tapped 1")
        locationOne.highlighted = true;
        tapResponder(1);
    }
    
    func tapHelper2(sender:UITapGestureRecognizer){
        println("image tapped 2")
        locationTwo.highlighted = true;
        tapResponder(2);
    }
    
    func tapHelper3(sender:UITapGestureRecognizer){
        println("image tapped 3")
        locationThree.highlighted = true;
        tapResponder(3);
    }
    
    func tapHelper4(sender:UITapGestureRecognizer){
        println("image tapped 4")
        locationFour.highlighted = true;
        tapResponder(4);
    }
    
    func tapHelper5(sender:UITapGestureRecognizer){
        println("image tapped 5")
        locationFive.highlighted = true;
        tapResponder(5);
    }
    
    func tapHelper6(sender:UITapGestureRecognizer){
        println("image tapped 6")
        locationSix.highlighted = true;
        tapResponder(6);
    }
    
    func tapHelper7(sender:UITapGestureRecognizer){
        println("image tapped 7")
        locationSeven.highlighted = true;
        tapResponder(7);
    }
    
    func tapHelper8(sender:UITapGestureRecognizer){
        println("image tapped 8")
        locationEight.highlighted = true;
        tapResponder(8);
    }
    func tapHelper9(sender:UITapGestureRecognizer){
        println("image tapped 9")
        locationNine.highlighted = true;
        tapResponder(9);
    }
    
    func tapResponder(foodTapped:Int){
        println(foodTapped);
        switch foodTapped{
        case 1:
            mealChoices.append("Burger")
        case 2:
            mealChoices.append("Sushi")
        case 3:
            mealChoices.append("Instant Noodles")
        case 4:
            mealChoices.append("Hotdog")
        case 5:
            mealChoices.append("Grape")
        case 6:
            mealChoices.append("Ice-cream")
        case 7:
            mealChoices.append("Ice Tea")
        case 8:
            mealChoices.append("Pizza")
        case 9:
            mealChoices.append("Steak")
        default:
            break
            
        }
        
        println(mealChoices);
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        println(mealChoices);
        
        // Do any additional setup after loading the view.
        
        
        //sets the user interaction to true, so we can actually track when the image has been tapped
        locationOne.userInteractionEnabled = true
        locationTwo.userInteractionEnabled = true
        locationThree.userInteractionEnabled = true
        locationFour.userInteractionEnabled = true
        locationFive.userInteractionEnabled = true
        locationSix.userInteractionEnabled = true
        locationSeven.userInteractionEnabled = true
        locationEight.userInteractionEnabled = true
        locationNine.userInteractionEnabled = true
        
        
        //this is where we add the target, since our method to track the taps is in this class
        //we can just type "self", and then put our method name in quotes for the action parameter
        //        recognizer.addTarget(self, action: "imageTapped")
        let recognizer1 = UITapGestureRecognizer(target: self, action: "tapHelper1:")
        let recognizer2 = UITapGestureRecognizer(target: self, action: "tapHelper2:")
        let recognizer3 = UITapGestureRecognizer(target: self, action: "tapHelper3:")
        let recognizer4 = UITapGestureRecognizer(target: self, action: "tapHelper4:")
        let recognizer5 = UITapGestureRecognizer(target: self, action: "tapHelper5:")
        let recognizer6 = UITapGestureRecognizer(target: self, action: "tapHelper6:")
        let recognizer7 = UITapGestureRecognizer(target: self, action: "tapHelper7:")
        let recognizer8 = UITapGestureRecognizer(target: self, action: "tapHelper8:")
        let recognizer9 = UITapGestureRecognizer(target: self, action: "tapHelper9:")
        
        
        //finally, this is where we add the gesture recognizer, so it actually functions correctly
        
        locationOne.addGestureRecognizer(recognizer1)
        locationTwo.addGestureRecognizer(recognizer2)
        locationThree.addGestureRecognizer(recognizer3)
        locationFour.addGestureRecognizer(recognizer4)
        locationFive.addGestureRecognizer(recognizer5)
        locationSix.addGestureRecognizer(recognizer6)
        locationSeven.addGestureRecognizer(recognizer7)
        locationEight.addGestureRecognizer(recognizer8)
        locationNine.addGestureRecognizer(recognizer9)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        var healthScene = segue.destinationViewController as! HealthReportViewController
        // Pass the selected object to the new view controller.
        healthScene.mealChoices = mealChoices
    }


}
