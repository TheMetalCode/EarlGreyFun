//
//  Utils.swift
//  MyLifeFeatures
//
//  Created by Jason Hagglund on 6/5/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import Foundation
import EarlGrey

// Swift
//
// Must use a wrapper class to force pass by reference in Swift 3 closures.
// inout params cannot be modified within closures. http://stackoverflow.com/a/28252105
open class Element {
    var text = ""
}

/*
 *  Example Usage:
 *
 *  let element = Element()
 *  domainField.performAction(grey_replaceText("hello.there"))
 *             .performAction(grey_getText(element))
 *
 *  GREYAssertTrue(element.text != "", reason: "get text failed")
 */
public func grey_getText(_ elementCopy: Element) -> GREYActionBlock {
    return GREYActionBlock.action(withName: "get text",
                                  constraints: grey_respondsToSelector(#selector(getter: UITextField.accessibilityIdentifier))) { element,
                                    errorOrNil -> Bool in
                                    let elementObject = element as? NSObject
                                    let text = elementObject?.perform(#selector(getter: UITextField.accessibilityIdentifier),
                                                                      with: nil)?.takeRetainedValue() as? String
                                    elementCopy.text = text ?? ""
                                    return true
    }
}
