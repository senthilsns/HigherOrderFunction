//
//  ViewController.swift
//  HigherOrderFunction
//
//  Created by SENTHILKUMAR on 12/12/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Sorted
        sorted_HigherOrder()
    }


    //MARK: Sorted
    func sorted_HigherOrder () {
        
        let numberArray : [Int] = [8,4,5,3,6,7,9]
        
        // Ascending Order
        let asendingNumber = numberArray.sorted()
        print(asendingNumber)
        
        // Decending Order
        let decentingNumber = numberArray.sorted { (a, b) -> Bool in
            
            return a > b
        }
        print(decentingNumber)
        
    }
}

