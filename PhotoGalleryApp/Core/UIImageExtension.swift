//
//  UIImageExtension.swift
//  PhotoGalleryApp
//
//  Created by Satyam Sehgal on 05/09/18.
//  Copyright © 2018 Satyam Sehgal. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    public convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}
