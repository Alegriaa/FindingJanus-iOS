//
//  HomeView.swift
//  findingjanus
//
//  Created by NoStress on 4/23/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//
// You can do this, just keep working hard

import SwiftUI

extension Color {
    static let offBlack = Color(red: 15 / 255, green: 15 / 255, blue: 20/255)
     static let off = Color(red: 15 / 255, green: 16 / 255, blue: 15/255)
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
        
            
//            RoundedRectangle(cornerRadius: 20)
//                .fill(Color.offBlack)
//                .frame(width: UIScreen.screenWidth - 28, height: 80)
//                .shadow(color: Color.black.opacity(0.7),
//                        radius: 10, x: 10, y: 10)
//                .shadow(color: Color.white.opacity(0.1),
//                        radius: 6, x: -4, y: -4)
            
            HStack(spacing: 30) {
                
                homeButtons(icon: "house")
                    
                homeButtons(icon: "person.fill")
                homeButtons(icon: "suit.heart.fill")
                homeButtons(icon: "gear")

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
     
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.offBlack)
                    .frame(width: 46, height: 46)
                    
                    .shadow(color: Color.black.opacity(0.8),
                            radius: 10, x: 10, y: 10)
                     .shadow(color: Color(#colorLiteral(red: 0.2156862745, green: 0.8352941176, blue: 0.9098039216, alpha: 1)).opacity(0.2),
                            radius: 6, x: -4, y: -4)
                Image(systemName: icon)
                    .scaleEffect(1.4)
                    .foregroundColor(Color(#colorLiteral(red: 0.2156862745, green: 0.8352941176, blue: 0.9098039216, alpha: 1)).opacity(0.7))

            }
        
    }
}
