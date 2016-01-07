//
//  main.swift
//  DataStructures
//
//  Created by namhee kim on 1/5/16.
//  Copyright © 2016 namhee kim. All rights reserved.
//

import Foundation

/* Binary Search Tree
var bst = BinarySearchTree<Int>()
bst.insertNodeWithValue(10)
//print("root value: ", bst.root!.value)
bst.insertNodeWithValue(7)
//print("left of root: ", bst.root!.left!.value)
bst.insertNodeWithValue(8)
//print("root left right", bst.root!.left!.right!.value)
bst.insertNodeWithValue(15)
//print("root right", bst.root!.right!.value)
//print("preOrder traverse")
//bst.preOrder(bst.root)
//print("postOrder traverse")
//bst.postOrder(bst.root)
//print("inOrder traverse")
//bst.inOrder(bst.root)
*/
/* Trie
var trie = Trie<String>(character: "A")
trie.insert("ANDREW", value: "awesome")
trie.insert("ANDY", value: "amazing")
trie.insert("ANT", value: "what")
print(trie.get("ANDY"))
print(trie.get("ANDIES"))
*/
/* Singly Linked List

var sll = SinglyLinkedList<Int>()
sll.insertNodeWithValue(newValue: 0)
sll.insertNodeWithValue(newValue: 1, afterNodeWithValue: 0)
sll.insertNodeWithValue(newValue: 2, afterNodeWithValue: 1)
sll.displayNodes()
//sll.removeNodeWithValue(1)
//sll.displayNodes()
print("last node: ", sll.findLastNode()!.value)
print("pop value", sll.pop()!.value)
print("last node after pop: ", sll.findLastNode()!.value)
print("pop value", sll.pop()!.value)
print("last node after pop: ", sll.findLastNode()!.value)
print("pop value", sll.pop()!.value)
sll.displayNodes()
sll.pushNodeWithValue(100)
print("after push 100")
sll.displayNodes()

sll.pushNodeWithValue(200)
print("after push 200")
sll.displayNodes()
*/


/*hash.simplePut("Februray")
hash.simplePut("April")
hash.simplePut("January")
print(hash.simpleGet("January"))
print(hash.simpleGet("Acorn"))
print(hash.simpleGet("April")) */

var hash = HashTable<SinglyLinkedList<String>>()
hash.linkPut("Ant")
hash.linkPut("Andy")
hash.linkPut("Andrew")
hash.linkPut("Bee")
hash.linkPut("Beetle")
print("***Hashed Andy *** ", hash.linkGet("Andy")!.value)
print("***Hashed Bong *** ", hash.linkGet("Bong"))
