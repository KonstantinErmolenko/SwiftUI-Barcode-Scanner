//
//  BarcodeScannerViewModel.swift
//  SwiftUI-Barcode-Scanner
//
//  Created by Ермоленко Константин on 16.01.2021.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?

    var statusText: String {
        scannedCode.isEmpty ? "Not scanned yet" : scannedCode
    }
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
