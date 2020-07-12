//
//  navBar.swift
//  FoodDelivery
//
//  Created by BqNqNNN on 7/9/20.
//  Copyright © 2020 BqNqNNN. All rights reserved.
//

import SwiftUI

struct NavBar: View {
    @State var index = 0
    var body: some View {
        HStack{
            Button(action: {
                self.index = 0
            }, label: {
                VStack {
                    Image(systemName: "house.fill").resizable()
                        .foregroundColor(self.index == 0 ? Color(.red).opacity(0.7) : .gray)
                        .frame(width: 20, height: 15)
                    Text("Home")
                        .foregroundColor(self.index == 0 ? Color(.red).opacity(0.7) : .gray)
                        
                }
                .padding(.vertical,10)
                .padding(.horizontal,35)
                .cornerRadius(CGFloat(10))
                
                
            })
            
            
            
            //Second Button
            
            Button(action: {
                self.index = 1
            }, label: {
                VStack {
                    Image(systemName: "heart.fill").resizable()
                        .foregroundColor(self.index == 1 ? Color(.red).opacity(0.7) : .gray)
                        .frame(width: 15, height: 15)
                    Text("Favorite")
                        .foregroundColor(self.index == 1 ? Color(.red).opacity(0.7) : .gray)
                        
                }
                .padding(.vertical,10)
                .padding(.horizontal,35)
                .cornerRadius(CGFloat(10))
                
                
            })
            
            
            
            
            //third Button
            
            Button(action: {
                self.index = 2
            }, label: {
                VStack {
                    Image(systemName: "person.fill").resizable()
                        .foregroundColor(self.index == 2 ? Color(.red).opacity(0.7) : .gray)
                        .frame(width: 15, height: 15)
                    Text("Profile")
                        .foregroundColor(self.index == 2 ? Color(.red).opacity(0.7) : .gray)
                        
                }
                .padding(.vertical,10)
                .padding(.horizontal,35)
                .cornerRadius(CGFloat(10))
                
                
            })
            
            
        }
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
