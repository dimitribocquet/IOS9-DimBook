//
//  Post.swift
//  dimbook
//
//  Created by Dimitri Bocquet on 17/05/2016.
//  Copyright © 2016 Dimitri Bocquet. All rights reserved.
//

import Foundation

class Post {
    private var _postDescription: String!
    private var _imageUrl: String?
    private var _likes: Int!
    private var _username: String!
    private var _postKey: String!
    
    var postDescription: String {
        return _postDescription
    }
    
    var imageUrl: String? {
        return _imageUrl
    }
    
    var likes: Int {
        return _likes
    }
    
    var username: String {
        return _username
    }
    
    init(description: String, imageUrl: String?, username: String) {
        self._postDescription = description
        self._imageUrl = imageUrl
        self._username = username
    }
    
    init(postKey: String, dictionary: Dictionary<String, AnyObject>) {
        self._postKey = postKey
        
        if let likes = dictionary["likes"] as? Int {
            self._likes = likes
        } else {
            self._likes = nil
        }
        if let imageUrl = dictionary["imageUrl"] as? String {
            self._imageUrl = imageUrl
        } else {
            self._imageUrl = nil
        }
        if let desc = dictionary["description"] as? String {
            self._postDescription = desc
        } else {
            self._postDescription = nil
        }
    }
    
}