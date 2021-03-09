//
//  FirstChildVC.swift
//  ChildVC
//
//  Created by Gopakumar MP on 3/9/21.
//  Copyright © 2021 Gopakumar MP. All rights reserved.
//

import Foundation
import UIKit

class FirstChildVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    private var collectionView:UICollectionView!
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.gray
        self.createCollectionView()
    }
    
    func createCollectionView() {
        let layout  = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 200, height: 200)
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        self.view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        //collectionView.re
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.collectionView.frame = view.bounds
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .brown
        return cell
        
    }
    
    
}
