//
//  User.swift
//  FirstAppDemo
//
//  Created by Vu Thanh Nam on 08/05/2022.
//

import Foundation


class User{
    
    
    /// Init User class
    /// - Parameters:
    ///   - name: The name of User
    ///   - age: The Age of User
    ///   - address: The address of User
    internal init(name: String, age: Int, address: String) {
        self.name = name
        self.age = age
        self.address = address
    }
    
    var name:String
    var age:Int
    var address:String
    
}
