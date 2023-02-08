//
//  DataDecoder.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 07/02/23.
//

import Foundation

final class DateDecoder: JSONDecoder {
    
    let dateFormatter = DateFormatter()
    
    override init() {
        
        super.init()
        // "due_on":"2023-01-01T00:00:00.000+05:30"
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXX"
        dateDecodingStrategy = .formatted(dateFormatter)
        
    }
    
}
