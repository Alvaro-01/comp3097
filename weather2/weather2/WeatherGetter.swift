//
//  WeatherGetter.swift
//  weather2
//
//  Created by Alvaro Aguirre Meza on 2024-03-25.
//

import Foundation

class WeatherGetter{
    private let baseUri = "http://api.openweathermap.org/data/2.5/weather"
    private let API_KEY = "176bbc4f10776eb9afdfe45a39b7d957"
    private let iconUri = "http://openweathermap.org/img/w/"
    
    
    func getIcon(icon: String, update:@escaping(Data)->Void){
        let session = URLSession.shared
                let urlRequest =
                URLRequest(url:URL(string:"\(iconUri)\(icon).png")!)
        let dataTask = session.dataTask(with: urlRequest){
            (data:Data?, response:URLResponse?, error:Error?) in
            guard let data = data , error== nil else{
                print("\(error)")
                return
            }
        }
        
        dataTask.resume()

    }
    func getWeather(city:String, update:@escaping([String:AnyObject])->Void){
        let session = URLSession.shared
                let urlRequest =
                URLRequest(url:URL(string:"\(baseUri)?APPID=\(API_KEY)&q=\(city)")!)
        let dataTask = session.dataTask(with: urlRequest){
            (data:Data?, response:URLResponse?, error:Error?) in
            
            if let error = error{
                print("Error:\(error)")
            }else{
                do{
                    let weather = try JSONSerialization.jsonObject(with: data!,
                                                                   options: .mutableContainers)as! [String:AnyObject]
                    print("\(weather)")
                    
                }catch  let jsonError as Error{
                    print("JSONError:\(jsonError)")
                }
                
            }
        }
        dataTask.resume()
    }
    
}
