//
//  VillainCollectionViewController.swift
//  BondVillains
//
//  Created by mairo on 30/05/2022.
//  Copyright © 2022 Udacity. All rights reserved.
//

// MARK: all new swift file

import Foundation
import UIKit

// MARK: - VillainCollectionViewController: UICollectionViewController

class VillainsCollectionViewController: UICollectionViewController {
    
    // MARK: Properties
    
    // Villains, for the table
    // Array of Villain instances.
    let allVillains = Villain.allVillains
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    // MARK: Collection View Data Source
    
        // MARK: 1. collectionView(_:numberOfItemsInSection:)
        // memes will be stored in meme's array, this method returns the number of memes in that array
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.allVillains.count
    }
    
        // MARK: 2. collectionView(_:cellForItemAt:)
        // (The default UICollectionViewCell leaves no crativity space in terms of meme display), so this method return custom "cool" custom cell UICollectionViewCell > better write custom cell via CocoaTouchClass an have it inherit from "dry" cell > now can make "dry" cell "cool" giving her properties to display a meme e.g. two Labels & an Image...
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VillainCollectionViewCell", for: indexPath) as! VillainCollectionViewCell
        let villain = self.allVillains[(indexPath as NSIndexPath).row]
        
        // Set the name and image
        
        cell.nameLabel.text = villain.name
        cell.villainImageView?.image = UIImage(named: villain.imageName)
        // cell.schemeLabel.text = "Scheme: \(villain.evilScheme)"
        
        return cell
    }
    
        // MARK: 3. collectionView(_:didSelectItemAt:)
        // to present selected meme > grab an instance of detailViewController from Storyboard, populate it with given meme and present it using navigation
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // Grab the DetailVC from Storyboard
        
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "VillainDetailViewController") as! VillainDetailViewController
        
        //Populate view controller with data from the selected item
        
        detailController.villain = self.allVillains[(indexPath as NSIndexPath).row]
        
        // Present the view controller using navigation
        
        self.navigationController!.pushViewController(detailController, animated: true)
        
    }
}
