//
//  ViewController.swift
//  lab3.1
//
//  Created by Alvaro Aguirre Meza on 2024-01-26.
//

import UIKit

class ViewController: UIViewController {

    private var _cnt:Int = 0
    
    var counter:Int{
        get{
            return _cnt
        }
        set{
        _cnt=newValue
        label.text = "\(_cnt)"
        }
    }
    
   
    @IBOutlet weak var label: UILabel!
    
    @IBAction func onAdd() {        counter+=1
    }
    
    @IBAction func onReset() {
        counter=0
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

