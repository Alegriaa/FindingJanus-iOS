//
//  LogInView.swift
//  findingjanus
//
//  Created by NoStress on 4/27/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

struct LogInView: View {
    var body: some View {
        ZStack{
            Color.offBlack
            VStack(spacing: 30) {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.offBlack)
                    .frame(width: 275)
                    
                    .frame(height: 275)
                    .shadow(color: Color.black.opacity(0.7),
                            radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.1),
                            radius: 6, x: -4, y: -4)
                    .offset(x: 0, y: -120)
                VStack(spacing: 20){
                    ZStack {
                        RoundedRectangle(cornerRadius: 100)
                            .fill(Color.offBlack)
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.black,lineWidth: 4)
                                    .blur(radius: 6)
                                    .offset(x: 2, y: 2)
                                    .mask(RoundedRectangle(cornerRadius: 100)
                                        .fill(LinearGradient(Color.offBlack, Color.clear)))
                                
                        )
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.black,lineWidth: 4)
                                    .blur(radius: 6)
                                    .offset(x: -2, y: -2)
                                    .mask(RoundedRectangle(cornerRadius: 100)
                                        .fill(LinearGradient(Color.clear, Color.offBlack)))
                                
                        )
                    }
                    .frame(width: 380, height: 3)
                    ZStack {
                        RoundedRectangle(cornerRadius: 100)
                            .fill(Color.offBlack)
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.black,lineWidth: 4)
                                    .blur(radius: 6)
                                    .offset(x: 2, y: 2)
                                    .mask(RoundedRectangle(cornerRadius: 100)
                                        .fill(LinearGradient(Color.offBlack, Color.clear)))
                                
                        )
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.black,lineWidth: 4)
                                    .blur(radius: 6)
                                    .offset(x: -2, y: -2)
                                    .mask(RoundedRectangle(cornerRadius: 100)
                                        .fill(LinearGradient(Color.clear, Color.offBlack)))
                                
                        )
                    }
                    .frame(width: 360, height: 3)
                    
                    LogIn()
                    ZStack {
                        RoundedRectangle(cornerRadius: 100)
                            .fill(Color.offBlack)
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.black,lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(RoundedRectangle(cornerRadius: 100)
                                        .fill(LinearGradient(Color.offBlack, Color.clear)))
                                
                        )
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.black,lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: -2, y: -2)
                                    .mask(RoundedRectangle(cornerRadius: 100)
                                        .fill(LinearGradient(Color.clear, Color.offBlack)))
                                
                        )
                    }
                    .frame(width: 300, height: 3)
                    
              
                    
                    VStack() {
                         LogIn()
                        Text("Forgot Password?")
                            .font(.body)
                            .foregroundColor(Color.white.opacity(0.8))
                            .scaleEffect(0.8)
                         .frame(width: 200, height: 30, alignment: .trailing)
                        .offset(x: 50, y: 0)
                        ZStack {
                            RoundedRectangle(cornerRadius: 100)
                                .fill(Color.offBlack)
                                
                                .overlay(
                                    RoundedRectangle(cornerRadius: 100)
                                        .stroke(Color.black,lineWidth: 4)
                                        .blur(radius: 6)
                                        .offset(x: 2, y: 2)
                                        .mask(RoundedRectangle(cornerRadius: 100)
                                            .fill(LinearGradient(Color.offBlack, Color.clear)))
                                    
                            )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 100)
                                        .stroke(Color.black,lineWidth: 4)
                                        .blur(radius: 6)
                                        .offset(x: -2, y: -2)
                                        .mask(RoundedRectangle(cornerRadius: 100)
                                            .fill(LinearGradient(Color.clear, Color.offBlack)))
                                    
                            )
                        }
                        .frame(width: 360, height: 3)
                        
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 100)
                            .fill(Color.offBlack)
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.black,lineWidth: 4)
                                    .blur(radius: 6)
                                    .offset(x: 2, y: 2)
                                    .mask(RoundedRectangle(cornerRadius: 100)
                                        .fill(LinearGradient(Color.offBlack, Color.clear)))
                                
                        )
                            // hello
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.black,lineWidth: 4)
                                    .blur(radius: 6)
                                    .offset(x: -2, y: -2)
                                    .mask(RoundedRectangle(cornerRadius: 100)
                                        .fill(LinearGradient(Color.clear, Color.offBlack)))
                                
                        )
                    }
                    .frame(width: 380, height: 3)
                     .offset(x: -2, y: -2)
                }
                
            }
            .offset(x: 0, y: 100)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}

struct LogIn: View {
    var body: some View {
        ZStack {
            VStack {
                RoundedRectangle(cornerRadius: 100)
                    .fill(Color.offBlack)
                    
                    .shadow(color: Color.black.opacity(0.8),
                            radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.1),
                            radius: 6, x: -4, y: -4)
            }
            .frame(width: 310, height: 45)
            
            VStack {
                ZStack {
                    
                    
                    
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color.offBlack)
                        
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color.black,lineWidth: 5)
                                .blur(radius: 4)
                                .offset(x: 2, y: 2)
                                .mask(RoundedRectangle(cornerRadius: 100)
                                    .fill(LinearGradient(Color.offBlack, Color.clear)))
                            
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
                .frame(width: 300, height: 35)
                
                
                
                
            }
            
        }
        
        
        
    }
}
