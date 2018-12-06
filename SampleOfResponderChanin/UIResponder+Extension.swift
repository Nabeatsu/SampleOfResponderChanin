//
//  UIResponder+Extension.swift
//  SampleOfResponderChanin
//
//  Created by 田辺信之 on 2018/12/06.
//  Copyright © 2018年 田辺信之. All rights reserved.
//

import Foundation
import UIKit

extension UIResponder {
    func notify<E: ViewEvent>(_ event: E) {
        var responder: UIResponder? = self
        while (responder != nil) {
            if let handler = responder as? E.EventHandler {
                return event.notify(to: handler)
            }
            responder = responder?.next
        }
    }
}
