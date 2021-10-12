//
//  BurgerClass.swift
//  Burger Class Mini App
//
//  Created by Daniel Vega on 10/5/21.
//

import Foundation

enum burgerType{
    case double, cheese, bacon
}

enum cookedStatus {
    case rare, mediumRare, medium, mediumWell, well
}

public class BurgerClass {
//    var name: String
    var orderNumber: Int
    var typeoburger: burgerType
    var cstatus: cookedStatus
    
    
    init(on: Int, tob: burgerType, cs: cookedStatus){
       
        orderNumber = on
        typeoburger = tob
        cstatus = cs
    }
    
    func toString() -> String {
        return "order number: \(orderNumber), type of burger: \(typeoburger), cooked status: \(cstatus)"
    }
    
}
