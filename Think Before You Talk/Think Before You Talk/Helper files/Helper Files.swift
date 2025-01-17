//
//  Helper Files.swift
//  Think Before You Talk
//
//  Created by Rohan Rao on 11/18/17.
//  Copyright © 2017 nFinity Labs. All rights reserved.
//


import Foundation
import UIKit

//Global variables
struct GlobalVariables {
    static let blue = #colorLiteral(red: 0.5500153899, green: 0.8406379819, blue: 0.9600835443, alpha: 1)//UIColor.rbg(r: 129, g: 144, b: 255)
    static let purple = #colorLiteral(red: 0.5500153899, green: 0.8406379819, blue: 0.9600835443, alpha: 1)//UIColor.rbg(r: 161, g: 114, b: 255)
}

//Extensions
extension UIColor{
    class func rbg(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        let color = UIColor.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
        return color
    }
}

class RoundedImageView: UIImageView {
    override func layoutSubviews() {
        super.layoutSubviews()
        let radius: CGFloat = self.bounds.size.width / 2.0
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
}

class RoundedButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        let radius: CGFloat = self.bounds.size.height / 2.0
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
}

//Enums
enum ViewControllerType {
    case welcome
    case conversations
}

enum PhotoSource {
    case library
    case camera
}

enum ShowExtraView {
    case contacts
    case profile
    case preview
    case map
}

enum MessageType {
    case photo
    case text
    case location
}

enum MessageOwner {
    case sender
    case receiver
}
