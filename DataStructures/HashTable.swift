//
//  HashTable.swift
//  DataStructures
//
//  Created by namhee kim on 1/6/16.
//  Copyright © 2016 namhee kim. All rights reserved.
//

import Foundation

struct HashTable<T>{
    var table = Array<T?>()
    var stringBuilt = false
    var linkBuilt = false
    
    func stringToAscii(str: String) -> Int{
        let string = str as NSString
        return Int(string.characterAtIndex(0))
    }
    
    func simpleHash(data: String) -> Int {
        return stringToAscii(data) - 65
    }
}

extension HashTable{
    /*
    mutating func simplePut(data: String){
        if stringBuilt == false {
            for _ in 0...25 {
                table.append(nil)
            }
            stringBuilt = true
        }
        table[simpleHash(data.uppercaseString)] = data as? T
    }
    func simpleGet(data: String) -> String? {
        if let saved = table[simpleHash(data.uppercaseString)] {
            return saved as? String
        }
        return nil
    } */
    
    mutating func linkPut(data: String){
        if linkBuilt == false{
            for _ in 0...25 {
                table.append(SinglyLinkedList<String>() as? T)
            }
            linkBuilt = true
            
        }
        let sll = table[simpleHash(data.uppercaseString)] as! SinglyLinkedList<String>
        
        if let _ = sll.head.next { //push
            sll.pushNodeWithValue(data)
        }else{ //head is nil, then the first node
            sll.insertNodeWithValue(newValue: data)
        }
    }
    
    func linkGet(data: String) -> SinglyNode<String>?{
        if let saved_sll = table[simpleHash(data.uppercaseString)]{
            let current_sll = saved_sll as! SinglyLinkedList<String>
            print("display all nodes from linkGet")
            current_sll.displayNodes()
            return current_sll.findNodeWithValue(data)
        }
        return nil
    }
}