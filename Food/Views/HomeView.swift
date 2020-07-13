//
//  HomeView.swift
//  Food
//
//  Created by BqNqNNN on 7/12/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack {
            //Top Search Bar
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)), .white]), startPoint: .top, endPoint: .bottom)
                    .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height)*0.25, alignment: .center)
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack {
                    HStack {
                        Text("Browse")
                            .bold()
                            .font(.title)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(.white)
                            .padding(.leading, 20)
                            .padding(.top, -55)
                        Spacer()
                        Text("Filter")
                            .font(.title2)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                            .padding(.trailing, 20)
                            .padding(.top, -45)
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .font(.title)
                        
                        
                        Text("Search...")
                            .bold()
                            .foregroundColor(.gray)
                        
                        
                    }
                    .frame(width:  ( UIScreen.main.bounds.width)*0.85, height: 40, alignment: .leading)
                    .padding(.leading, 20)
                    .background(Color.white)
                    .cornerRadius(10)
                    
                }
                
                
                
            }
            
            //TrendingWeek
            VStack{
                HStack {
                    Text("Trending this week")
                        .bold()
                        .multilineTextAlignment(.trailing)
                        .padding(.leading, 20)
                    
                    Spacer()
                    Text("View all >")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)))
                        .padding(.trailing, 20)
                }
                // Card View
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(TrendingCard) { card in
                            TrendingWeek(trendingMeal: card)
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                    }
                }
            }
            
            
            Spacer()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

