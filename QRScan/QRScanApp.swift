//
//  QRScanApp.swift
//  QRScan
//
//  Created by Jasper Broekmans on 03/04/2023.
//

import SwiftUI

@main
struct QRScanApp: App {
    var body: some Scene {
        WindowGroup {
            QRCodeScannerView(scannedCode: .constant(nil))
        }
    }
}
