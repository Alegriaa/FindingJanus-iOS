//
//  HomeScreenView.swift
//  findingjanus
//
//  Created by NoStress on 6/10/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack{
            Color.offBlack
            
            VStack {
                VStack() {
                
                    HStack (spacing: 10){
                    ZStack {
                        RoundedRectangle(cornerRadius: 100)
                            .fill(Color.offBlack)
                            .frame(width: 150)
                            
                            .frame(height: 150)
                            .shadow(color: Color.black.opacity(0.7),
                                    radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.1),
                                    radius: 6, x: -4, y: -4)
                        RoundedRectangle(cornerRadius: 100)
                            .fill(Color.offBlack)
                            .frame(width: 145, height: 145)
                            .shadow(color: Color.black.opacity(0.4),
                                    radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.1),
                                    radius: 6, x: -4, y: -4)
                        
                        RoundedRectangle(cornerRadius: 100)
                            .fill(Color.offBlack)
                            .frame(width: 140, height: 140)
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.black,lineWidth: 5)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(RoundedRectangle(cornerRadius: 100)
                                        .fill(LinearGradient(Color.off, Color.clear)))
                                
                        )
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.black, lineWidth: 6)
                                    .blur(radius: 4)
                                    .offset(x: -2, y: -2)
                                    .mask(RoundedRectangle(cornerRadius: 100)
                                        .fill(LinearGradient(Color.clear, Color.black.opacity(0.9))))
                        )
                        
                    }
                    Spacer()
                    VStack(spacing: 20) {
                        RoundedRectangle(cornerRadius: 15)
                                         .fill(Color.offBlack)
                                         .frame(width: 150)
                                         .frame(height: 60)
                                         .shadow(color: Color.black.opacity(0.7),
                                                 radius: 10, x: 10, y: 10)
                                         .shadow(color: Color.white.opacity(0.1),
                                             radius: 6, x: -4, y: -4)
                     
                        RoundedRectangle(cornerRadius: 15)
                        .fill(Color.offBlack)
                        .frame(width: 150)
                        .frame(height: 60)
                        .shadow(color: Color.black.opacity(0.7),
                                radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.1),
                            radius: 6, x: -4, y: -4)
                    }
                }
                .padding()
                Spacer()
                Text("welcome, gracie")
                    
                    .foregroundColor(Color.white.opacity(0.7))
                Spacer()
            }
                Spacer()
                
                
                
                
                
                HStack(spacing: 45) {
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.offBlack)
                        .frame(width: 120)
                        .frame(height: 120)
                        .shadow(color: Color.black.opacity(0.7),
                                radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.1),
                                radius: 6, x: -4, y: -4)
                    // Spacer()
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.offBlack)
                        .frame(width: 120)
                        .frame(height: 120)
                        .shadow(color: Color.black.opacity(0.7),
                                radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.1),
                                radius: 6, x: -4, y: -4)
                    
                    
                }
                Spacer()
                
                VStack {
                    HomeView()
                        
                        .frame(width: UIScreen.screenWidth)
                        .frame(height: 50)
                }
                
                
                
            }
            .frame(width: 340, height: 430)
            .position(x: UIScreen.screenWidth/2, y: UIScreen.screenHeight - 270)
                
            
        }
            
           .edgesIgnoringSafeArea(.all)
    }
 
}


struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
