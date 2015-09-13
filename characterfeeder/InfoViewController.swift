//
//  InfoViewController.swift
//  characterfeeder
//
//  Created by Ronald Ho on 2015-09-12.
//  Copyright (c) 2015 healthyyou. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let dataSource = [["0", "1", "2", "3", "4", "5", "6"],["0", "1", "2", "3", "4", "5", "6", "7", "8","9", "10", "11"]]
//    let feetArray = [1...6]
//    let inchesArray = [1...12]
//    let inchesArray = ["0", "1", "2", "3", "4", "5", "6", "7", "8","9", "10", "11"]
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return dataSource[component][row]
    }
//    
//    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        <#code#>
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}