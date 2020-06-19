//
//  Settings.swift
//  findingjanus
//
//  Created by NoStress on 6/18/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        ZStack {
            Color.offBlack
            VStack {
                Text("Settings")
                    .font(.title)
                    .fontWeight(.bold)
                    .scaleEffect(0.9)
                    .foregroundColor(Color.white.opacity(0.7))
                    .frame(width: 120, height: 25)
                    .offset(x: -100, y: -320)
                
                LongLine()
                    .frame(width: screen.width)
                    .frame(height: 10)
                    .offset(x: 0, y: -280)
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 17)
                        .fill(Color.offBlack)
                        .frame(width: 360, height: 50)
                        .shadow(color: Color.black.opacity(0.4),
                                radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.1),
                                radius: 6, x: -4, y: -4)
                    
                    HStack {
                        Text("Account")
                            .font(.title)
                            .fontWeight(.bold)
                            .scaleEffect(0.7)
                            .foregroundColor(Color.white.opacity(0.7))
                            .frame(width: 120, height: 25)
                        Text(">")
                            .font(.title)
                            .fontWeight(.bold)
                            .scaleEffect(0.7)
                            .foregroundColor(Color.white.opacity(0.7))
                        
                    }
                    
                }
                 .offset(x: 0, y: -250)
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
