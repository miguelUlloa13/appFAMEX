//
//  LocationModel.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 19/01/23.
//

import Foundation
import MapKit

class LocationModel {
    
    
    //let K = (latitude: 19.7479, longitude: -98.9727, companyName: "Campo Militar No.37-D")
    
    // MARK: - Properties
    
    var latitude: CLLocationDegrees         // 19.7479
    var longitude: CLLocationDegrees        // -98.9727
    var companyName: String                 // "Campo Militar No.37-D"

    init(latitude: CLLocationDegrees, longitude: CLLocationDegrees, companyName: String) {
        self.latitude = latitude
        self.longitude = longitude
        self.companyName = companyName
    }
    
    // MARK: - Methods
    
    func openMapForPlace() {

        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = companyName
        mapItem.openInMaps(launchOptions: options)
        
    }
    
}
