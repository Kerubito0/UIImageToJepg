//
//  ViewController.swift
//  UIImageToJepg
//
//  Created by kerubito on 2020/01/11.
//  Copyright © 2020 kerubito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let pc = UIImagePickerController()
        pc.sourceType = .camera
        pc.delegate = self
        present(pc, animated: true, completion: nil)
    }
    
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info["UIImagePickerControllerOriginalImage"] as! UIImage
                let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fileName = "sample.jpg"
        if !image.saveJpegFile(path, fileName) {
        }
        self.dismiss(animated: true)
    }
}

