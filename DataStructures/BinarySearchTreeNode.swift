//
//  BinarySearchTree.swift
//  DataStructures
//
//  Created by namhee kim on 1/6/16.
//  Copyright © 2016 namhee kim. All rights reserved.
//

import Foundation

class BinarySearchTreeNode<T>: Node<T>{
    var left: BinarySearchTreeNode<T>?
    var right: BinarySearchTreeNode<T>?
    init(value: T, leftNode: BinarySearchTreeNode<T>?, rightNode: BinarySearchTreeNode<T>?){
        left = leftNode
        right = rightNode
        super.init(value: value)
    }
}

