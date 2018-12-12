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
        
        // Map
        map_HigherOrder()
        
        // Filter
        filter_HigherOrder()
        
        //Reduce
        reduce_HigherOrder()
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
    
    
    
    //MARK: Map
    func map_HigherOrder () {
        
        let numberArray : [Int] = [3,4,5,61,2,3,78]
        
        // Multiply with 2
        let outputArray = numberArray.map{ $0 * 2}
        print(outputArray)
        
        // String Conversion
        let stringArr = numberArray.map{String($0)}
        print(stringArr)
    }
    
    
    //MARK: Filter
    func filter_HigherOrder () {
        
        let numberArray : [Int] = [4,3,5,6,7,23,56,2,4]
        
        // Get below 10 numbers
        let outputArr = numberArray.filter{ $0 < 10}
        print(outputArr)
    }
    
    //MARK: Reduce
    func reduce_HigherOrder () {
        
        let inputStringArray : [String] = ["S","E","N","T","H","I","L"]
        
        let mergeString = inputStringArray.reduce(""){(result,a)-> String in
            return result + a
        }
        
        print(mergeString)
    }
    
}

