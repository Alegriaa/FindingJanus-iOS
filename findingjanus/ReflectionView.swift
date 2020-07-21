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
            VStack{
                Text("Finding Janus")
                    .foregroundColor(Color.white.opacity(0.7))
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.offBlack)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 8)
                                .blur(radius: 4)
                                .offset(x: 2, y: 2)
                                .mask(RoundedRectangle(cornerRadius: 20)
                                    .fill(LinearGradient(Color.black, Color.black.opacity(0.4)))
                            )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black.opacity(0.05), lineWidth: 8)
                                        .blur(radius: 4)
                                        .offset(x: -1, y: -1)
                                        .mask(RoundedRectangle(cornerRadius: 20)
                                            .fill(LinearGradient(Color.clear, Color.black.opacity(0.7))))
                                    
                            )
                            
                    )
                        .frame(width: screen.width - 50)
                        .padding(.all)
                        .frame(height: 400)
                    
                }
                HomeView()
                    .frame(width: UIScreen.screenWidth)
                    .frame(height: 80)
                
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
