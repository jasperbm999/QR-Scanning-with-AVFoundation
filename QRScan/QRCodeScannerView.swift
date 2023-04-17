//
//  ContentView.swift
//  QRScan
//
//  Created by Jasper Broekmans on 03/04/2023.
//

import SwiftUI

struct QRCodeScannerView: UIViewControllerRepresentable {
    @Binding var scannedCode: String?
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> QRCodeScannerViewController {
        let qrCodeScannerViewController = QRCodeScannerViewController()
        qrCodeScannerViewController.delegate = context.coordinator
        return qrCodeScannerViewController
    }
    
    func updateUIViewController(_ uiViewController: QRCodeScannerViewController, context: Context) {}
    
    class Coordinator: NSObject, QRCodeScannerViewControllerDelegate {
        var parent: QRCodeScannerView
        
        init(_ qrCodeScannerView: QRCodeScannerView) {
            parent = qrCodeScannerView
        }
        
        func qrCodeScannerViewControllerDidScanCode(_ code: String) {
            parent.scannedCode = code
        }
    }
    
    }

