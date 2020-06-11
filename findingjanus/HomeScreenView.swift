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
                HomeView()
                    .offset(x: 0, y: 260)
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
