//
//  ContentView.swift
//  maize master
//
//  Created by Olivia Caponigro on 9/27/21.
//
import SwiftUI

let backgroundColor = Color(UIColor.secondarySystemBackground)
struct DevicesView: View {
    var body: some View {
        ZStack(alignment: .top) { // << made explicit alignment to top
              HStack { // << moved this up to ZStack
                  ConnectedDevices()
              }
              .frame(minWidth: 0, maxHeight: 400, alignment: .topLeading)
            VStack(spacing: 0) {
                  VStack {
                      DeviceButtons()
                  }
              }
              .foregroundColor(Color.black.opacity(0.7))
                      .padding()
                      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
                      .offset(x: 0, y: 0)

                  }
                  .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
                  .background(Color("maizeGreen").opacity(0.8))
                  .edgesIgnoringSafeArea(.all)

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

struct DeviceButtons: View {
    var body: some View {
    Text("PLANTPUSHER-1")
        .fontWeight(.light)
        .font(.title)
        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 50)
        .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        .frame(width: 300, height: 60)
        .background(Color.white)
        .cornerRadius(15.0)

    Text("PLANTPUSHER-2")
        .fontWeight(.light)
        .font(.title)
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 50)
        .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        .frame(width: 300, height: 60)
        .background(Color.white)
        .cornerRadius(15.0)

    Text("PLANTPUSHER-3")
        .fontWeight(.light)
        .font(.title)
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 50)
        .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        .frame(width: 300, height: 60)
        .background(Color.white)
        .cornerRadius(15.0)

    Text("SMURF-1")
        .fontWeight(.light)
        .font(.title)
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 50)
        .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        .frame(width: 300, height: 60)
        .background(Color.white)
        .cornerRadius(15.0)

    Text("SMURF-2")
        .fontWeight(.light)
        .font(.title)
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 50)
        .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        .frame(width: 300, height: 60)
        .background(Color.white)
        .cornerRadius(15.0)

    Text("SMURF-3")
        .fontWeight(.light)
        .font(.title)
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 50)
        .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        .frame(width: 300, height: 60)
        .background(Color.white)
        .cornerRadius(15.0)
    }

}
