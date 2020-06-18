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
            
            VStack(spacing: 40) {
                
                
                
                VStack() {
                    HStack(spacing: 176){
                    ZStack() {
                        RoundedRectangle(cornerRadius: 100)
                            .fill(Color.offBlack)
                            .frame(width: 54)
                            
                            .frame(height: 54)
                            .shadow(color: Color.black.opacity(0.7),
                                    radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.1),
                                    radius: 6, x: -4, y: -4)
                        Image(systemName: "list.dash")
                            .foregroundColor(Color.white)
                            .scaleEffect(1.3)
                        
                        
                        
                        
                        
                    }
                    .padding(20)
                  
                
                    
                    ZStack() {
                        RoundedRectangle(cornerRadius: 100)
                            .fill(Color.offBlack)
                            .frame(width: 54)
                            
                            .frame(height: 54)
                            .shadow(color: Color.black.opacity(0.7),
                                    radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.1),
                                    radius: 6, x: -4, y: -4)
                        Image(systemName: "person.2.fill")
                            .foregroundColor(Color.white.opacity(0.8))
                            .scaleEffect(1.3)
                        
                        
                        
                        
                        
                    }
                    .padding(20)
                    
                    }
                    Text("hello")
                        .foregroundColor(Color.white.opacity(0.6))
                    Text("gracie")
                        .font(.title)
                        .fontWeight(.bold)
                        .scaleEffect(0.9)
                        .foregroundColor(Color.white.opacity(0.7))
                    
                }
                
                
                
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
                .padding(10)
                
                
                VStack(alignment: .center) {
                    Text("you can do this, you are capable, you are beautiful, keep going, work as hard as you can, forgive yourself along the way, you have come so far, reach out for your dreams")
                        .font(.body)
                        .scaleEffect(0.9)
                        .foregroundColor(Color.white)
                    
                    Text("you are loved")
                        .font(.headline)
                        
                        .foregroundColor(Color.white)
                    
                    
                }
                .padding(20)
                
                
                
                
                //                    RoundedRectangle(cornerRadius: 15)
                //                        .fill(Color.offBlack)
                //                        .frame(width: screen.width)
                //                        .frame(height: 300)
                //                        .shadow(color: Color.black.opacity(0.7),
                //                                radius: 10, x: 10, y: 10)
                //                        .shadow(color: Color.white.opacity(0.1),
                //                                radius: 6, x: -4, y: -4)
                //                        .offset(x: 0, y: 100)
                //
                // Spacer()
                
                
                
                
                
                
                
                HomeView()
                    .frame(width: UIScreen.screenWidth)
                    .frame(height: -100)
                    .offset(x: 0, y: 100)
                
                
                
                
                
            }
            
            
            
            
            
        }
            
        .edgesIgnoringSafeArea(.all)
        
        
    }
    
    
    
}


struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
