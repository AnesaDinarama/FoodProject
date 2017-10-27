//
//  Ushqimi.swift
//  FoodProject
//
//  Created by ICK on 27/10/2017.
//  Copyright © 2017 Anesa Dinarama. All rights reserved.
//

import Foundation
class Ushqimi
{
    let emri:String
    let pershkrimi:String
    let cmimi:Double
    let kuGjindet:String
    let kohaEPritjes:Int
    var fotoja:String
    
    init(emriIUshqimit:String,pershkrimiIUshqimit:String,cmimiIUshqimit:Double,kuGjindetUshqimi:String,kohaEpritjesUshqimit:Int,fotojaEUshqimit:String) {
        
        
            emri = emriIUshqimit
        pershkrimi = pershkrimiIUshqimit
        cmimi = cmimiIUshqimit
        kuGjindet = kuGjindetUshqimi
        kohaEPritjes = kohaEpritjesUshqimit
        fotoja = fotojaEUshqimit
        
        }
}
