//
//  ContentView.swift
//  lab4.2
//
//  Created by Tech on 2024-01-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("First View")
                NavigationLink(
                    destination: {SecondView(message: "This is my message",handler: {print($0)})}, label: {Text("Navigate to Second")})
                NavigationLink(destination:
                                {ThirdView()}, label:{Text("Navigate to Third")})
            }
        }
    }
}

struct SecondView:View{
    var message: String
    var handler:(String)-> Void
    var body: some View{
        VStack{
            Text(message)
            NavigationLink(destination:
                            {ThirdView()}, label:{Text("Go to third")})
            Button(action: {() in handler("test")}, label: {Text("Run handler")})
        }
    }
}
struct ThirdView:View{
    var body: some View{
        VStack{
            Text("Third view it is")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
