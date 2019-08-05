//
//  ProfileViewController.swift
//  blackbook
//
//  Created by Turner Thornberry on 7/3/19.
//  Copyright © 2019 personal. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    // MARK: - IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var factsTray: UIViewX!
    @IBOutlet weak var closedTrayContraint: NSLayoutConstraint!
    
    // @IBOutlet weak var closedTrayContraint: NSLayoutConstraint! // default 647
    @IBOutlet weak var trayHeight: NSLayoutConstraint!
    
    
    
    // MARK: - Delegate Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.featuredMedia.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeaturedCell", for: indexPath) as! FeaturedCell
        
        cell.imageViewX.image = self.featuredMedia[indexPath.row]
        
        return cell
    }
    
    
    
    
    
    // MARK: - Internal Controller Variables
    var factsOGCenter: CGPoint!
    var ogCenter: CGPoint!

    var featuredMedia = [UIImage]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    
        // closedTrayContraint.constant = 16
        factsOGCenter = factsTray.center
        ogCenter = factsTray.center
        trayHeight.constant += closedTrayContraint.constant - 200
        
        for i in 1...5 {
            let featuredPic = UIImage(named: "frat\(i).jpeg")
            self.featuredMedia.append(featuredPic!)
            
        }
        
    }
    
    
    // MARK: - IBAction Functions
    
    @IBAction func didPanTray(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        print("translation \(translation)")
        
        // var currFactsCenter = factsTray.center

        
        if sender.state == .began {
            factsOGCenter = factsTray.center
            //currFactsCenter = factsTray.center
            
        } else if sender.state == .changed {
            factsTray.center = CGPoint(x: factsOGCenter.x, y: factsOGCenter.y + translation.y)

        } else if sender.state == .ended {
            let velocity = sender.velocity(in: view)
            if velocity.y > 0 { // user is swiping down
                UIView.animate(withDuration: 0.3) {
                    self.factsTray.center.y = self.ogCenter.y + 224
                }
            } else {
                UIView.animate(withDuration: 0.3) { // swiping up
                    self.factsTray.center.y = self.ogCenter.y - 416
                }
            }
        }
        
        
    }
    


}

