//
//  ViewController.swift
//  Task1
//
//  Created by Abdul Wahab on 7/22/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let numbers = [0,2,1,5,4,7,8,6]
        print(find(array: numbers,number: 9))
    }
    
    func find(array:[Int], number: Int) -> Bool {
        return !(array.sorted().filter {$0 == number}).isEmpty
    }
    
    


}

