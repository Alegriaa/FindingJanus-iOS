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
