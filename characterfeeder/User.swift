//
//  UserHealth.swift
//  characterfeeder
//
//  Created by Ronald Ho on 2015-09-13.
//  Copyright (c) 2015 healthyyou. All rights reserved.
//

import Foundation
struct User{
    
    enum Levels{
        
        case low
        case medium
        case high
        
    }
    var happiness : Levels
    var energy : Levels
    var calories : Levels
    var BMI : Float
    var calsum : Int
    var energysum : Int
    var happinesssum : Int
}
