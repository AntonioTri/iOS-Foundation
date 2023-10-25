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


struct Restaurant: Identifiable{
    
    var id = UUID()
    var name: String
    var image: String
    
}

var restaurants: [Restaurant] = [
    Restaurant (name: "Cafe Deadend", image: "cafedeadend"),
    Restaurant (name: "Homei", image: "homei"),
    Restaurant (name: "Teakha", image: "teakha"),
    Restaurant (name: "Cafe Lois", image:"cafeloisl"),
    Restaurant (name: "Petite Oyster", image: "petiteoyster"),
    Restaurant (name: "For Kee Restaurant", image: "forkeerestaurant"),
    Restaurant (name: "Po's Atelier", image: "posatelier"),
    Restaurant (name: "Bourke Street Bakery", image: "bourkestreetbakery"),
    Restaurant (name: "Haigh's Chocolate", image: "haighschocolate"),
    Restaurant (name: "Palomino Espresso", image: "palominoespresso"),
    Restaurant (name: "five Leaves", image: "fiveleaves"),
    Restaurant (name: "Cafe Lore", image: "cafelore"),
    Restaurant (name: "Confessional", image: "confessional"),
    Restaurant (name: "Barrafina", image: "barrafina"),
    Restaurant (name: "Donostia", image: "donostia"),
    Restaurant (name: "Royal Oak", image: "royaloak"),
    Restaurant (name: "CASK Pub and Kitchen", image: "caskpubkitchen")]


struct BasicImageRow: View {
    
    var restaurants: Restaurant
    var body: some View {
        
        HStack{
            Image(restaurants.image)
                .resizable()
                .cornerRadius(6)
                .frame(width: 40, height: 40)
            Text("\(restaurants.name)")
        }
    }
}

struct FullImageRow: View{
    
    let restaurants: Restaurant
    var body: some View{
        
        ZStack{
            
            Image(restaurants.image)
                .resizable()
                .aspectRatio(contentMode: .fill )
                .frame(height: 200)
                .cornerRadius(10)
                .overlay(
                    Rectangle()
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .opacity(0.2)
                )
            
            Text(restaurants.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.white)
            
        }
    }
}


struct ContentView: View {

    var body: some View {
        
        NavigationView{
            List(restaurants.indices, id: \.self){ index in
                
                NavigationLink(
                    destination: RestaurantDetailView(restaurant: restaurants[index]),
                    label: {
                        if (index < 2){
                            FullImageRow(restaurants: restaurants[index])
                        } else {
                            BasicImageRow(restaurants: restaurants[index])
                        }
                    })
                
            }
            .navigationBarTitle("Restaurants", displayMode: .inline)
        }
    }
}





//Hello world!
