//
//  ViewController.swift
//  weather2
//
//  Created by Alvaro Aguirre Meza on 2024-03-25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var temp: UILabel!
    
    private let weatherGetter:WeatherGetter = WeatherGetter()
    
    func update(weather:[String:AnyObject]){
        
        let cityName = "\(weather["name"]!)"
        let tempVal = (weather["main"]!["temp"]!! as! NSNumber).floatValue - 273.15
        let descStr = "\((weather["weather"]! as!
        [AnyObject])[0]["main"]!!)\n\((weather["weather"]! as!
        [AnyObject])[0]["description"]!!)"
        
        DispatchQueue.main.async {[self] in
            city.text = cityName
            temp.text = "\(tempVal) C"
            desc.text = descStr}
        
        
        
        weatherGetter.getIcon(icon: "\((weather["weather"]! as!
[AnyObject])[0]["icon"]!!)"){
       data in
            DispatchQueue.main.async{
                self.icon.image = UIImage(data: data)
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        WeatherGetter.getWeather(city: "Toronto", update: update)
    }


}

