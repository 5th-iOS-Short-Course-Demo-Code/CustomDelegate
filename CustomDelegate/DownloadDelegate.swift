//
//  DownloadDelegate.swift
//  CustomDelegate
//
//  Created by Chhaileng Peng on 7/22/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

protocol DownloadDelegate {
    
    func didFinishDownload(message: String)
    func responseImage(image: UIImage)
    
}
