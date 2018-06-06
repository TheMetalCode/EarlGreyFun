//
//  PersonListScreen.swift
//  MyLifeFeatures
//
//  Created by Jason Hagglund on 5/24/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import Foundation
import EarlGrey

class PersonListScreen {
    
    func tapPersonCell(index: Int) {
        let personCell = EarlGrey.selectElement(with: grey_accessibilityID("person-cell-\(index)"))
        personCell.assert(grey_sufficientlyVisible()).perform(grey_tap())
    }
    
    func getPersonName(index: Int) -> String {
        let element = Element()
        EarlGrey.selectElement(with: grey_accessibilityID("person-cell-\(index)")).perform(grey_getText(element))
        return element.text
    }
}
