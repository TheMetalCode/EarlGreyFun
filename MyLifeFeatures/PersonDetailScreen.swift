//
//  PersonDetailScreen.swift
//  MyLifeFeatures
//
//  Created by Jason Hagglund on 5/24/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import Foundation
import EarlGrey

class PersonDetailScreen {
    
    var personImage : GREYInteraction!
    var personName : GREYInteraction!
    var dogSlider : GREYInteraction!
    
    init() {
        personImage = EarlGrey.selectElement(with: grey_accessibilityID("person-image"))
        personName = EarlGrey.selectElement(with: grey_accessibilityID("person-name"))
        dogSlider = EarlGrey.selectElement(with: grey_accessibilityID("dog-slider"))
    }
    
    func getPersonName() -> String {
        let element = Element()
        personName.perform(grey_getText(element))
        return element.text
    }
}
