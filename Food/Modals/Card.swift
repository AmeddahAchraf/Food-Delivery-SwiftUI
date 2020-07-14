//
//  Card.swift
//  Food
//
//  Created by BqNqNNN on 7/13/20.
//

import Foundation


struct Card : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
    var stars : Int
    var price = "$25.00"
    var expand : Bool
}

var TrendingCard = [
    Card(id: 0, image: "maxresdefault1", title: "Crispy Chicken Sandwich", descrip: "KoreanBBQ",stars: 5, expand: false),
    Card(id: 1, image: "maxresdefault2", title: "Shrimp Fries", descrip: "Hot Sauce",stars: 3, expand: false),
    Card(id: 2, image: "maxresdefault3", title: "Chinese Salad", descrip: "Best Seller",stars: 4, expand: false),
    Card(id: 3, image: "maxresdefault1", title: "Crispy Chicken Sandwich", descrip: "KoreanBBQ",stars: 5, expand: false),
    Card(id: 4, image: "maxresdefault2", title: "Shrimp Fries", descrip: "Hot Sauce",stars: 3, expand: false),
    Card(id: 5, image: "maxresdefault3", title: "Pizza pineapple", descrip: "dont buy iy",stars: 1, expand: false),
]

var FoodTypes = ["Pizza","Drinks","Tacos","Burger","Fries","Top"]
