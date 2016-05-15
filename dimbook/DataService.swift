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
    
    private var _REF_BASE = Firebase(url: "https://ios-facebook-app.firebaseio.com")
    
    var REF_BASE: Firebase {
        return _REF_BASE
    }
}