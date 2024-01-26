//
//  ContentView.swift
//  lab3.2
//
//  Created by Alvaro Aguirre Meza on 2024-01-26.
//

import SwiftUI

struct ContentView: View {
    @State var counter:Int = 0
    var body: some View {
        VStack {
            Text("\(counter)")
            Button(action: {self.counter+=1}, label: {Text("Add")
                    .frame(width: 310.0, height: 88.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.green/*@END_MENU_TOKEN@*/)})
               
            
            Button(action: {self.counter=0}, label: {Text("Reset")
                    .frame(width: 310.0, height: 88.0)
                .background(Color.red)})
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
