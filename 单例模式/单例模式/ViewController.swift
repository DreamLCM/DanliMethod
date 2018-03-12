//
//  ViewController.swift
//  单例模式
//
//  Created by CM on 2018/3/9.
//  Copyright © 2018年 CM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var server = BackupServer(name: "Server#1")
//        server.backup(item: DataItem(type: DataItem.ItemType.Email, data: "joe@example.com"))
//        server.backup(item: DataItem(type: DataItem.ItemType.Phone, data: "555-123-1133"))
//
//        var otherServer = BackupServer(name: "Server#2")
//        otherServer.backup(item: DataItem(type: DataItem.ItemType.Email, data: "bob@example.com"))
        
        
        
//        let logger = Logger()
//        let server = BackupServer(name: "Server#1")
//        server.backup(item: DataItem(type: DataItem.ItemType.Email, data: "joe@example.com"))
//        server.backup(item: DataItem(type: DataItem.ItemType.Phone, data: "555-123-1133"))
//
//        logger.log(msg: "Backed up 2 items to \(server.name)")
//
//        let otherServer = BackupServer(name: "Server#2")
//        otherServer.backup(item: DataItem(type: DataItem.ItemType.Email, data: "bob@example.com"))
//        logger.log(msg: "Backed up 1 item to \(otherServer.name)")
//
//        logger.printLog()
        
        
//        let server = BackupServer(name: "Server#1")
//        server.backup(item: DataItem(type: DataItem.ItemType.Email, data: "joe@example.com"))
//        server.backup(item: DataItem(type: DataItem.ItemType.Phone, data: "555-123-1133"))
//
//        globalLogger.log(msg: "Backed up 2 items to \(server.name)")
//
//        let otherServer = BackupServer(name: "Server#2")
//        otherServer.backup(item: DataItem(type: DataItem.ItemType.Email, data: "bob@example.com"))
//        globalLogger.log(msg: "Backed up 1 item to \(otherServer.name)")
//
//        globalLogger.printLog()
        
        
//        let server = BackupServer.server
//
//        server.backup(item: DataItem(type: DataItem.ItemType.Email, data: "joe@example.com"))
//        server.backup(item: DataItem(type: DataItem.ItemType.Phone, data: "555-123-1133"))
//
//        globalLogger.log(msg: "Backed up 2 items to \(server.name)")
//
//        let otherServer = BackupServer.server
//        otherServer.backup(item: DataItem(type: DataItem.ItemType.Email, data: "bob@example.com"))
//        globalLogger.log(msg: "Backed up 1 item to \(otherServer.name)")
//
//        globalLogger.printLog()
        
        let group = DispatchGroup()
        group.notify(queue: DispatchQueue.main) {
            
        }

        let myQueue = DispatchQueue(label: "my.queue", attributes: DispatchQueue.Attributes.concurrent)
        let workItem = DispatchWorkItem {
            sleep(1)
            print("done")
        }

        myQueue.async(execute: workItem)
        print("before waiting")
        workItem.wait()
        print("after waiting")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

