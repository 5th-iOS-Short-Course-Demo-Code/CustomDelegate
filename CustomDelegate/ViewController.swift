//
//  ViewController.swift
//  CustomDelegate
//
//  Created by Chhaileng Peng on 7/22/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DownloadDelegate {
    
    var download: Downlaod?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func downloadClick(_ sender: UIButton) {
        statusLabel.text = "Downloading..."
        download?.start()
    }
    
    func didFinishDownload(message: String) {
        statusLabel.text = message
    }
    
    @IBAction func downloadImage(_ sender: UIButton) {
        statusLabel.text = "Downloading image..."
        
        DispatchQueue.main.async {
            self.download?.downloadImage(url: "https://wallpapershome.com/images/wallpapers/super-mario-odyssey-1024x768-poster-e3-2017-5k-16112.jpg")
        }
    }
    
    func responseImage(image: UIImage) {
        print("Download image success")
        statusLabel.text = "Image downloaded"
        imageView.image = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        download = Downlaod()
        download?.delegate = self
    }
    
}

