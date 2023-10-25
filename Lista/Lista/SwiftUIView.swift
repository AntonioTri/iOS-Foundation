//
//  SwiftUIView.swift
//  Lista
//
//  Created by Antonio Tridente on 25/10/23.
//

import SwiftUI

struct RestaurantDetailView: View{
    
    let restaurant: Restaurant
    var body: some View{
        
        VStack{
            Image(restaurant.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
                .cornerRadius(15)
                .padding(15)
            Text(restaurant.name)
                .font(.title)
                .fontWeight(.bold)
            Spacer()
        }
    }
}

#Preview {
    RestaurantDetailView(restaurant: restaurants[0])
}
