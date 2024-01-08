//
//  DeviceCollectionViewCell.swift
//  TMSHomework-Lesson14
//
//  Created by Наталья Мазур on 8.01.24.
//

import UIKit

class DeviceCollectionViewCell: UICollectionViewCell {
    
//    var deviceImage = UIImageView()
//    var deviceView = UIView()

    @IBOutlet weak var deviceImage: UIImageView!
    @IBOutlet weak var deviceView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(device: Devices) {
//        collectionView.backgroundColor = .white
//        view?.addSubview(deviceView)
        let image = device.deviceImageName
        deviceImage.image = UIImage(systemName: image)
        
    }
}
