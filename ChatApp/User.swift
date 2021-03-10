//
//  User.swift
//  ChatApp
//
//  Created by minato on 2021/03/10.
//

import Foundation

//struct Data{
//  // name
//  var name: String = "a"
//  // age
//  var age: Int = 20
//  // スケジュールの終了時間
//  var city: String = "東京"
//
//  init(name : String , age : Int , city : String){
//    self.name = name
//    self.age = age
//    self.city = city
//  }
//}
struct Data {
    private(set) public var name : String
    private(set) public var age : String
    private(set) public var city : String
    
    init(name: String, age: String, city: String) {
        self.name = name
        self.age = age
        self.city = city
    }
}
