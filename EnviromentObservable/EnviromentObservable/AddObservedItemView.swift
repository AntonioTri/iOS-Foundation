//
//  AddObservedItemView.swift
//  EnviromentObservable
//
//  Created by Antonio Tridente on 25/10/23.
//

import SwiftUI

struct AddObservedItemView: View {
    
    @ObservedObject var listItems: ListItems
    
    var body: some View {
        
        VStack {
            Button(action: {
                listItems.items.append("Ciao a tutti x \(listItems.items.count)")
            }, label: {
                Text("Add one item!")
                    .font(.system(size: 40))
            })
            
            Button(action: {
                listItems.items.removeLast()
            }, label: {
                Text("Remove one item!")
                    .font(.system(size: 40))
            })
            Text("Item count: \(listItems.items.count)")
                .font(.system(size: 40))
        }
    }
}

#Preview {
    AddObservedItemView(listItems: ListItems())
}
