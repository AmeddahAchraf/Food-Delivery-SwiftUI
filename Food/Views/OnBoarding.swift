//
//  OnBoarding.swift
//  Food
//
//  Created llby BqNqNNN on 7/12/20.
//

import SwiftUI
import UIKit

struct OnBoarding: View {
    
    @State var p = 0
    var body: some View {
        NavigationView {
            VStack {
                TabView {
                    ForEach(Data) { page in
                        VStack {
                            Image(page.image)
                                .resizable()
                                .scaledToFit()
                            Text(page.title)
                                .font(.title).bold()
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 20)
                            Text(page.descrip)
                                .multilineTextAlignment(.center)
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                PageControl(page: self.$p)
                    .padding(.bottom,20)
                
                ZStack {
                    NavigationLink(destination: NavBar()) {
                        Text("Start")
                            .font(.headline)
                            .frame(width: 200, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .background(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)))
                            .cornerRadius(10)
                            .animation(.spring())
                            .offset(x: 4, y: 3)
                        
                    }
                }
                
            }
            
            .navigationBarHidden(true)
        }
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}

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

struct PageControl : UIViewRepresentable {
      
      @Binding var page : Int
      
      func makeUIView(context: Context) -> UIPageControl {
          
          let view = UIPageControl()
          view.currentPageIndicatorTintColor = .red
          view.pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
          view.numberOfPages = Data.count
          return view
      }
      
      func updateUIView(_ uiView: UIPageControl, context: Context) {
          
          // Updating Page Indicator When Ever Page Changes....
          
          DispatchQueue.main.async {
              
              uiView.currentPage = self.page
          }
      }
  }
