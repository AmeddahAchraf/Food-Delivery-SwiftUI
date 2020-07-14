//
//  OurPicks.swift
//  Food
//
//  Created by BqNqNNN on 7/14/20.
//

import SwiftUI

struct OurPicks: View {
    @Binding var card : Card
    @Binding var hero : Bool
    
    var body: some View {
        VStack {
            ZStack {
                Image(card.image)
                    .resizable()
                    .frame(width: self.card.expand ? (UIScreen.main.bounds.width) : (UIScreen.main.bounds.width)*0.9 , height: self.card.expand ? (UIScreen.main.bounds.height)*0.3 : (UIScreen.main.bounds.height)*0.25 )
                    //.frame(height: self.card.expand ? 350 : 250)
                    .cornerRadius(self.card.expand ? 5 : 20)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                if (self.card.expand) {
                    HStack{
                        Spacer()
                        Button(action: {
                            
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)){
                                
                                self.card.expand.toggle()
                                self.hero.toggle()
                            }
                            
                        }) {
                            
                            Image(systemName: "xmark")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black.opacity(0.8))
                                .clipShape(Circle())
                            
                        }
                    }
                    .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
            }.edgesIgnoringSafeArea(.top)
            
            
            
            
            
            HStack {
                Text(card.title)
                    .bold()
                    .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .padding(.leading, self.card.expand ? 10 : 20)
            
            HStack {
                Text(card.descrip)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.leading, self.card.expand ? 20 : 30)
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
            .padding(.leading, self.card.expand ? 10 : 20)
            .padding(.trailing, self.card.expand ? 10 : 20)
            
            
            
            
            if self.card.expand {
                VStack{
                    HStack {
                        Text("Description")
                            .font(.title)
                            .bold()
                            .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            Spacer()
                    }
                    Text("The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture is known for influential architecture and on the west coast, Los Angeles' Hollywood is famed for filmmaking.")
                        .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                
                
            }
            
            
            
        }
    }
}
