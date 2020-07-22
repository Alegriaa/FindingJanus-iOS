//
//  ReflectionView.swift
//  findingjanus
//
//  Created by NoStress on 7/20/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

struct ReflectionView: View {
    var body: some View {
        ZStack {
            Color.offBlack
            VStack(spacing: 20){
                HStack(spacing: 206){
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
                    
                    
                }
                .padding(.top)
                .padding(30)
                Text("Finding Janus")
                    .foregroundColor(Color.white.opacity(0.7))
                    .font(.title).scaleEffect(0.75)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.offBlack)
                    .frame(width: screen.width - 50)
                    .frame(height: 400)
                    .shadow(color: Color.black.opacity(0.7),
                            radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.1),
                            radius: 6, x: -4, y: -4)
                //
                //                ZStack {
                //                    RoundedRectangle(cornerRadius: 20)
                //                        .fill(Color.offBlack)
                //                        .overlay(
                //                            RoundedRectangle(cornerRadius: 20)
                //                                .stroke(Color.black, lineWidth: 8)
                //                                .blur(radius: 4)
                //                                .offset(x: 2, y: 2)
                //                                .mask(RoundedRectangle(cornerRadius: 20)
                //                                    .fill(LinearGradient(Color.black, Color.black.opacity(0.8)))
                //                            )
                //                                .overlay(
                //                                    RoundedRectangle(cornerRadius: 20)
                //                                        .stroke(Color.black.opacity(0.05), lineWidth: 8)
                //                                        .blur(radius: 4)
                //                                        .offset(x: -1, y: -1)
                //                                        .mask(RoundedRectangle(cornerRadius: 20)
                //                                            .fill(LinearGradient(Color.clear, Color.black.opacity(0.7))))
                //
                //                            )
                //
                //                    )
                //                        .frame(width: screen.width - 50)
                //                        .padding(.all)
                //                        .frame(height: 400)
                //
                //                }
                HomeView()
                    .frame(width: UIScreen.screenWidth)
                    .frame(height: 80)
                    .offset(x: 0, y: 0)
                
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ReflectionView_Previews: PreviewProvider {
    static var previews: some View {
        ReflectionView()
    }
}
