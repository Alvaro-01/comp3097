//
//  ViewController.swift
//  labtest1
//
//  Created by Alvaro Aguirre Meza Id 101349908 on 2024-02-06.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var n1: UILabel!
    
    @IBOutlet weak var n2: UILabel!
    
    @IBOutlet weak var n3: UILabel!
    
    @IBOutlet weak var n4: UILabel!
    
    @IBOutlet weak var n5: UILabel!
    
    @IBOutlet weak var n6: UILabel!
    
    
    @IBAction func onDraw(_ sender: Any) {
        var num: [Int] = []
        var check = true
        
        for _ in 1...6 {
            var i = Int.random(in: 1...65)
            while check
                    {
                        if num.contains(i){
                            i = Int.random(in: 1...65)
                        }else{
                            check = false
                        }
                    }
            
            num.append(i)
        }
        //Int.random(in: 1...65)
        n1.text="\(num[0])"
        n2.text="\(num[1])"
        n3.text="\(num[2])"
        n4.text="\(num[3])"
        n5.text="\(num[4])"
        n6.text="\(num[5])"
    }
 
    
    @IBAction func onClear(_ sender: Any) {
        
        n1.text="--"
        n2.text="--"
        n3.text="--"
        n4.text="--"
        n5.text="--"
        n6.text="--"
    }
    
    
    
}

