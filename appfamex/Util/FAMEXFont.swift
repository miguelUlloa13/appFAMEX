//
//  FAMEXFont.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 09/01/23.
//

import Foundation
import UIKit

    // Modelo para Titulos del Texto
class TitleTextFont {
    
        // Propiedades
    
    var Label: UILabel?                                 // Label
    var Title: String?                                  // Titulo del label
    var Font: String = "Plateia"                        // Fuente
    var Size: CGFloat = 30                              // Tamaño del texto
    var TextColor: UIColor = .white                     // Color del text
    var LineBreak: Bool = true                          // Salto de linea
    var TextAlignment: NSTextAlignment = .center        // Alineacion del texto
        
    
        // Metodos
    
    func HandlingText() {
        
        if LineBreak == true {
            Label!.text = Title ?? "No Title"
            Label!.font = UIFont(name: Font, size: Size)
            Label!.numberOfLines = 0
            Label!.adjustsFontSizeToFitWidth = true
            Label!.minimumScaleFactor = 0.5
            Label!.textAlignment = TextAlignment
            Label!.textColor = TextColor
        } else {
            Label!.text = Title ?? "No Title"
            Label!.font = UIFont(name: Font, size: Size)
            Label!.adjustsFontSizeToFitWidth = true
            Label!.minimumScaleFactor = 0.5
            Label!.textAlignment = TextAlignment
            Label!.textColor = TextColor
        }
        
    }
    
}

// Modelo para Cuerpo del Texto
class BodyTextFont: TitleTextFont {

        // Metodos

    override func HandlingText() {

        if LineBreak == true {
            Label!.text = Title ?? "No title"
            Label!.font = UIFont(name: "Futura", size: 20)
            Label!.numberOfLines = 0
            Label!.adjustsFontSizeToFitWidth = true
            Label!.minimumScaleFactor = 0.5
            Label!.textAlignment = TextAlignment
            Label!.textColor = TextColor
        } else {
            Label!.text = Title ?? "No title"
            Label!.font = UIFont(name: "Futura", size: 20)
            Label!.adjustsFontSizeToFitWidth = true
            Label!.minimumScaleFactor = 0.5
            Label!.textAlignment = TextAlignment
            Label!.textColor = TextColor
        }
        
    }

}

