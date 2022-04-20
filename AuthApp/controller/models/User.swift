//
//  User.swift
//  AuthApp
//
//  Created by macbro on 20/04/22.
//

import Foundation
class User{
    var name:String?=""
    var info:String?=""
    var content:String?=""
    var profilImage:String?=""
    var image:String?=""
    init(name:String,info:String,content:String,profilImage:String,image:String) {
        self.name = name
        self.info = info
        self.content = content
        self.profilImage = profilImage
        self.image = image
    }
}
