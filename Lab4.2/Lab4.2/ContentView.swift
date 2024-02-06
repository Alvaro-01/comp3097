//
//  ContentView.swift
//  Lab4.2
//
//  Created by Tech on 2024-01-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView{
                VStack {
                NavigationLink(destination: SecondView(message:"First view")){
                    Text("One")
                }
                NavigationLink(destination: ThirdView(message:"Second view")){
                    Text("Two")
                    
                }
                NavigationLink(destination: OtherView(message:"Third view")){
                    Text("Three")
                }
            }
        }
        .padding()
    }
}
struct SecondView:View{
    var message:String
    
    var body: some View{
        Text(message)
    }
}
struct ThirdView:View{
    var message:String
    
    var body: some View{
        Text(message)
    }
}
struct OtherView:View{
    var message:String
    
    var body: some View{
        Text(message)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
