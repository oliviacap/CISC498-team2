//
//  Plant.swift
//  spreadsheet
//
//  Created by macuser on 11/10/21.
//

import Foundation

// Class for individual plants, created and possibly saved all into one large array. Numeric ID currently used as placeholder for identifier, can later be replaced, or possibly add QR code as a possible functionality.
class Plant {
    var pID: Int
    var plantDate: String
 
    init(pID: Int, plantDate: String) {
        self.pID = pID
        self.plantDate = plantDate
    }
    
    init(pID: Int) {
        self.pID = pID
        formatter.dateFormat = "dd.MM.yyyy"
        self.plantDate = formatter.string(from: date)
    }
}
