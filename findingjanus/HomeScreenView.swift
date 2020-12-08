//
//  HomeScreenView.swift
//  findingjanus
//
//  Created by NoStress on 6/10/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

extension Color {
    static let offRed = Color(red: 24 / 255, green: 15 / 255, blue: 20/255)
    static let offNew = Color(red: 20 / 255, green: 18 / 255, blue: 20/255)
    static let offBlueish = Color(red: 20 / 255, green: 45 / 255, blue: 60/255)
    static let buttonBlue = Color(red: 20 / 255, green: 20 / 255, blue: 30/255)
    
}

struct HomeScreenView: View {
    var body: some View {
        ZStack{
            Color.offBlack
            LinearGradient(Color.black, Color.offBlueish.opacity(0.00001))
            
            VStack(spacing: 40) {
                VStack() {
                    HStack(spacing: 206){
                        ZStack() {
                            RoundedRectangle(cornerRadius: 100)
                                .fill(Color.offBlack)
                                .frame(width: 48, height: 48)
                                
                                
                                .shadow(color: Color.black,
                                        radius: 10, x: 10, y: 10)
                                .shadow(color: Color(#colorLiteral(red: 0.2156862745, green: 0.8352941176, blue: 0.9098039216, alpha: 1)).opacity(0.2),
                                        radius: 6, x: -4, y: -4)
                            Image(systemName: "list.dash")
                                .foregroundColor(Color.white)
                                .scaleEffect(1.2)
                        }
                        
                        ZStack() {
                            RoundedRectangle(cornerRadius: 100)
                                .fill(Color.offBlack)
                                .frame(width: 48, height: 48)
                                .shadow(color: Color.black,
                                        radius: 10, x: 10, y: 10)
                                .shadow(color: Color(#colorLiteral(red: 0.2156862745, green: 0.8352941176, blue: 0.9098039216, alpha: 1)).opacity(0.2),
                                        radius: 6, x: -4, y: -4)
                            Image(systemName: "person.2.fill")
                                .foregroundColor(Color.white.opacity(0.85))
                                .scaleEffect(1.1)
                        }
                        
                        
                    }
                    .padding(.top)
                    
                    Text("hello")
                        .foregroundColor(Color.white.opacity(0.6))
                    Text("Brian")
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
                        .shadow(color: Color.black.opacity(0.8),
                                radius: 10, x: 10, y: 10)
                        .shadow(color: Color(#colorLiteral(red: 0.2156862745, green: 0.8352941176, blue: 0.9098039216, alpha: 1)).opacity(0.08),
                                radius: 6, x: -4, y: -4)
                    
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color.offBlack)
                        .frame(width: 140, height: 140)
                        .overlay(
                            
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color(.black),lineWidth: 5)
                                .blur(radius: 4)
                                .offset(x: 39, y: -10)
                                .mask(RoundedRectangle(cornerRadius: 100)
                                        .fill(LinearGradient(Color.offBlack, Color.clear)))
                            
                        )
                        .overlay(
                            
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color(#colorLiteral(red: 0.2156862745, green: 0.8352941176, blue: 0.9098039216, alpha: 1)).opacity(0.3), lineWidth: 15)
                                .blur(radius: 4)
                                .offset(x: 2, y: -8)
                                .mask(RoundedRectangle(cornerRadius: 100)
                                        .fill(LinearGradient(Color.clear, Color.black.opacity(0.9))))
                        )
                    
                }
                VStack(alignment: .center) {
                    
                    Text("you are loved")
                        .font(.headline)
                        
                        .foregroundColor(Color.white)
                    Text("you are a beautiful being")
                        .font(.headline)
                        
                        .foregroundColor(Color.white)
                }
                .frame(width: screen.width)
                .padding(10)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.offBlack.opacity(0.8))
                        .shadow(color: Color.black,
                                radius: 10, x: 10, y: 10)
                        .shadow(color: Color(#colorLiteral(red: 0.2156862745, green: 0.8352941176, blue: 0.9098039216, alpha: 1)).opacity(0.1),
                                radius: 6, x: -4, y: -4)
                    VStack {
                        Text("never give up on life, enjoy every breath and release gratitude to the universe every day.")
                            .font(.headline)
                            .scaleEffect(0.9)
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 10)
                        Text("everything will be okay, enjoy life")
                            .font(.headline)
                            .scaleEffect(0.9)
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 10)
                        
                    }
                    
                }
                .frame(width: screen.width - 80, height: 205)
                
                HomeView()
                    .frame(width: UIScreen.screenWidth)
                
            }
        }
        .frame(width: screen.width / 2)
        .frame(height: screen.height)
        
        
        .edgesIgnoringSafeArea(.all)
        .position(x: screen.width / 2, y: screen.height / 2)
    }
}


struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
