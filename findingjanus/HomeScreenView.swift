//
//  HomeScreenView.swift
//  findingjanus
//
//  Created by NoStress on 6/10/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack{
            Color.offBlack
            VStack {
                HStack(spacing: 25) {
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.offBlack)
                        .frame(width: 90)
                        .frame(height: 90)
                        .shadow(color: Color.black.opacity(0.7),
                                radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.1),
                                radius: 6, x: -4, y: -4)
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.offBlack)
                        .frame(width: 90)
                        .frame(height: 90)
                        .shadow(color: Color.black.opacity(0.7),
                                radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.1),
                                radius: 6, x: -4, y: -4)
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.offBlack)
                        .frame(width: 90)
                        .frame(height: 90)
                        .shadow(color: Color.black.opacity(0.7),
                                radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.1),
                                radius: 6, x: -4, y: -4)
                }
            
            HomeView()
                
                .frame(width: UIScreen.screenWidth)
                .frame(height: 50)
                
                
                
        }
        }
           .edgesIgnoringSafeArea(.all)
    }
 
}


struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
