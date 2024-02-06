//
//  ViewController.swift
//  Lab4.1
//
//  Created by Tech on 2024-01-30.
//

import UIKit

class ViewController: UIViewController {
    
    var result:String!
    var Result:String{
        set{
            result = newValue
            print(result)
        }
        get{
            return(result)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setResult(_ r:String){
        Result = r
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier{
        case "green":
            if  let d = segue.destination as? GreenViewController{
                d.message = "Hi from main view"
                d.handler = setResult
                
            }
        case "orange":
            return
        case "blue":
            return
        default:
            return
        }
    }
    
    @IBAction func unwindToMain(_ segue: UIStoryboardSegue ){
        Result = "Back from \(segue.source)"
    }


}

