//
//  PlantIDView.swift
//  maize-master
//
//  Created by Madison on 10/7/21.
//

import Foundation
import SwiftUI
import CodeScanner

struct PlantIDView: View {
    @State private var isShowingScanner = false;
    var body: some View {
        VStack {
            Text("Plant ID Scanner")
                .fontWeight(.bold)
                .font(.largeTitle)
                .padding(.top, 50)
                .multilineTextAlignment(.center)
            PlantIDScannerView();
            }
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        .background(Color.green.opacity(0.8)).edgesIgnoringSafeArea(.all)
        }
}

struct PlantIDView_Previews: PreviewProvider {
    static var previews: some View {
        PlantIDView();
    }
}


struct PlantIDScannerView: View {
    @State var isPresentingScanner = false
    @State var scannedCode: String?
    @State var plantSelection: Int? = nil

    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                if self.scannedCode != nil {
                        Text("Plant ID Detected: \(scannedCode!)")
                            .fontWeight(.bold)
                            .font(.title)
                            .multilineTextAlignment(.center)
                        NavigationLink(destination: DataView(), tag: 6, selection: $plantSelection) {
                                Button("select plant for testing") {
                                    self.plantSelection = 6
                                }
                            }
                }
                else {
                Button("Scan plant QR Code") {
                    self.isPresentingScanner = true;
                }
                .sheet(isPresented: $isPresentingScanner) {
                    self.scannerSheet
                }
                    Text("or")
                    Text("manually input plant ID number")
                    manualplantIDField()
                }
            }
        }
    }

    var scannerSheet : some View {
        CodeScannerView(
            codeTypes: [.qr],
            completion: { result in
                if case let .success(code) = result {
                    self.scannedCode = code
                    self.isPresentingScanner = false
                }
            }
        )
    }
    
//        CodeScannerView(codeTypes: [.qr], simulatedData: "Plant ID Test Result") {
//            result in
//            switch result {
//            case .success(let code):
//                print("Found code: \(code)")
//                self.plantCode = code;
//                PlantValidationView()
//                NavigationLink(destination: PlantValidationView(code))
//                print("Found code: \(code)")
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//    }
    
}

    struct manualplantIDField: View{
        @State var plantID: String = ""
        var body: some View{
            TextField("input plant ID code",text: $plantID)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
        }
    }

    struct PlantValidationView: View
    {
        var body: some View {
            NavigationView {
                VStack {
                    Text("New View Found")
                    .navigationBarTitle("")
                }
            }
        }
    }

//func initializePlant(plantCode:String) -> Plant {
//    let newPlant = Plant(QRCode: plantCode)
//    print(newPlant)
//    return newPlant
//}
