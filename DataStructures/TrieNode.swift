//
//  TrieNode.swift
//  DataStructures
//
//  Created by namhee kim on 1/6/16.
//  Copyright © 2016 namhee kim. All rights reserved.
//

import Foundation

class TrieNode<T: Equatable>: Node<T>{
    var char: String
    var next = Array<TrieNode<T>>()
    init(chr: String, value: T?){
        char = chr
        super.init(value: value)
    }
}
