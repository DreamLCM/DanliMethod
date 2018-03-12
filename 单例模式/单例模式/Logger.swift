//
//  Logger.swift
//  单例模式
//
//  Created by CM on 2018/3/9.
//  Copyright © 2018年 CM. All rights reserved.
//

import Foundation

let globalLogger = Logger()

final class Logger {
    
    private var data = [String]()
    private let arrayQ = DispatchQueue(label: "arrayQ", attributes: DispatchQueue.Attributes.concurrent)
    
    
    func log(msg: String) {
//        data.append(msg)
        //  增加并发保护
        arrayQ.async {
            self.data.append(msg)
        }
        
        arrayQ.async(flags: DispatchWorkItemFlags.barrier) {
            
        }
        
    }
    
    func printLog() {
        for msg in data {
            print("Log: \(msg)")
        }
    }
}
