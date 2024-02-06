//
//  GreenViewController.swift
//  Lab4.1
//
//  Created by Tech on 2024-01-30.
//

import UIKit

class GreenViewController: UIViewController {

    var message:String = ""
    var handler:( (String)->Void )!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = message
        if let h = handler{
            h("This is the result")
        }
    }
    
    @IBAction func unwindToGreen(_ segue: UIStoryboardSegue ){}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
