//
//  LinkedList.swift
//  test
//
//  Created by Palash Roy on 7/2/23.
//

import Foundation

class Node {
    var value: Int
    var next: Node?
    init(value: Int) {
        self.value = value
    }
}

class LinkedList {
    var root: Node?
    
    func insertToEnd(value: Int) {
        let node = Node(value: value)
        if root == nil {
            root = node
            return
        }
        var temp = root
        while temp?.next != nil {
            temp = temp?.next
        }
        temp?.next = node
    }
    
    func insertToFront(value: Int) {
        let node = Node(value: value)
        node.next = root
        root = node
    }
    
    func removeValue(value: Int) {
        var temp = root
        if temp?.value == value {
            root = root?.next
            return
        }
        while temp?.next != nil {
            if temp?.next?.value == value {
                temp?.next = temp?.next?.next
            }
            temp = temp?.next
        }
    }
    
    func printLl() {
        var temp = root
        while temp != nil {
            print(temp?.value ?? 0)
            temp = temp?.next
        }
        print("*********************")
    }
    
}
