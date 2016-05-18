//
//  DataService.swift
//  dimbook
//
//  Created by Dimitri Bocquet on 15/05/2016.
//  Copyright © 2016 Dimitri Bocquet. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    static let ds = DataService()
    
    private var _REF_BASE = Firebase(url: FIREBASE_URL)
    private var _REF_POSTS = Firebase(url: "\(FIREBASE_URL)/posts")
    private var _REF_USERS = Firebase(url: "\(FIREBASE_URL )/users")
    
    var REF_BASE: Firebase {
        return _REF_BASE
    }
    
    var REF_POSTS: Firebase {
        return _REF_POSTS
    }
    
    var REF_USERS: Firebase {
        return _REF_USERS
    }
    
    var REF_USER_CURRENT: Firebase {
        let uid = NSUserDefaults.standardUserDefaults().valueForKey(KEY_UID) as! String
        let user = Firebase(url: "\(FIREBASE_URL)").childByAppendingPath("users").childByAppendingPath(uid)
        return user!
    }
    
    func createFirebaseUser(uid: String, user: Dictionary<String, String>) {
         REF_USERS.childByAppendingPath(uid).setValue(user)
    }
}