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
                ZStack {
                    VStack {
                        RoundedRectangle(cornerRadius: 100)
                                               .fill(Color.offBlack)
                                            
                                               .shadow(color: Color.black.opacity(0.8),
                                                       radius: 10, x: 10, y: 10)
                                               .shadow(color: Color.white.opacity(0.1),
                                                   radius: 6, x: -4, y: -4)
                    }
                    .frame(width: 340, height: 60)
                    LogIn()

                }
            
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
            .frame(width: 330, height: 50)
           
            
            
           
        }
    }
}
