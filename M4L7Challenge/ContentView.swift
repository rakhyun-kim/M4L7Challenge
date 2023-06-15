//
//  ContentView.swift
//  M4L7Challenge
//
//  Created by Rakhyun Kim on 6/15/23.
//

import SwiftUI

struct ContentView: View {
    
    var cardColor: Color {
        return Color (
            .sRGB,
    red: Double.random(in: 0..<1),
    green: Double.random(in: 0..<1),
    blue: Double.random(in: 0..<1),
    opacity: 1
            )
    }
    
    var body: some View {
        
        // Build a UI that displays 50 cards,
        VStack {
            
            GeometryReader { geo in
                
                TabView {
                    
                    ForEach(1..<51) { index in
                        
                        // The rectangle’s background should be a random colour that changes every time a card is swiped
                        ZStack {
                            Rectangle()
                                .foregroundColor(cardColor)
                            
                            //random circle number
                            Image(systemName: "\(index).circle")
                                .font(.system(size:300))
                                .foregroundColor(.black)
//                                .resizable()
//                                .scaledToFit()
//                                .padding()
                                
                        }
                        // A rectangle with corner radius 20 and shadow radius 10
                            .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center)
                            .cornerRadius(20)
                            .shadow(color: Color(.sRGB, red:0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
                    }
                    
                    
                    // where the user can swipe left and right between cards.
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
            }
        }
        
        
        
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
