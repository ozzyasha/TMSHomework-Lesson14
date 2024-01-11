//
//  ViewController.swift
//  TMSHomework-Lesson14
//
//  Created by Наталья Мазур on 7.01.24.
//

import UIKit

class ViewController: UIViewController {

    var collectionView: UICollectionView!
//    @IBOutlet weak var collectionView: UICollectionView!
    
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
        let layout = UICollectionViewFlowLayout()
        
        layout.sectionInset = UIEdgeInsets(top: 30, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 120, height: 120)
        layout.scrollDirection = .horizontal
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)

        collectionView.frame = CGRect(x: 0, y: 0, width: view.safeAreaLayoutGuide.layoutFrame.width, height: 200)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(DeviceCollectionViewCell.self, forCellWithReuseIdentifier: "DeviceCollectionViewCell")
        collectionView.backgroundColor = .systemGray4
        collectionView.reloadData()
        
        view.addSubview(collectionView)
    }

}


extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return deviceArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DeviceCollectionViewCell", for: indexPath) as! DeviceCollectionViewCell
        let devices = deviceArray[indexPath.row]
        cell.backgroundColor = .systemGray3
        cell.layer.cornerRadius = 20
        cell.configure(device: devices)
        
        return cell
    }
    
    
}

//Создать через UICollectionView коллекцию картинок apple девайсов.
//Для картинок использовать системные картинки (SFSymbols).
