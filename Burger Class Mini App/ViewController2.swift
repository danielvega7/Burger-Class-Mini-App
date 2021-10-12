//
//  ViewController2.swift
//  Burger Class Mini App
//
//  Created by Daniel Vega on 10/11/21.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var textViewOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        var loop = 0
        if fodaSatic.numOfOrders > 0 {
            
            while (loop < fodaSatic.numOfOrders) {
                textViewOutlet.text += "\n \(fodaSatic.burgers[loop].toString())"
                loop += 1
            }
            
    
        }
        
    }

}
