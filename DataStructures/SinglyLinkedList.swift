//
//  SinglyLinkedList.swift
//  DataStructures
//
//  Created by namhee kim on 1/5/16.
//  Copyright © 2016 namhee kim. All rights reserved.
//

import Foundation

struct SinglyLinkedList<T: Equatable>{
    var head = HeadNode<SinglyNode<T>>()
    
    func findNodeWithValue(value: T)-> SinglyNode<T>?{
        if var currentNode = head.next {
            while currentNode.value != value {
                if let nextNode = currentNode.next{
                    currentNode = nextNode
                }else{
                    return nil
                }
            }
            return currentNode
        }else{
            return nil
        }
    }
    
    func insertNodeWithValue(newValue newVal: T, afterNodeWithValue afterVal: T) -> Bool{
        let newNode = SinglyNode(value: newVal, nextNode: nil)
        if let currentNode = findNodeWithValue(afterVal){
            newNode.next = currentNode.next
            currentNode.next = newNode
            return true
        }else{
            return false
        }
    }
    
   
    func insertNodeWithValue(newValue newVal: T) -> SinglyNode<T>{
        let newNode = SinglyNode(value: newVal, nextNode: nil)
        self.head.next = newNode
        return newNode
    }
    
    func displayNodes(){
//        var curr = head.next
//        while let currentNode = curr {
//            print("node value: \(currentNode.value)")
//            curr = currentNode.next
//
//        }
        if var currentNode = head.next {
            print(currentNode.value)
            while currentNode.next != nil {
                currentNode = currentNode.next!
                print(currentNode.value)
            }
        }else{
            print("sll is empty!")
        }
    }
    
    func findNodeBeforeNodeWithValue(beforeValue bVal: T) -> SinglyNode<T>?{
        if var currentNode = head.next{
            while currentNode.next != nil && currentNode.next!.value != bVal{
                currentNode = currentNode.next!
            }
            if let nodeFound = currentNode.next{
                return currentNode
            }else{
                return nil
            }
        }else{
            return nil
        }
    }
    
    func removeNodeWithValue(value: T) -> Bool{
        if head.next?.value == value{
            head.next = nil
            return true
        }else{
            if var previousNode = findNodeBeforeNodeWithValue(beforeValue: value){
               previousNode.next = previousNode.next!.next
                return true
            }else{
                return false
            }
        }
    }
    
    // MARK: Stack Methods
    func pop() -> SinglyNode<T>?{
        if var currentNode = head.next{
            if currentNode.next == nil {
                head.next = nil
                return currentNode
            }
            while currentNode.next!.next != nil{
                currentNode = currentNode.next!
            }
            let lastNode = currentNode.next
            currentNode.next = nil
            return lastNode
        }else{
            return nil
        }
    }
    
    func pushNodeWithValue(newVal: T) -> SinglyLinkedList<T>{
        if var currentNode = head.next{
            let newNode = SinglyNode(value: newVal, nextNode: nil)
            while currentNode.next != nil {
                currentNode = currentNode.next!
            }
            currentNode.next = newNode
            return self
        }else{
            insertNodeWithValue(newValue: newVal)
            return self
        }
    }
    
    func findLastNode() -> SinglyNode<T>?{
        if var currentNode = head.next{
            while currentNode.next != nil{
                currentNode = currentNode.next!
            }
            return currentNode
        }else{
            return nil
        }
    }
    
    // MARK: Queue Methods
    func enqueueNodeWithValue(newVal: T)->SinglyLinkedList<T>{
        return pushNodeWithValue(newVal)
    }
    
    func dequeue() -> SinglyNode<T>? {
        if let currentNode = head.next {
            if let nextNode = currentNode.next{
                head.next = nextNode
                currentNode.next = nil
                return currentNode
            }else{
                head.next = nil
                return currentNode
            }
        }else{
            return nil
        }
    }
}













