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
            VStack(spacing: 20) {
                Text("Settings")
                    .font(.title)
                    .fontWeight(.bold)
                    .scaleEffect(0.9)
                    .foregroundColor(Color.white.opacity(0.7))
                    .frame(width: 120, height: 25)
                SettingsSection(icon: "control", setting_section: "Profile")
                SettingsSection(icon: "control", setting_section: "Account")
                
                
            }
            .frame(width: screen.width / 2)
            .frame(height: screen.height + 100)
            
            
        }
        
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}

struct SettingsSection: View {
    var icon: String
    var setting_section: String
    var body: some View {
     
        VStack() {
            
            LongLine()
                .frame(width: screen.width / 2)
                .frame(height: 10)
            
            
            
            ZStack {
                RoundedRectangle(cornerRadius: 17)
                    .fill(Color.offBlack)
                    .frame(width: 360, height: 50)
                    .shadow(color: Color.black.opacity(0.4),
                            radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.1),
                            radius: 6, x: -4, y: -4)
                
                HStack {
                    Text(setting_section)
                        .font(.title)
                        .fontWeight(.bold)
                        .scaleEffect(0.8)
                        .foregroundColor(Color.white.opacity(0.7))
                        .frame(width: 120, height: 25)
                    Spacer()
                    Image(systemName: icon)
                        
                        .scaleEffect(1.3)
                        .foregroundColor(Color.white.opacity(0.7))
                        .offset(x: -20, y: -5)
                    
                    
                }
                
                
                
            }
        
            
            
        }
    }
}
