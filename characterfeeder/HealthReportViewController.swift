//
//  HealthReportViewController.swift
//  characterfeeder
//
//  Created by Ronald Ho on 2015-09-12.
//  Copyright (c) 2015 healthyyou. All rights reserved.
//

import UIKit

class HealthReportViewController: UIViewController {

    @IBOutlet weak var happinessMeter: KDCircularProgress!
    @IBOutlet weak var energyMeter: KDCircularProgress!
    @IBOutlet weak var caloriesMeter: KDCircularProgress!
    
    
    
    var mealChoices = [String]();
    
    enum Levels{
        
        case low
        case medium
        case high
        
    }
    var happiness : Levels = .low
    var energy : Levels = .low
    var calories : Levels = .low
    var BMI : Float = 0
    var calsum : Int = 0
    var energysum : Int = 0
    var happinesssum : Int = 0
    //All Meals Dictionaries are in the order of -> "Food Item" : [Happiness, Energy, Calories]
    var meals : [String : Array<Int>] = ["Egg" : [20,25,72],"Milk" : [30, 35, 102], "Apple": [40,35,116], "Sausage" : [60,20,75], "Steak" : [60,30,500], "Doughnut" : [90,30,260], "Tomato" : [30,25,22], "Pancake" : [80,50,280], "Carrot" : [20,25,25], "Salad" : [10,30,33], "Sandwich" : [50,50,224], "Fish" : [40,100,280], "Orange" : [40,20,62], "Burger" : [90,60,590], "French Fries" : [90,40,365], "Fried Chicken" : [90,145,506], "Cola" : [100,20,182], "Candy" : [70,15,207], "Iced tea" : [60,15,99], "Sushi" : [50,45,122], "Grape" : [70,25,62], "Pizza" : [90,30,570], "Instant Noodles" : [70,65,420], "Hotdog" : [90,70,300],  "Ice-cream" : [100,25,250], "Potato" : [30,25,163], "Mushroom": [25,25,22], "Cheese" : [50,25,113]]
    
    
    func calculateBMI (height : Float, weight : Float) -> (Float) {
        return ((weight/(height*height))*703)
    }
    
    
    
    func sumCalculation( Array : [String]) ->(Int, Int, Int) {
       for i in Array {
            happinesssum = happinesssum + (meals[i]?[0])!
            energysum = energysum + (meals[i]?[1])!
            calsum = calsum + (meals[i]?[2])!
        }
        return (happinesssum, energysum, calsum)
    }
    
    func setMeterLevels(height : Float, weight : Float, calsum : Int, energysum : Int, happinesssum : Int)->(Levels, Levels, Levels){
        BMI = calculateBMI(height,weight: weight)
        
        switch BMI {
         case 0...20 :
            switch energysum {
            case 0...200 :
                energy = .low
            case 250...500 :
                energy = .high
            default :
                energy = .medium
            }
            
            switch calsum {
            case 0...2000 :
                calories = .low
            case 2500...5000 :
                calories = .high
            default :
                calories = .medium
            }
            
        case 21...29 :
            switch energysum {
            case 0...200 :
                energy = .low
            case 250...500 :
                energy = .high
            default :
                energy = .medium
            }
            
            switch calsum {
            case 0...2000 :
                calories = .low
            case 2500...5000 :
                calories = .high
            default :
                calories = .medium
            }
            
            
            
        case 30...50 :
            switch energysum {
            case 0...200 :
                energy = .low
            case 250...500 :
                energy = .high
            default :
                energy = .medium
            }
            
            switch calsum {
            case 0...2200 :
                calories = .low
            case 2700...5000 :
                calories = .high
            default :
                calories = .medium
            }
            
        default :
            break
        }
        
        switch happinesssum {
        case 0...300 :
            happiness = .low
        case 450...900 :
            happiness = .high
        default :
            happiness = .medium
        }
        return (happiness, energy, calories)
    }
    
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view.
        calculateBMI(62, weight: 143)
        sumCalculation(mealChoices)
        setMeterLevels(62, weight: 143, calsum: calsum, energysum: energysum, happinesssum: happinesssum)
        
        println(calsum);
        println( energysum);
        println(happinesssum);
        
        switch happiness{
        case .low:
            happinessMeter.animateFromAngle(270, toAngle: 120, duration: 50, completion: nil)
        case .medium:
            happinessMeter.animateFromAngle(270, toAngle: 240, duration: 100, completion: nil)
        case .high:
            happinessMeter.animateFromAngle(270, toAngle: 360, duration: 150, completion: nil)
        }
        switch energy{
        case .low:
            energyMeter.animateFromAngle(270, toAngle: 120, duration: 50, completion: nil)
        case .medium:
            energyMeter.animateFromAngle(270, toAngle: 240, duration: 100, completion: nil)
        case .high:
            energyMeter.animateFromAngle(270, toAngle: 360, duration: 150, completion: nil)
        }
        switch calories{
        case .low:
            caloriesMeter.animateFromAngle(270, toAngle: 120, duration: 50, completion: nil)
        case .medium:
            caloriesMeter.animateFromAngle(270, toAngle: 240, duration: 100, completion: nil)
        case .high:
            caloriesMeter.animateFromAngle(270, toAngle: 360, duration: 150, completion: nil)
        }
        
    }
    

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
