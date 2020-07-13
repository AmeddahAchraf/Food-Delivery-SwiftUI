//
//  HomeView.swift
//  Food
//
//  Created by BqNqNNN on 7/12/20.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        NavigationView {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        //Top Search Bar
                        ZStack {
                            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)), Color(#colorLiteral(red: 0.9843164086, green: 0.9843164086, blue: 0.9843164086, alpha: 1))]), startPoint: .top, endPoint: .bottom)
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
                                        .padding(.top, -40)
                                    Spacer()
                                    Text("Filter")
                                        .font(.title2)
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(.white)
                                        .padding(.trailing, 20)
                                        .padding(.top, -30)
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
                                        NavigationLink(
                                            destination: Meal(),
                                            label: {
                                                TrendingWeek(trendingMeal: card)
                                                    .background(Color.white)
                                                    .cornerRadius(15)
                                            })
                                            .buttonStyle(PlainButtonStyle())
                                    }
                                    .padding(.all, 10)
                                    
                                }
                            }
                        }.padding(.top, -50)
                        
                        
                        //Categories
                        VStack{
                            HStack {
                                Text("Categories")
                                    .bold()
                                    .multilineTextAlignment(.trailing)
                                    .padding(.leading, 20)
                                
                                Spacer()
                            }
                            // Categories View
                            HStack(spacing: 10) {
                                ForEach(1 ..< 5) { i in
                                    VStack {
                                        Image("categ-\(String(i))")
                                        Text(FoodTypes[Int(i)-1])
                                            .font(.subheadline)
                                            .bold()
                                    }
                                    .frame(width: 80, height: 100, alignment: .center)
                                    .background(Color.white)
                                    .cornerRadius(15)
                                }
                            }
                            
                            HStack(spacing: 10) {
                                ForEach(3 ..< 7) { i in
                                    VStack {
                                        Image("categ-\(String(i))")
                                        Text(FoodTypes[Int(i)-1])
                                            .font(.subheadline)
                                            .bold()
                                    }
                                    .frame(width: 80, height: 100, alignment: .center)
                                    .background(Color.white)
                                    .cornerRadius(15)
                                }
                            }
                            
                        }
                        
                        //Categories
                        VStack{
                            HStack {
                                Text("Our picks")
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
                            ScrollView(.vertical, showsIndicators: false) {
                                VStack(spacing: 10) {
                                    ForEach(TrendingCard) { card in
                                        VStack {
                                            Image(card.image)
                                                .resizable()
                                                .frame(width: (UIScreen.main.bounds.width)*0.9, height: (UIScreen.main.bounds.height)*0.25)
                                                .cornerRadius(20)
                                            
                                            
                                            HStack {
                                                Text(card.title)
                                                    .bold()
                                                    .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                                Spacer()
                                            }
                                            
                                            HStack {
                                                Text(card.descrip)
                                                    .font(.subheadline)
                                                    .foregroundColor(.gray)
                                                    .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                                Spacer()
                                            }
                                            
                                            HStack {
                                                ForEach(0 ..< card.stars) { item in
                                                    Image(systemName: "star.fill")
                                                        .foregroundColor(.yellow)
                                                        .font(.subheadline)
                                                }
                                                Spacer()
                                                
                                                Text(card.price)
                                                    .font(.subheadline)
                                                    .bold()
                                            }
                                            .padding(.bottom, 30)
                                            .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                            .padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                            
                                            
                                        }
                                        .background(Color.white)
                                    }
                                    .padding(.all, 10)
                                    
                                }
                            }
                        }.padding(.top, 50)
                        
                        Spacer()
                        
                    }
                    .background(Color(#colorLiteral(red: 0.9843164086, green: 0.9843164086, blue: 0.9843164086, alpha: 1)))
                    
                }
                .background(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)))
                .edgesIgnoringSafeArea(.top)
                
                Spacer()
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

