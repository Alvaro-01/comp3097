//
//  ViewController.swift
//  lab5.1
//
//  Created by Tech on 2024-02-20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var item:String! = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = item
    }


}

