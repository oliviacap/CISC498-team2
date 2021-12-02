//
//  DataView.swift
//  maize-master
//
//  Created by Olivia Caponigro on 10/19/21.
// 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
// https://github.com/spacenation/swiftui-charts.git.


import Foundation
import SwiftUI
import UIKit
import Charts



 struct DataView: View {
    var body: some View {
        VStack{
        Rectangle()
            .fill(Color.black)
            .frame(width: 500, height: 500)
        HStack{
        Button(action: {print("Save")}){
        SaveButton()
        }
        Button(action: {print("Reject")}){
        RejectButton()
        }
        Button(action: {print("Next")}){
        NextButton()
        }
        }
        Notes()
        }
    }
}


struct SaveButton: View{
    var body: some View{
    Text("SAVE")
    .font(.headline)
    .foregroundColor(.white)
    .padding()
    .frame(width: 150, height: 60)
    .background(Color.green)
    .cornerRadius(15.0)
    }
}


struct RejectButton: View{
    var body: some View{
    Text("REJECT")
    .font(.headline)
    .foregroundColor(.white)
    .padding()
    .frame(width: 150, height: 60)
    .background(Color.red)
    .cornerRadius(15.0)
    }
}

struct NextButton: View{
    var body: some View{
    Text("Next")
    .font(.headline)
    .foregroundColor(.white)
    .padding()
    .frame(width: 150, height: 60)
    .background(Color.black)
    .cornerRadius(15.0)
    }
}

struct Notes: View {
    @State private var name: String = "Notes: "

    var body: some View {
        VStack(alignment: .leading) {
            TextField("Enter your notes", text: $name)
            .padding(.leading)
            .padding(.leading)
            .frame(width: 500,height: 100)
            .background(Color.black)
            .foregroundColor(.white)
               
        }
    }
}

