//
//  AboutView.swift
//  findingjanus
//
//  Created by NoStress on 7/11/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            Color.offBlack
            VStack(spacing: 25) {
                
                Text("About")
                    .font(.title)
                    .fontWeight(.bold)
                    .scaleEffect(1.1)
                    .foregroundColor(Color.white.opacity(0.7))
                    .frame(width: 120, height: 25)
                    .padding(.top)
                
                
                
                LongLine()
                    .frame(width: screen.width / 2)
                    .frame(height: 2)
                    .padding(.bottom)
                
                Text("I hope to create beautiful things")
                    .font(.headline)
                    .fontWeight(.bold)
                    .scaleEffect(1.1)
                    .foregroundColor(Color.white.opacity(0.7))
                
            }
            .frame(width: screen.width / 2)
            .frame(height: screen.height)
            .position(x: screen.width / 2, y: screen.height / 2)
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
