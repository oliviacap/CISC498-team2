//
//  ContentView.swift
//  maize master
//
//  Created by Olivia Caponigro on 9/27/21.
//

import SwiftUI

let backgroundColor = Color(UIColor.secondarySystemBackground)
struct ContentView: View {
    var body: some View {
        ZStack{
            Color.init(red: 0, green: 0.698, blue: 0.1255)
            Text("maize master").font(Font.custom("Roobert",size:33))
            
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
