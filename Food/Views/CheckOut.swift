//
//  CheckOut.swift
//  Food
//
//  Created by BqNqNNN on 7/14/20.
//

import SwiftUI

struct CheckOut: View {
    var body: some View {
        ScrollView{
            
            ZStack {
                Color(#colorLiteral(red: 0.9021687508, green: 0.1747280955, blue: 0.318703413, alpha: 1))
                    .frame(width: 600, height: 600)
                    .edgesIgnoringSafeArea(.all)
                    .cornerRadius(300)
                    .offset(x: -50, y: -350)
                Color(#colorLiteral(red: 0.9617715478, green: 0.1775636971, blue: 0.3371206522, alpha: 1))
                    .frame(width: 300, height: 300)
                    .edgesIgnoringSafeArea(.all)
                    .cornerRadius(300)
                    .offset(x: -100, y: -250)

                HStack {
                    Text("Order")
                        .bold()
                        .font(.title)
                    Spacer()
                    Text("Close")
                        .font(.title2)
                }
                
                .padding(.all, 20)
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width)
                .padding(.top, -250)
                
            }
            HStack {
                Text("Order")
                    .bold()
                    .font(.title)
                Spacer()
                Text("Close")
                    .font(.title2)
            }
            Text("Work in progress")
                .bold()
                .font(.title)

            Spacer()
        }
        
        .edgesIgnoringSafeArea(.all)
    }
}

struct CheckOut_Previews: PreviewProvider {
    static var previews: some View {
        CheckOut()
    }
}
