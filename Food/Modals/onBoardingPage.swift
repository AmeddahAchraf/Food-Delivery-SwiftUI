//
//  onBoardingPage.swift
//  Food
//
//  Created by BqNqNNN on 7/13/20.
//

import Foundation

struct Page : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
}

var Data = [
    Page(id: 0, image: "discover", title: "Discover places near you", descrip: "We make it simple to find the food you crave. Enter your  home addresse and let us do the rest."),
    Page(id: 1, image: "choose", title: "Choose a Tasty Dish", descrip: "We make it simple to find the food you crave. Enter your  home addresse and let us do the rest."),
    Page(id: 2, image: "pick", title: "Your Food is on the way", descrip: "We make it simple to find the food you crave. Enter your  home addresse and let us do the rest.")
]
