//
//  ViewController.swift
//  TMSHomework-Lesson14
//
//  Created by Наталья Мазур on 7.01.24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var deviceArray: [Devices] = {
        let airpods = Devices(deviceImageName: "airpods")
        let macbook = Devices(deviceImageName: "macbook")
        let desktopComputer = Devices(deviceImageName: "desktopcomputer")
        let homepod = Devices(deviceImageName: "homepod.2.fill")
        let appleWatch = Devices(deviceImageName: "applewatch")
        
        return [airpods, macbook, desktopComputer, homepod, appleWatch]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
        
    }
    
    func setupCollectionView() {
        
//        var collectionView = UICollectionView(frame: CGRect(x: 0, y: 40, width: UIScreen.main.bounds.width, height: 100), collectionViewLayout: layout)
        
        collectionView.register(UINib(nibName: "DeviceCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "DeviceCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
        
        let layout = UICollectionViewFlowLayout()
        collectionView.collectionViewLayout = layout
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 150, height: 150)
        
//        view.addSubview(collectionView)
    }


}


extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return deviceArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DeviceCollectionViewCell", for: indexPath) as! DeviceCollectionViewCell
        
        let devices = deviceArray[indexPath.row]
        cell.configure(device: devices)
        
        return cell
    }
    
    
}

//Создать через UICollectionView коллекцию картинок apple девайсов.
//Для картинок использовать системные картинки (SFSymbols).
