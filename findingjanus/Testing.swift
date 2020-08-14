//
//  Testing.swift
//  findingjanus
//
//  Created by NoStress on 4/23/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

struct Testing: View {
    var body: some View {
        ZStack{
            Color.offBlack
            
            VStack(spacing: 60){
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
                        .shadow(color: Color.black.opacity(0.8),
                                radius: 10, x: 10, y: 10)
                        .shadow(color: Color(#colorLiteral(red: 0.2156862745, green: 0.8352941176, blue: 0.9098039216, alpha: 1)).opacity(0.08),
                                radius: 6, x: -4, y: -4)
                    
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color.offBlack)
                        .frame(width: 140, height: 140)
                        .overlay(
                            
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color.black,lineWidth: 5)
                                .blur(radius: 4)
                                .offset(x: 20, y: 79)
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
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                       
                        .fill(Color.offBlack)
                        .frame(width: 350)
                        //.padding(.bottom, 52)
                        
                        .frame(height: 48)
                        .shadow(color: Color.black.opacity(0.7),
                                radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.1),
                            radius: 6, x: -4, y: -4)
                    Text("FINDING JANUS")
                        .font(.headline)
                        .foregroundColor(Color.white.opacity(0.85))
                        .frame(width: 200, height: 40)
                    .scaledToFill()
                }
                
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.offBlack)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 8)
                                .blur(radius: 4)
                                .offset(x: 2, y: 2)
                                .mask(RoundedRectangle(cornerRadius: 20)
                                    .fill(LinearGradient(Color.black, Color.clear))
                            )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.white.opacity(0.1), lineWidth: 8)
                                        .blur(radius: 4)
                                        .offset(x: -1, y: -1)
                                        .mask(RoundedRectangle(cornerRadius: 20)
                                            .fill(LinearGradient(Color.clear, Color.black.opacity(0.6))))
                                    
                            )
                            
                    )
                        .frame(width: 200, height: 200)
                }
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.offBlack)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 8)
                                .blur(radius: 4)
                                .offset(x: 2, y: 2)
                                .mask(RoundedRectangle(cornerRadius: 15)
                                    .fill(LinearGradient(Color.black, Color.clear))
                            )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.white.opacity(0.1), lineWidth: 8)
                                        .blur(radius: 4)
                                        .offset(x: -1, y: -1)
                                        .mask(RoundedRectangle(cornerRadius: 15)
                                            .fill(LinearGradient(Color.clear, Color.black.opacity(0.6))))
                                    
                            )
                            
                    )
                        .frame(width: 60, height: 60)
                    Image(systemName: "person.fill")
                        .scaleEffect(1.7)
                        .foregroundColor(Color.white.opacity(0.7))
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Testing_Previews: PreviewProvider {
    static var previews: some View {
        Testing()
    }
}
