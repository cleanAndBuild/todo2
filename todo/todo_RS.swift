//
//  todo_RS.swift
//  todo
//
//  Created by Yako Kobayashi on 2020/06/25.
//  Copyright © 2020 Step App School. All rights reserved.
//

import Foundation

class todo_RS {
    var id:Int = -1
    var title:String! = nil
    var description:String! = nil
    var priority:Int = 0
    var create_date:Date! = nil
    
    init(_ title:String,_ description:String,_ priority:Int) {
        self.title = title
        self.description = description
        self.priority = priority
        
    }
}
