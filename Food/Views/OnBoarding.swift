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
    @State var showSheetView = false
    
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
                
                NavigationLink(
                    destination: Location(),
                    label: {
                        Text("Start")
                            .font(.headline)
                            .frame(width: 200, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .background(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)))
                            .cornerRadius(10)
                            .animation(.spring())
                            .offset(x: 4, y: 3)
                    })
                
            }
            .navigationBarItems(trailing:
                                    NavigationLink(
                                        destination: Location(),
                                        label: {
                                            Image(systemName: "arrow.right")
                                                .font(Font.system(.title3))
                                                .foregroundColor(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)))
                                        })
            )
        }.sheet(isPresented: $showSheetView) {
            Location()
        }
        
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
    
}



struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}



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
