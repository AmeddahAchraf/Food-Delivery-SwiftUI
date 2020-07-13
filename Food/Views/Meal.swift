//
//  Meal.swift
//  Food
//
//  Created by BqNqNNN on 7/13/20.
//

import SwiftUI

struct Meal: View {
    @State private var quantity = 0
    var placeHolder = "Nine years earlier, following the events of Toy Story 2, Bo Peep and Woody attempt to rescue RC, Andy's remote-controlled car, from a train rainstorm. Just as they finish the rescue, Woody"
    var body: some View {
        
        NavigationView {
            VStack {
                ScrollView(.vertical, showsIndicators: false, content: {
                    GeometryReader{reader in
                        Image("maxresdefault3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            
                            .offset(y: -reader.frame(in: .global).minY)
                            // going to add parallax effect....
                            .frame(width: UIScreen.main.bounds.width, height:  reader.frame(in: .global).minY + 300)
                        
                    }
                    .frame(height: 280)
                    
                    VStack(alignment: .leading,spacing: 15){
                        
                        Text("Chinese Salade")
                            .font(.system(size: 35, weight: .bold))
                        
                        
                        HStack(spacing: 10){
                            
                            ForEach(1..<5){_ in
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                            }
                        }
                        
                        HStack {
                            Text("Some Tomato Sauce, Salade, mixed with cheese.")
                                .font(.caption)
                                .foregroundColor(.gray)
                                .padding(.top,5)
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "heart.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.red)
                                    
                            })
                            .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        }
                        
                        
                        Text("Description")
                            .font(.system(size: 25, weight: .bold))
                        
                        Text(placeHolder)
                            .padding(.top, 10)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        
                        HStack {
                            Text("Quantity ")
                                .font(.title3)
                                .bold()
                            Spacer()
                            Stepper("",
                                    onIncrement: {
                                        quantity+=3
                                    }, onDecrement: {
                                        quantity-=3
                                    })
                                .foregroundColor(.black)
                                .background(Color.white)
                                .frame(width: 100)
                        }.padding(.top, 10)
                        
                        
                        HStack {
                            Text("Price ")
                                .font(.title3)
                                .bold()
                            Spacer()
                            Text("$\(quantity+1).00")
                                .font(.title2)
                                .bold()
                        }
                        .padding(.top, 10)
                    }
                    .padding(.top, 25)
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(20)
                    .offset(y: -35)
                })
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
                
                Spacer()
                
                HStack{
                    Spacer()
                    Button(action: {}, label: {
                        Text("Add to Cart")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 100)
                            .background(Color.red)
                            .cornerRadius(10)
                        
                    })
                    Spacer()
                }
                .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                .edgesIgnoringSafeArea(.all)
                .background(Color.white.edgesIgnoringSafeArea(.all))
              
                    
                    
                
            }
        }
    }
    
}

struct Meal_Previews: PreviewProvider {
    static var previews: some View {
        Meal()
    }
}
