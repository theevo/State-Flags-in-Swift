//
//  StateCollectionViewController.swift
//  StateFlags_Swift
//
//  Created by theevo on 3/23/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import UIKit

class StateCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        StateController.shared.states.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "stateCell", for: indexPath) as? StateCollectionViewCell
            else { return UICollectionViewCell() }
        
        let state = StateController.shared.states[indexPath.row]
        
        cell.state = state
        
        return cell
    }
    
    
} // end class
