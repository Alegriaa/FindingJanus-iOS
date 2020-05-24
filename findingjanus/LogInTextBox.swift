//
//  LogInTextBox.swift
//  findingjanus
//
//  Created by NoStress on 5/23/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

struct LogInTextBox: View {
       
    var body: some View {
        ZStack {
             Color.offBlack
 
                RoundedRectangle(cornerRadius: 100)
                    .fill(Color.offBlack)
                      .frame(width: 360, height: 50)
                    .shadow(color: Color.black.opacity(0.8),
                            radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.1),
                            radius: 6, x: -4, y: -4)
                ZStack {
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color.offBlack)
                         .frame(width: 350, height: 40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color.black,lineWidth: 5)
                                .blur(radius: 4)
                                .offset(x: 2, y: 2)
                                .mask(RoundedRectangle(cornerRadius: 100)
                                    .fill(LinearGradient(Color.offBlack, Color.clear)))
                            
                    )
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color.black, lineWidth: 6)
                                .blur(radius: 4)
                                .offset(x: -2, y: -2)
                                .mask(RoundedRectangle(cornerRadius: 100)
                                    .fill(LinearGradient(Color.clear, Color.black.opacity(0.9))))
                    )
                    
                }
             
              
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LogInTextBox_Previews: PreviewProvider {
    static var previews: some View {
        LogInTextBox()
    }
}
