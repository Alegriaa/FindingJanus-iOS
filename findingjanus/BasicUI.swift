//
//  BasicUI.swift
//  findingjanus
//
//  Created by NoStress on 12/7/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

struct BasicUI: View {
    var body: some View {
       ZStack {
            Color.offBlack
        VStack(spacing: 70){
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
                            ZStack {
                                RoundedRectangle(cornerRadius: 100)
                                    
                                    .fill(Color.offBlack)
                                    .frame(width: 220)
                                    //.padding(.bottom, 52)
                                    
                                    .frame(height: 220)
                                    .shadow(color: Color.black.opacity(0.7),
                                            radius: 10, x: 10, y: 10)
                                    .shadow(color: Color.white.opacity(0.1),
                                            radius: 6, x: -4, y: -4)
                                VStack {
                                    Text("focus")
                                        
                                        .font(.headline)
                                        .fontWeight(.heavy)
                                        .foregroundColor(Color.white.opacity(0.8))
                                        .frame(width: 400, height: 100)
                                    Image(systemName: "suit.heart.fill")
                                        .scaleEffect(3)
                                        .foregroundColor(Color.white.opacity(0.7))
                                }
                            
                          }
            }
        }
       .edgesIgnoringSafeArea(.all)
    }
}

struct BasicUI_Previews: PreviewProvider {
    static var previews: some View {
        BasicUI()
    }
}
