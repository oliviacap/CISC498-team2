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
                .padding(.bottom, 20)
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

    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                if self.scannedCode != nil {
                    Text("scanned code is invalid")
                }
                else {
                Button("Scan Code") {
                    self.isPresentingScanner = true
                }
                .sheet(isPresented: $isPresentingScanner) {
                    self.scannerSheet
                }
                Text("Scan a QR code to begin")
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
}
