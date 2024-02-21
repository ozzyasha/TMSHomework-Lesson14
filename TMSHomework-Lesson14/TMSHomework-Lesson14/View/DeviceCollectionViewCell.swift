//
//  DeviceCollectionViewCell.swift
//  TMSHomework-Lesson14
//
//  Created by Наталья Мазур on 8.01.24.
//

import UIKit

class DeviceCollectionViewCell: UICollectionViewCell {
    
    var deviceImage = UIImageView()
    var deviceView = UIView()

//    @IBOutlet weak var deviceImage: UIImageView!
//    @IBOutlet weak var deviceView: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(device: Devices) {
        deviceView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        deviceImage.frame = CGRect(x: 0, y: 0, width: 120, height: 120)
        deviceImage.contentMode = .scaleAspectFit
        
        let image = device.deviceImageName
        deviceImage.image = UIImage(systemName: image)
        
        addSubview(deviceView)
        deviceView.addSubview(deviceImage)
        
    }
}
