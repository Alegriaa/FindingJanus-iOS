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
                    
                    .offset(x: -100, y: 55)
                    .padding(.bottom, 100)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .frame(width: screen.width)
        .frame(height: screen.height)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
