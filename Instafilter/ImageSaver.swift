//
//  ImageSaver.swift
//  Instafilter
//
//  Created by Jordan Haynes on 9/21/23.
//

import UIKit

class ImageSaver: NSObject {
    func writetoPhotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted), nil)
    }
    
    @objc func saveCompleted(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        print("Save Finished")
    }
}
