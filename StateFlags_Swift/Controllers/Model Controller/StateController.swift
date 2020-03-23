//
//  StateController.swift
//  StateFlags_Swift
//
//  Created by theevo on 3/23/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import Foundation

class StateController {
    
    // MARK: - Singleton and Source of Truth
    
    static let shared = StateController()
    var states: [State] = []
    
    
    // MARK: - Initializer
    
    init() {
        self.states = addStates()
    }
    
    
    // MARK: - Helper Method
    
    private func addStates() -> [State] {
        var states: [State] = []
        
        for name in StateHelper.names {
            guard let index = StateHelper.names.firstIndex(of: name) else { return [] }
            let abbreviation = StateHelper.abbreviations[index]
            let state = State(name: name, abbreviation: abbreviation)
            states.append(state)
        }
        return states
    }
    
}
