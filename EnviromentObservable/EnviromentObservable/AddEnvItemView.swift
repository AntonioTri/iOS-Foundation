//
//  AddEnvItemView.swift
//  EnviromentObservable
//
//  Created by Antonio Tridente on 25/10/23.
//

import SwiftUI

struct AddEnvItemView: View {
    
    @EnvironmentObject var listItems: ListItems
    
    var body: some View {
        VStack{
            Button(action: {
                listItems.items.append("Ciao Mondo x \(listItems.items.count)")
            }, label: {
                Text("Add one Item!")
            })
            
            Button(action: {
                listItems.items.removeLast()
            }, label: {
                Text("Remove one item!")
                    .font(.system(size: 40))
            })
            Text("Item count: \(listItems.items.count)")
        }
    }
}

#Preview {
    AddEnvItemView()
}
