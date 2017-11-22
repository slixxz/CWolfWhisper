//
//  Forum.swift
//  UserLoginAndRegistration
//
//  Created by student on 11/11/17.
//  Copyright © 2017 team SeaWolfWhisper. All rights reserved.
//

import UIKit

class Forum: NSObject {
    
    let forum: AnyObject
    
    init(forum: AnyObject) {
        self.forum = forum
        super.init()
    }
    
    func forumName() -> String? {
        if let f = forum["forum_name"] {
            return f as? String
        }
        return nil
    }
   
    func forumBody() -> String? {
        if let f = forum["forum_body"] {
            return f as? String
        }
        return nil
    }
    
   func numberOfLikes() -> Int?{
    if let f = forum["forum_likes"]{
        return f as? Int
        }
        return nil
    }
    
    func numberOfComments() -> Int?{
        if let f = forum["forum_comments"]{
            return f as? Int
        }
        return nil
    }
    
 
    func getImage() ->UIImage? {
        if let uriString = forum["uri"], let uri = uriString as? String {
            if let url = URL(string: uri),
                let data = try? Data(contentsOf: url),
                let image = UIImage(data: data) {
                return image
            }
        }
        return nil
    }
    
    
}
