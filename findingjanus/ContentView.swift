//
//  ContentView.swift
//  findingjanus
//
//  Created by NoStress on 4/23/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.offBlack
            VStack(){
             RoundedRectangle(cornerRadius: 100)
                              .fill(Color.offBlack)
                              .frame(width: 150)
                              
                              .frame(height: 150)
                              .shadow(color: Color.black.opacity(0.7),
                                      radius: 10, x: 10, y: 10)
                              .shadow(color: Color.white.opacity(0.1),
                                      radius: 6, x: -4, y: -4)
                          
                          HStack(spacing: 25) {
                              
                              RoundedRectangle(cornerRadius: 15)
                                  .fill(Color.offBlack)
                                  .frame(width: 90)
                                  .frame(height: 90)
                                  .shadow(color: Color.black.opacity(0.7),
                                          radius: 10, x: 10, y: 10)
                                  .shadow(color: Color.white.opacity(0.1),
                                          radius: 6, x: -4, y: -4)
                              
                              RoundedRectangle(cornerRadius: 15)
                                  .fill(Color.offBlack)
                                  .frame(width: 90)
                                  .frame(height: 90)
                                  .shadow(color: Color.black.opacity(0.7),
                                          radius: 10, x: 10, y: 10)
                                  .shadow(color: Color.white.opacity(0.1),
                                          radius: 6, x: -4, y: -4)
                              
                              RoundedRectangle(cornerRadius: 15)
                                  .fill(Color.offBlack)
                                  .frame(width: 90)
                                  .frame(height: 90)
                                  .shadow(color: Color.black.opacity(0.7),
                                          radius: 10, x: 10, y: 10)
                                  .shadow(color: Color.white.opacity(0.1),
                                          radius: 6, x: -4, y: -4)
                          }
            }
        }
        .edgesIgnoringSafeArea(.all)
                      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
let screen = UIScreen.main.bounds
