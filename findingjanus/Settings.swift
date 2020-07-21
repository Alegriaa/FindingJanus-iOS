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
            VStack(spacing: 25) {
                
                Text("Settings")
                    .font(.title)
                    .fontWeight(.bold)
                    .scaleEffect(1.1)
                    .foregroundColor(Color.white.opacity(0.7))
                    .frame(width: 120, height: 25)
                    .offset(x: -90, y: 5)
                    .padding(.top)
                
                
                
                
                LongLine()
                    .frame(width: screen.width / 2)
                    .frame(height: 0.1)
                LongLine()
                    .frame(width: screen.width / 2)
                    .frame(height: 0.1)
                    .offset(x: 0, y: -15)
                
                SettingsSection(icon: "control", setting_section: "Notifications")
                SettingsSection(icon: "control", setting_section: "Profile")
                SettingsSection(icon: "control", setting_section: "Account")
                SettingsSection(icon: "control", setting_section: "Help")
                SettingsSection(icon: "control", setting_section: "About")
                VStack {
                    HomeView()
                        .frame(width: screen.width)
                        .frame(height: 80)
                }
                    
                .padding(.top, 100)
                
                
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        .frame(width: screen.width)
        .frame(height: screen.height)
        
        
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
            
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.offBlack)
                    .frame(width: 355, height: 45)
                    .shadow(color: Color.black.opacity(0.4),
                            radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.1),
                            radius: 6, x: -4, y: -4)
                
                HStack() {
                    Text(setting_section)
                        .font(.title)
                        .fontWeight(.bold)
                        .scaleEffect(0.8)
                        .foregroundColor(Color.white.opacity(0.7))
                        
                        .frame(width: 170, height: 25)
                    Spacer()
                    Image(systemName: icon)
                        
                        .scaleEffect(1.3)
                        .foregroundColor(Color.white.opacity(0.7))
                        .rotationEffect(.degrees(90))
                        .offset(x: -20, y: 2)
                }
            }
            
            LongLine()
                .frame(width: screen.width / 2)
                .frame(height: 0.5)
            LongLine()
                .frame(width: screen.width / 2)
                .frame(height: 0.5)
            
            
            
        }
    }
}
