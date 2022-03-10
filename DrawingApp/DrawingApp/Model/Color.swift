//
//  Color.swift
//  DrawingApp
//
//  Created by 최예주 on 2022/03/02.
//

import Foundation

struct Color: CustomStringConvertible{
    
    private(set) var red: Int = 0
    private(set) var green: Int = 0
    private(set) var blue: Int = 0
    
    init(R: Int, G: Int, B: Int)  {
        red = adjustColorValue(value: R)
        green = adjustColorValue(value: G)
        blue = adjustColorValue(value: B)
    }
    
    static func randomColor() -> Color {
        
        let red = Int.random(in: 0...255)
        let green = Int.random(in: 0...255)
        let blue = Int.random(in: 0...255)
        return Color(R: red, G: green, B: blue)

    }
    
    
    static func redColor() -> Color {
        return Color(R: 255, G: 0, B: 0)
    }
    
    static func greenColor() -> Color {
        return Color(R: 0, G: 255, B: 0)
    }
    
    static func blueColor() -> Color {
        return Color(R: 0, G: 0, B: 255)
    }
    
    static func whiteColor() -> Color {
        return Color(R: 0, G: 0, B: 0)
    }
    
    static func blackColor() -> Color{
        return Color(R: 255, G: 255, B: 255)
    }
    
    
    func adjustColorValue(value: Int) -> Int {
        if value < 0 {
            return 0
        }
        else if value > 255 {
            return 255
        }
        return value
    }
    
    
    var description: String {
        return "R : \(red), G: \(green), B: \(blue)"
    }
    
}