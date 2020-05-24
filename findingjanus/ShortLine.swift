//
//  ShortLine.swift
//  findingjanus
//
//  Created by NoStress on 5/23/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

struct ShortLine: View {
    var body: some View {
        
    
        
        ZStack {
            Color.offBlack
            ZStack {
                
                RoundedRectangle(cornerRadius: 100)
                    .fill(Color.offBlack)
                    
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black,lineWidth: 4)
                            .blur(radius: 4)
                            .offset(x: 2, y: 2)
                            .mask(RoundedRectangle(cornerRadius: 100)
                                .fill(LinearGradient(Color.offBlack, Color.clear)))
                        
                )
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black,lineWidth: 4)
                            .blur(radius: 4)
                            .offset(x: -2, y: -2)
                            .mask(RoundedRectangle(cornerRadius: 100)
                                .fill(LinearGradient(Color.clear, Color.offBlack)))
                        
                )
            }
            .frame(width: 300, height: 3)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ShortLine_Previews: PreviewProvider {
    static var previews: some View {
        ShortLine()
    }
}
