//
//  StoreSession.swift
//  findingjanus
//
//  Created by NoStress on 12/19/20.
//  Copyright © 2020 Finding Janus. All rights reserved.
//

import SwiftUI
import Firebase
import Combine


class StoreSession: ObservableObject {
    var didChange = PassthroughSubject<StoreSession, Never>()
    var session: User? { didSet { self.didChange.send(self) }}
    var handle: AuthStateDidChangeListenerHandle?
    
    func listen () {
        handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            if let user = user {
                print ("Got user: \(user)")
                self.session = User(
                    uid: user.uid,
                    displayName: user.displayName,
                    email: user.email
                )
            } else {
                self.session = nil
            }
        }
    }
    func signUp(
        email: String,
        password: String,
        handler: @escaping AuthDataResultCallback
    ) {
        Auth.auth().createUser(withEmail: email, password: password, completion: handler)
    }
    
    func signIn(
        email: String,
        password: String,
        handler: @escaping AuthDataResultCallback
    ) {
        Auth.auth().signIn(withEmail: email, password: password, completion: handler)
    }
    
    func signOut () -> Bool {
        do {
            try Auth.auth().signOut()
            self.session = nil
            return true
        } catch {
            return false
        }
    }
    func unbind () {
        if let handle = handle {
            Auth.auth().removeStateDidChangeListener(handle)
        }
    }
}

class User {
    var uid: String
    var email: String?
    var displayName: String?
    
    init(uid:String,displayName: String?, email: String?){
        self.uid = uid
        self.email = email
        self.displayName = displayName
    }
}
