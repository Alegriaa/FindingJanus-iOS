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
            VStack(spacing: 40) {
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
                
                VStack(spacing: 25) {
                    
                    LongLine()
                        .frame(width: 380, height: 3)
                        .offset(x: 0, y: -20)
                    
                    ZStack {
                        TextBubble()
                            .frame(width: 290, height: 40)
                    
                    Text("username..")
                                  .font(.headline)
                                  .foregroundColor(Color.white.opacity(0.85))
                                  .frame(width: 200, height: 40)
                                  .scaledToFill()
                    }
                
                LongLine()
                    .frame(width: 330, height: 3)
                
                    ZStack {
                        TextBubble()
                            .frame(width: 310, height: 40)
                        Text("password..")
                        .font(.headline)
                        .foregroundColor(Color.white.opacity(0.85))
                        .frame(width: 200, height: 40)
                        .scaledToFill()
                    }
                
                Text("Forgot Password?")
                    .font(.body)
                    .foregroundColor(Color.white.opacity(0.8))
                    .padding(.top)
                    .scaleEffect(0.8)
                    .frame(width: 200, height: 30, alignment: .trailing)
                    .offset(x: 70, y: -20)
                LongLine()
                    .frame(width: 380, height: 3)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}

