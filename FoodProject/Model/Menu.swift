//
//  Menu.swift
//  FoodProject
//
//  Created by ICK on 27/10/2017.
//  Copyright © 2017 Anesa Dinarama. All rights reserved.
//

import Foundation
class Menu {
    
     var Menu = [Ushqimi]()
    
    init() {
        
        var ushqimi1 = Ushqimi(emriIUshqimit: "burger",pershkrimiIUshqimit: "MC Donald!", cmimiIUshqimit: 1,kuGjindetUshqimi: "Prishtine",kohaEpritjesUshqimit: 1,fotojaEUshqimit: "burger" )
        Menu.append(ushqimi1)
        
        Menu.append(Ushqimi(emriIUshqimit: "doner",pershkrimiIUshqimit: "Doner Amerikan!", cmimiIUshqimit: 2,kuGjindetUshqimi: "Prishtine",kohaEpritjesUshqimit: 1,fotojaEUshqimit: "doner" ))
        Menu.append(Ushqimi(emriIUshqimit: "pizza",pershkrimiIUshqimit: "Pizza Italiane!", cmimiIUshqimit: 2,kuGjindetUshqimi: "Prishtine",kohaEpritjesUshqimit: 1,fotojaEUshqimit: "pizza" ))
        Menu.append(Ushqimi(emriIUshqimit: "steak",pershkrimiIUshqimit: "Steak i pjekur!", cmimiIUshqimit: 4,kuGjindetUshqimi: "Prishtine",kohaEpritjesUshqimit: 1,fotojaEUshqimit: "steak" ))
    }
}
