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
            
            
            VStack(spacing: 15) {
                LogIn()
                  LogIn()
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

struct LogIn: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 100)
                .fill(Color.offBlack)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(Color.black, lineWidth: 5)
                        .blur(radius: 4)
                        .offset(x: 2, y: 2)
                        .mask(RoundedRectangle(cornerRadius: 100)
                            .fill(LinearGradient(Color.black, Color.clear))
                    )
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color.white.opacity(0.2), lineWidth: 5)
                                .blur(radius: 4)
                                .offset(x: -2, y: -2)
                                .mask(RoundedRectangle(cornerRadius: 100)
                                    .fill(LinearGradient(Color.clear, Color.black.opacity(0.6))))
                            
                    )
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color.white.opacity(0.2), lineWidth: 5)
                                .blur(radius: 4)
                                .offset(x: 2, y: 2)
                                .mask(RoundedRectangle(cornerRadius: 100)
                                    .fill(LinearGradient(Color.clear, Color.black.opacity(0.6))))
                            
                    )
                    
            )
                .frame(width: 300, height: 50)
        }
    }
}
