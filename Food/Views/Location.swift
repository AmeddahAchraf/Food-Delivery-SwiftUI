//
//  Location.swift
//  Food
//
//  Created by BqNqNNN on 7/12/20.
//

import SwiftUI

struct Location: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("location")
                    .resizable()
                    .scaledToFit()
                Text("Hi, nice to meet you !")
                    .font(.title)
                    .bold()
                Text("Choose your location to find \nrestraurants around you. ")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    .padding(.all, 20)
                
                NavigationLink(
                    destination: HomeView(),
                    label: {
                        HStack {
                            Image(systemName: "location.fill")
                                .foregroundColor(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)))
                            
                            Text("Use current location")
                                .bold()
                                .foregroundColor(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)))
                            
                        }
                        .frame(width: 300, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .border(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)), width: 3)
                        .cornerRadius(5)
                    })
                
                Text("Select Manually")
                    .bold()
                    .underline()
                    .foregroundColor(.gray)
                    .padding(.top, 80)
                
                
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
    
}

struct Location_Previews: PreviewProvider {
    static var previews: some View {
        Location()
    }
}
