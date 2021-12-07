//
//  ContentView.swift
//  maize master
//
//  Created by Olivia Caponigro on 9/27/21.
//
import SwiftUI

let backgroundColor = Color(UIColor.secondarySystemBackground)

struct DevicesView: View {
    @State var smurfSelection: Int? = nil
    
    var body: some View {
        NavigationView {
            VStack{
                ConnectedDevices()
                NavigationLink(destination: PlantIDView(), tag: 2, selection: $smurfSelection) {
                        Button("PLANTPUSHER-1") {
                            print("button pressed")
                            self.smurfSelection = 2
                        }
                }
                NavigationLink(destination: PlantIDView(), tag: 3, selection: $smurfSelection) {
                        Button("PLANTPUSHER-2") {
                            print("button pressed")
                            self.smurfSelection = 3
                        }
                }
                NavigationLink(destination: PlantIDView(), tag: 4, selection: $smurfSelection) {
                        Button("PLANTPUSHER-3") {
                            print("button pressed")
                            self.smurfSelection = 4
                        }
                }
                NavigationLink(destination: PlantIDView(), tag: 4, selection: $smurfSelection) {
                        Button("SMURF-1") {
                            print("button pressed")
                            self.smurfSelection = 4
                        }
                }
                NavigationLink(destination: PlantIDView(), tag: 5, selection: $smurfSelection) {
                        Button("SMURF-2") {
                            print("button pressed")
                            self.smurfSelection = 5
                        }
                }
                NavigationLink(destination: PlantIDView(), tag: 5, selection: $smurfSelection) {
                        Button("SMURF-3") {
                            print("button pressed")
                            self.smurfSelection = 5
                        }
                }
            }
        }
    }



    struct DevicesView_Previews: PreviewProvider {
        static var previews: some View {
            DevicesView()
        }
    }

    struct ConnectedDevices: View {
        var body: some View {
            Text("Connected Devices")
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                .font(.largeTitle)
        }
    }
    
}
