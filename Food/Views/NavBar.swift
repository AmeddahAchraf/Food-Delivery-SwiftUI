//
//  navBar.swift
//  FoodDelivery
//
//  Created by BqNqNNN on 7/9/20.
//  Copyright © 2020 BqNqNNN. All rights reserved.
//

import SwiftUI

struct NavBar: View {
    @State private var selection = 1
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().backgroundColor = .white
    }
    var body: some View {
        
            TabView(selection: $selection) {
                HomeView().tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    
                }.tag(1)
                
                Text("Favorite View").tabItem {
                    VStack {
                        Image(systemName: "heart.fill")
                        Text("Favorite")
                    }
                    
                }.tag(2)
                
                Text("Profile").tabItem {
                    VStack {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                    
                }.tag(3)
            }
            .accentColor(.red)
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
