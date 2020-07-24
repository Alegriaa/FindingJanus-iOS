//
//  TextBubble.swift
//  findingjanus
//
//  Created by NoStress on 5/30/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

struct TextBubble: View {
    var body: some View {
        ZStack {
            Color.offBlack
            
            
            
            RoundedRectangle(cornerRadius: 100)
                .fill(Color.offBlack)
                .frame(width: 332, height: 50)
                .shadow(color: Color.black.opacity(0.4),
                        radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.1),
                        radius: 6, x: -4, y: -4)
            
            RoundedRectangle(cornerRadius: 100)
                .fill(Color.white.opacity(0.008))
                .frame(width: 310, height: 30)
                .shadow(color: Color.black.opacity(0.4),
                        radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.1),
                        radius: 6, x: -4, y: -4)
            
        }
            
            
        .edgesIgnoringSafeArea(.all)
        
        
    }
    
    
    
}

struct TextBubble_Previews: PreviewProvider {
    static var previews: some View {
        TextBubble()
    }
}
