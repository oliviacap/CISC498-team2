//
//  PlantTest.swift
//  spreadsheet
//
//  Created by macuser on 11/10/21.
//

import Foundation

let date = Date()
let formatter = DateFormatter()

// Class for test details. A new one is created every time a plant is tested.
// To run the CSV function, create an instance of Tester, Plant, and PlantTest, then call PlantTest.createCSV. This should (hopefully) create a CSV file
class PlantTest {
    let tester: Tester
    let plant: Plant
    let testDate: String
    let type: String
    let data: Float
    var notes: String?
 
    init(tester: Tester, plant: Plant, type: String, data: Float) {
        self.tester = tester
        self.plant = plant
        self.type = type
        formatter.dateFormat = "dd.MM.yyyy"
        self.testDate = formatter.string(from: date)
        self.data = data
    }
 
    // Function to create the CSV for the given test. Should only be called if the user chooses not to delete it.
    func createCSV() {
        var csvString = "\("Tester Name"), \("Date"), \("Plant ID - Replicate Number"), \("Planting Date"), \("Test Type"), \("Torsional Stiffness"), \("Additional Notes")\n\n"
 
        let userInfo =  "\(tester.name), \(date), \(plant.pID), \(plant.plantDate), \(type), \(data), \(notes!)\n\n"
        
        csvString = csvString.appending(userInfo)
 
        // Temporarily commented out for future use
        // var csvString2 = "\("Angle (degrees)"),\("Force (N)"),\("Torque (N*m)")\n\n"
        
        let fileManager = FileManager.default
        do {
            let path = try fileManager.url(for: .documentDirectory, in: .allDomainsMask, appropriateFor: nil , create: false )
 
            let fileURL = path.appendingPathComponent("TestSpreadsheet.csv")
 
            try csvString.write(to: fileURL, atomically: true , encoding: .utf8)
        } catch {
            print("error creating file")
        }
    }
}
