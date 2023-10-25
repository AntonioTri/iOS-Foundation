//
//  ContentView.swift
//  EnviromentObservable
//
//  Created by Antonio Tridente on 25/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var envListItems: ListItems
    @StateObject var listItems = ListItems()
    @State private var selection: Int = 0
    
    var body: some View {
        
        TabView(selection: $selection){
//            Tab numero 1
            List {
                ForEach(listItems.items, id: \.self){
                    item in
                    Text(item)
                }
            }
            .tabItem {Text("List")}
            .tag(0)
            
//            Tab numero 2
            AddObservedItemView(listItems: listItems)
                .tabItem { Text("Add") }
                .tag(1)
            
//            Tab numero 3
            List {
                ForEach(envListItems.items, id: \.self){
                    item in
                    Text(item)
                }
            }
            .tabItem { Text("Env List") }
            .tag(2)
            
//            Tab numero 4
            AddEnvItemView()
                .tabItem { Text("Add Env") }
                .tag(3)
        }
    }
}

#Preview {
    ContentView()
}
