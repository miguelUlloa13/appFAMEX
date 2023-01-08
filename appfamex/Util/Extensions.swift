//
//  Extensions.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 07/01/23.
//

import Foundation
import UIKit

    // MARK: - UIFont
extension UIFont {
    
    // Method to use Plateia Font
    static func Plateia(size: CGFloat) -> UIFont? {
        return UIFont(name: "Plateia", size: size) ?? .systemFont(ofSize: 32)
    }
    
    static func Futura(size: CGFloat) -> UIFont? {
        return UIFont(name: "Futura", size: size) ?? .systemFont(ofSize: 32)
    }
    
}

    // MARK: - UIImage
extension UIImage {
    
    // Method to apply gradient color to a Label
    static func gradientImage(bounds: CGRect, colors: [UIColor]) -> UIImage {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = colors.map(\.cgColor)
        // This makes it left to right, default is top to bottom
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)

        let renderer = UIGraphicsImageRenderer(bounds: bounds)

        return renderer.image { ctx in
            gradientLayer.render(in: ctx.cgContext)
        }
    }
}

    // MARK: - UIButton

extension UIButton {
    
    // Method to round Buttons
    func round() {
        self.layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
    // Method to apply animation bounce
    func bounce(){
        UIView.animate(withDuration: 0.1, animations: { self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }) { (completion) in
            UIView.animate(withDuration: 0.1) {
                self.transform = .identity
            }
        }

    }
    
}

// Extension de funcionalidad de las vistas
extension UIView {
    //  Metodo para desplegar el menu
    func showMenu() {
        print("Deplegar Menu")
        let screen = UIScreen.main.bounds
        self.layer.cornerRadius = 40
        let x = screen.width * 0.8
        let originalTransform = self.transform
        let scaledTransform = originalTransform.scaledBy(x: 0.9, y: 0.9)
        let scaledAndTranslatedTransform = scaledTransform.translatedBy(x: x, y: 0)
        
        UIView.animate(withDuration: 0.7) {
            self.transform = scaledAndTranslatedTransform
        }
        
    }
    
    // Metodo para cerrar el menu
    func hideMenu(viewOptionSelect: CGAffineTransform) {
        print("Cerrar Menu")
        //var viewOptionSelect = CGAffineTransform()
        //viewOptionSelect = self.transform
        UIView.animate(withDuration: 0.7) {
            self.transform = viewOptionSelect
            self.layer.cornerRadius = 0
            self.layer.cornerRadius = self.layer.cornerRadius
        }
    }
    
    
    func fadeIn(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in }) {
        self.alpha = 0.0

        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.isHidden = false
            self.alpha = 1.0
        }, completion: completion)
    }

    func fadeOut(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in }) {
        self.alpha = 1.0

        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 0.0
        }) { (completed) in
            self.isHidden = true
            completion(true)
        }
      }
    
    func fadeInAndOut(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in }) {
        self.alpha = 0.0

        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            
            self.isHidden = false
            self.alpha = 1.0
            
        }) { (completed) in
            self.fadeOut(delay: 5)
            
            completion(true)
            
        }
            
    }
    
    
    
    func anchor(top: NSLayoutYAxisAnchor?, paddingTop: CGFloat, bottom: NSLayoutYAxisAnchor?, paddingBottom: CGFloat, left: NSLayoutXAxisAnchor?, paddingLeft: CGFloat, right: NSLayoutXAxisAnchor?, paddingRight: CGFloat, width: CGFloat, height: CGFloat) {
    translatesAutoresizingMaskIntoConstraints = false
    if let top = top {
    topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
    }
    if let bottom = bottom {
    bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
    }
    if let right = right {
    rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
    }
    if let left = left {
    leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
    }
    if width != 0 {
    widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    if height != 0 {
    heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    }
    

    
}

