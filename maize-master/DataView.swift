//
//  DataView.swift
//  maize-master
//
//  Created by Olivia Caponigro on 10/19/21.
// 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
// https://github.com/spacenation/swiftui-charts.git.


import Foundation
import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        Chart(data: [0.1, 0.3, 0.2, 0.5, 0.4, 0.9, 0.1])
            .chartStyle(
                LineChartStyle(.quadCurve, lineColor: .blue, lineWidth: 5)
            )
    }
}
