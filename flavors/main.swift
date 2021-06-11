//
//  main.swift
//  flavors
//
//  Created by Mateus Rodrigues on 21/04/21.
//

import Foundation

let likesStrawberry = false

_ = Stack {
    Vanilla()
    Chocolate()
    if likesStrawberry {
        Strawberry()
    }
}


