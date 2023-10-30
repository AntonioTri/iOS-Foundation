//
//  ContentView.swift
//  Lista
//
//  Created by Antonio Tridente on 23/10/23.
//

import SwiftUI

#Preview {
    ContentView()
}


struct ContentView: View {
    
    @State private var counter1 = 0
    @State private var counter2 = 0
    @State private var counter3 = 0

    var body: some View {
            
        VStack{
            
            Text("\(TotalButtons(x: counter1, y: counter2 , z: counter3))")
                .font(.system(size: 200))
                .fontDesign(.rounded)
            
            HStack{
                AddButton(counter: $counter1, color: .red)
                AddButton(counter: $counter2, color: .yellow)
                AddButton(counter: $counter3, color: .green)
            }.padding(20)
            
            ResetButton(counter1: $counter1, counter2: $counter2, counter3: $counter3, color: .blue)
            .padding(20)
            
        }
        
    }
}




struct AddButton: View{
    
    @Binding var counter: Int
    
    var color: Color
    
    var body: some View{
        
        Button( action: {
            self.counter += 1
            
        }) {
            Circle()
                //.frame(width: 100, height: 200)
                .foregroundColor(color)
                .overlay(
                    Text("\(counter)")
                        .font(.system(size: 70, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                )
            
            
        }
    }
}

struct SubtractButton: View{
    
    @Binding var counter: Int
    
    var color: Color
    
    var body: some View{
        
        Button( action: {
            self.counter -= 1
            
        }) {
            Circle()
                //.frame(width: 200, height: 200)
                .foregroundColor(color)
                .overlay(
                    Text("\(counter)")
                        .font(.system(size: 100, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                )
            
            
        }
    }
}

struct ResetButton: View{
    
    @Binding var counter1: Int
    @Binding var counter2: Int
    @Binding var counter3: Int
    
    var color: Color
    
    var body: some View{
        
        Button( action: {
            self.counter1 = 0
            self.counter2 = 0
            self.counter3 = 0
            
        }) {
            Circle()
                //.frame(width: 200, height: 200)
                .foregroundColor(color)
                .overlay(
                    Text("Reset all!")
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                )
            
            
        }
    }
}



func TotalButtons(x: Int, y: Int, z:Int) -> Int{

    return x + y + z
    
}
