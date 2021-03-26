//
//  UIImageExtensions.swift
//

import Foundation
import UIKit

extension UIImage {
    internal func saveJpegFile (_ path: URL, _ fileName: String) -> Bool{
        let jpgImageData = self.jpegData(compressionQuality: 1.0)
        let fileURL = path.appendingPathComponent(fileName)
        do {
            try jpgImageData!.write(to: fileURL)
        } catch {
            return false
        }
        return true
    }
}
