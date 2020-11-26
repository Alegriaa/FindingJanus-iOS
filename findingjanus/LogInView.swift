//
//  LogInView.swift
//  findingjanus
//
//  Created by NoStress on 4/27/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI

struct LogInView: View {
    // to automatically render our view depending on the stored content
    // connecting this to our view
    // State: A persistnet value of a given type, through which a view reads and monitors the value
    @State var username: String = ""
    @State var password: String = ""
    @State var authenticationFailed: Bool = false
    @State var authenticationSucceeded: Bool = false
    
    
    var body: some View {
        ZStack{
            Color.offBlack
            VStack(spacing: 40) {
                ZStack {
                    RoundedRectangle(cornerRadius: 100)
                       
                        .fill(Color.offBlack)
                        .frame(width: 220)
                        //.padding(.bottom, 52)
                        
                        .frame(height: 220)
                        .shadow(color: Color.black.opacity(0.7),
                                radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.1),
                                radius: 6, x: -4, y: -4)
                    VStack {
                        Text("focus")
                            
                            .font(.headline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white.opacity(0.8))
                            .frame(width: 400, height: 100)
                        Image(systemName: "suit.heart.fill")
                            .scaleEffect(3)
                            .foregroundColor(Color.white.opacity(0.7))
                    }
                }
                
                ZStack {
                   
                    VStack(spacing: 25) {
                        
                        LongLine()
                            .frame(width: 380, height: 3)
                            .offset(x: 0, y: -20)
                        
                        ZStack {
                            TextBubble()
                                .frame(width: 290, height: 40)
                         
                            // to bind objects to a State property, we have to insert the properties name with a dollar sign.
                            UsernameTextField(username: $username)
                        }
                    
                    LongLine()
                        .frame(width: 330, height: 3)
                    
                        ZStack {
                            TextBubble()
                                .frame(width: 310, height: 40)
                            PasswordSecureField(password: $password)
                        }
                        if authenticationFailed {
                            Text("incorrect login information")
                                .foregroundColor(.red)
                        }
                    
                    Text("Forgot Password?")
                        .font(.body)
                        .foregroundColor(Color.white.opacity(0.8))
                        .padding(.top)
                        .scaleEffect(0.8)
                        .frame(width: 200, height: 30, alignment: .trailing)
                        .offset(x: 70, y: -20)
                    LongLine()
                        .frame(width: 380, height: 3)
                        ZStack{
                            TextBubble()
                              
                            Text("login")
                                .foregroundColor(.white)
                                .padding()
                        Button(action: {print("Button Tapped")}){
                          //  HomeScreenView()
                        }
                        }
                        .frame(width: 100, height: 40)
                    }
                    if authenticationSucceeded {
                    Text("Login Succeeded")
                        .foregroundColor(.blue)
                        .font(.headline)
                        .frame(width: 200, height: 60)
                        .background(Color.white)
                        .cornerRadius(20)
                        .offset(y: -10)
                        .animation(Animation.default)
                        
                    }
                }
               
               
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}


struct UsernameTextField: View {
    // Bindings are used for creating a data connection between a view and its source of data.
    // from our outsourced UsernameTextField and its source, our username state.
    // apple - use a binding to create a two-way connection between a view and its underlying model.
    @Binding var username: String
    var body: some View {
        TextField("username" , text: $username)
            .frame(width: 200, height: 40)
            .font(.headline)
            .foregroundColor(Color.red)
            .scaledToFill()
            .offset(x: -50, y: 0)
    }
}

struct PasswordSecureField: View {
    @Binding var password: String
    var body: some View {
        SecureField("password", text: $password)
            .font(.headline)
            .foregroundColor(Color.white.opacity(0.7))
            .frame(width: 200, height: 40)
            .scaledToFill()
            .offset(x: -50, y: 0)
    }
}
