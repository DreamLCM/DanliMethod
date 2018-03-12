//
//  BackupServer.swift
//  单例模式
//
//  Created by CM on 2018/3/9.
//  Copyright © 2018年 CM. All rights reserved.
//

import Foundation

class DataItem {
    enum ItemType: String {
        case Email = "Email Address"
        case Phone = "Telephone Number"
        case Card = "Credit Card Number"
    }
    
    var type: ItemType
    var data: String
    
    init(type: ItemType, data: String) {
        self.type = type
        self.data = data
    }
}

final class BackupServer {
    let name: String
    private var data = [DataItem]()
    let logger = Logger()
    
    private init(name: String) {
        self.name = name
        globalLogger.log(msg: "Created new server \(name)")
    }
    
    func backup(item: DataItem) {
        data.append(item)
//        logger.log(msg: "\(name) backed up item of type \(item.type.rawValue)")
        globalLogger.log(msg: "\(name) backed up item of type \(item.type.rawValue)")
    }
    
    func getData() -> [DataItem] {
        return data
    }
    
    
    /*
     *  结构体和static存储变量的实现方式确保该段代码只会创建一个BackupServer实例
     */
    class var server: BackupServer {
        //  定义一个结构体
        struct SingletonWrapper {
            //  static存储属性
            static let singleton = BackupServer(name: "MainServer")
        }
        return SingletonWrapper.singleton
    }
    
    
    
}




