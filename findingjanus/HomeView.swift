//
//  HomeView.swift
//  findingjanus
//
//  Created by NoStress on 4/23/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

extension Color {
    static let offBlack = Color(red: 15 / 255, green: 15 / 255, blue: 20/255)
    static let offBlue = Color(red: 20 / 255, green: 25 / 255, blue: 34 / 255)
}

extension LinearGradient {
init(_ colors: Color... ){
    self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
}
}

struct HomeView: View {
    var body: some View {
        ZStack{
        Color.offBlack
        
        
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.offBlack)
                .frame(width: 200, height: 200)
                .shadow(color: Color.black.opacity(0.7),
                        radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.1),
                        radius: 6, x: -4, y: -4)
            
            VStack {
                HStack(spacing: 40) {
                    homeButtons(icon: "house")
                    homeButtons(icon: "person.fill")
                    homeButtons(icon: "suit.heart.fill")
                    homeButtons(icon: "gear")
                        
                }
                .offset(x: 0, y:245)
            }
        
            
            
            }
}
        .edgesIgnoringSafeArea(.all)
}
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct homeButtons: View {
    var icon: String
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.offBlack)
                    .frame(width: 55, height: 55)
                    
                    .shadow(color: Color.black.opacity(0.7),
                            radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.1),
                            radius: 6, x: -4, y: -4)
                Image(systemName: icon)
                    .scaleEffect(1.8)
                    .foregroundColor(Color.white.opacity(0.7))
            }
        }
    }
}
