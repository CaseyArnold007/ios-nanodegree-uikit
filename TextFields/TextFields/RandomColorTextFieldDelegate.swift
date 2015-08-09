//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by Casey Arnold on 8/7/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit



class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    // Here we create an array of colors
    let colors = [UIColor.redColor(),
        UIColor.orangeColor(), UIColor.yellowColor(),
        UIColor.greenColor(), UIColor.blueColor(),
        UIColor.purpleColor(), UIColor.brownColor()];
    
    // Then we choose a random number.
    func randomColor() -> UIColor {
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        
        // We get a color from the colors array using the random number as an index
        return colors[randomIndex]
    }
    
        // The color of the text in the textField is set to the randomly chosen color.
        func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
            textField.textColor = self.randomColor()
            
            return true
        }
}
    
