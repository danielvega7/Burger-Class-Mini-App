//
//  ViewController.swift
//  Burger Class Mini App
//
//  Created by Daniel Vega on 10/5/21.
//

import UIKit

class fodaSatic {
    static var burgers = [BurgerClass]()
    static var numOfOrders = 0
}



class ViewController: UIViewController {

    var typeIndex = 0
    var csIndex = 0
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func burgerTypeAction(_ sender: UISegmentedControl) {
        
        
        let selected = sender.selectedSegmentIndex
        switch selected {
        case 0:
            typeIndex = 0
        case 1:
            typeIndex = 1
        case 2:
            typeIndex = 2
        default:
            typeIndex = -1
        }
    }
    
    @IBAction func cookedStatusAction(_ sender: UISegmentedControl) {
        let selected = sender.selectedSegmentIndex
        switch selected {
        case 0:
            csIndex = 0
        case 1:
            csIndex = 1
        case 2:
            csIndex = 2
        case 3:
            csIndex = 3
        case 4:
            csIndex = 4
        default:
            csIndex = -1
        }
        
     
    }
    
    
    @IBAction func createDaBurgerAction(_ sender: UIButton) {
        
        let newburg = burgerType(type: typeIndex, cs: csIndex)
        
        fodaSatic.burgers.append(newburg)
        
//  print(fodaSatic.burgers[fodaSatic.numOfOrders - 1].toString())
    }
    

    @IBAction func goToView2(_ sender: UIButton) {
        performSegue(withIdentifier: "1to2", sender: nil)
    }
    
    func burgerType(type: Int, cs: Int) -> BurgerClass {
        
        var burgerReturn: BurgerClass
        
        if type == 0 {
            
            if cs == 0{
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .double, cs: .rare)
                
            }
            
            else if cs == 1{
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .double, cs: .mediumRare)
            }
            
            else if cs == 2{
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .double, cs: .medium)
            }
            
            else if cs == 3{
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .double, cs: .mediumWell)
            }
            
            else {
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .double, cs: .well)
            }
            
        }
        
        else if type == 1 {
            
            if cs == 0{
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .cheese, cs: .rare)
                
            }
            
            else if cs == 1{
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .cheese, cs: .mediumRare)
            }
            
            else if cs == 2{
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .cheese, cs: .medium)
            }
            
            else if cs == 3{
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .cheese, cs: .mediumWell)
            }
            
            else {
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .cheese, cs: .well)
            }
            
            
        }
        
        
        else {
            
            if cs == 0{
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .bacon, cs: .rare)
                
            }
            
            else if cs == 1{
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .bacon, cs: .mediumRare)
            }
            
            else if cs == 2{
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .bacon, cs: .medium)
            }
            
            else if cs == 3{
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .bacon, cs: .mediumWell)
            }
            
            else {
                burgerReturn = BurgerClass(on: (fodaSatic.numOfOrders + 1), tob: .bacon, cs: .well)
            }
            
        }
        fodaSatic.numOfOrders = fodaSatic.numOfOrders + 1
      return burgerReturn
    }
}

