//
//  GeoModel.swift
//  GeoChat
//
//  Created by Joshua Wagner on 11/11/17.
//  Copyright © 2017 Joshua Wagner. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class GeoModel{
    static var posts = [Post]()
    
    static func getAll(completion:(([Post])->())?=nil){
        self.posts = [Post]()
        Alamofire.request("http://10.199.10.236:5000/allentrys").responseJSON{
            response in
            switch response.result{
            case .success(let value):
                let unpacked = JSON(value)
                print(unpacked)
                for i in 0..<unpacked["results"].count{
                    print(unpacked["results"][i].stringValue)
                    let newPost = Post()
                    newPost.username = unpacked["results"][i][0].stringValue
                    newPost.entry_text = unpacked["results"][i][1].stringValue
                    self.posts.append(newPost)
                }
                completion?(posts)
                print("in response")
                print(self.posts)
                for post in posts{
                    print(post.username)
                }
                
                break
            case .failure(let error):
                print(error)
                break
            }
        }
        
    }
    
    static func getUser(userID:Int, completion:(([Post])->())?=nil){
        let params = ["user_id":String(userID)]
        self.posts = [Post]()
        Alamofire.request("http://10.199.10.236:5000/userentrys", method: .post, parameters: params, encoding: URLEncoding.httpBody).responseJSON{
            response in
            switch response.result{
            case .success(let value):
                let unpacked = JSON(value)
                print(unpacked)
                for i in 0..<unpacked["results"].count{
                    print(unpacked["results"][i].stringValue)
                    let newPost = Post()
                    newPost.username = unpacked["results"][i][0].stringValue
                    newPost.entry_text = unpacked["results"][i][1].stringValue
                    self.posts.append(newPost)
                }
                completion?(posts)
                print("in response")
                print(self.posts)
                for post in posts{
                    print(post.username)
                }
                
                break
            case .failure(let error):
                print(error)
                break
            }
        }
    }
    
    
    static func getGroup(groupID: Int, completion: (([Post])->())?=nil){
        let params = ["group_id":String(groupID)]
        self.posts = [Post]()
        Alamofire.request("http://10.199.10.236:5000/groupentrys", method: .post, parameters: params, encoding: URLEncoding.httpBody).responseJSON{
            response in
            switch response.result{
            case .success(let value):
                let unpacked = JSON(value)
                print(unpacked)
                for i in 0..<unpacked["results"].count{
                    print(unpacked["results"][i].stringValue)
                    let newPost = Post()
                    newPost.username = unpacked["results"][i][0].stringValue
                    newPost.entry_text = unpacked["results"][i][1].stringValue
                    self.posts.append(newPost)
                }
                completion?(posts)
                print("in response")
                print(self.posts)
                for post in posts{
                    print(post.username)
                }
                
                break
            case .failure(let error):
                print(error)
                break
            }
        }
    }
    
    static func getGroups(){
        
    }
    
    static func makePost(){
        
    }
    
    static func subscribe(){
        
    }
    
    
}
