//
//  StateCollectionViewCell.swift
//  StateFlags_Swift
//
//  Created by theevo on 3/23/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import UIKit

class StateCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlets and Properties
    
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var stateNameLabel: UILabel!
    
    var state: State? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let state = state else { return }
        flagImageView.image = UIImage(named: state.abbreviation)
        stateNameLabel.text = state.name
    }
    
}
