//
//  LongLine.swift
//  findingjanus
//
//  Created by NoStress on 5/23/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

struct LongLine: View {
    var body: some View {
        ZStack {
            Color.offBlack

            ZStack {
                RoundedRectangle(cornerRadius: 100)
                    .fill(Color.offBlack)
                    .frame(width: 320, height: 3)
                    
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black,lineWidth: 4)
                            .blur(radius: 6)
                            .offset(x: 2, y: 2)
                            .mask(RoundedRectangle(cornerRadius: 100)
                                .fill(LinearGradient(Color.offBlack, Color.clear)))
                        
                )
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black,lineWidth: 4)
                            .blur(radius: 6)
                            .offset(x: -2, y: -2)
                            .mask(RoundedRectangle(cornerRadius: 100)
                                .fill(LinearGradient(Color.clear, Color.offBlack)))
                        
                )
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LongLine_Previews: PreviewProvider {
    static var previews: some View {
        LongLine()
    }
}
