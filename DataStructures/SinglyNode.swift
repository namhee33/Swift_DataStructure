//
//  SinglyNode.swift
//  DataStructures
//
//  Created by namhee kim on 1/5/16.
//  Copyright © 2016 namhee kim. All rights reserved.
//

import Foundation

class SinglyNode<T>: Node<T>{
    var next: SinglyNode<T>?
    init(value: T, nextNode: SinglyNode<T>?){
        self.next = nextNode
        super.init(value: value)
    }
}

