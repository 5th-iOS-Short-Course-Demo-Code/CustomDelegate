//
//  Download.swift
//  CustomDelegate
//
//  Created by Chhaileng Peng on 7/22/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class Downlaod {
    
    var delegate: DownloadDelegate?
    
    func start() {
        // Download task goes here
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(download), userInfo: nil, repeats: false)
    }
    
    @objc private func download() {
        // Call after delay 5 seconds
        // Download complete after 5 seconds
        delegate?.didFinishDownload(message: "Download Completed")
    }
    
    func downloadImage(url: String) {
        DispatchQueue.main.async {
            do {
                let data = try Data(contentsOf: URL(string: url)!)
                let image = UIImage(data: data)
                self.delegate?.responseImage(image: image!)
            } catch _ {
                self.delegate?.responseImage(image: UIImage(named: "default")!)
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
