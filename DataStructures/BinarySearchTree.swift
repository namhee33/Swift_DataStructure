//
//  BinarySearchTree.swift
//  DataStructures
//
//  Created by namhee kim on 1/6/16.
//  Copyright © 2016 namhee kim. All rights reserved.
//

import Foundation

struct BinarySearchTree<T: Comparable>{
    var root: BinarySearchTreeNode<T>? = nil
    
    mutating func insertNodeWithValue(val: T){
        root = insertNodeFor(root, value: val)
    }
    
    func insertNodeFor(node: BinarySearchTreeNode<T>?, value: T) -> BinarySearchTreeNode<T>{
        if node == nil {
            return BinarySearchTreeNode<T>(value: value, leftNode: nil, rightNode:nil)
        }else{
            if value < node!.value{
                node!.left = insertNodeFor(node!.left, value: value)
            }else{
                node!.right = insertNodeFor(node!.right, value: value)
            }
            return node!
        }
    }
    
    func preOrder(node: BinarySearchTreeNode<T>?){
        if node == nil {
            return
        }else{
            print(node!.value)
            preOrder(node!.left)
            preOrder(node!.right)
        }
    }
    
    func postOrder(node: BinarySearchTreeNode<T>?){
        if node == nil{
            return
        }else{
            postOrder(node!.left)
            postOrder(node!.right)
            print(node!.value)
        }
    }
    
    func inOrder(node: BinarySearchTreeNode<T>?){
        if node == nil {
            return
        }else{
            inOrder(node!.left)
            print(node!.value)
            inOrder(node!.right)
        }
    }
}