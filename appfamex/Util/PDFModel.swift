//
//  PDFModel.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 17/01/23.
//

import Foundation
import UIKit
import PDFKit

class PDFModel {
    
    // MARK: - Properties
    
    private var pdfView: PDFView?           // pdf View
    private var pdfDocument: PDFDocument?   // pdf document
    
    func setUp(yourPDFView: UIView, PDFname: String) {
        
        // Add PDFView to View controller
        pdfView?.backgroundColor = .clear
        pdfView = PDFView(frame: yourPDFView.bounds)
        yourPDFView.addSubview(pdfView!)
        
        // configure pdf properties
        pdfView?.autoScales = true              // fits page to screen
        pdfView?.displayMode = .singlePage      // show single page on screen
        pdfView?.displayDirection = .vertical   // scroll mode vertical/horzontal
        pdfView?.usePageViewController(true)
        
        // pdf path, place pdf file first
        guard let path = Bundle.main.url(forResource: PDFname, withExtension: "pdf") else {
            
            print("Unable to locate file")
            
            return // stop further processing
            
        }
        
        // load pdf
        pdfDocument = PDFDocument(url: path)
        pdfView!.document = pdfDocument
        
    }
    
}
