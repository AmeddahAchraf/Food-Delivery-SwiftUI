//
//  TrendingWeek.swift
//  Food
//
//  Created by BqNqNNN on 7/12/20.
//

import SwiftUI

struct TrendingWeek: View {
    @State var trendingMeal : Card
    var body: some View {
        VStack {
            Image(trendingMeal.image)
                .resizable()
                .frame(width: 270, height: 150)
            
            HStack {
                Text(trendingMeal.title)
                    .bold()
                    .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
            HStack {
                Text(trendingMeal.descrip)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
            HStack {
                ForEach(0 ..< trendingMeal.stars) { item in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.subheadline)
                }
                Spacer()
                
                Text(trendingMeal.price)
                    .font(.subheadline)
                    .bold()
            }
            .padding(.bottom, 30)
            .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
        }
        .frame(width: 250, height: 250)
        .cornerRadius(10)
        
    }
    
}

struct TrendingWeek_Previews: PreviewProvider {
    static var previews: some View {
        TrendingWeek(trendingMeal: TrendingCard[0])
    }
}
