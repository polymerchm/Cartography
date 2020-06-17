//
//  LayoutItem.swift
//  Cartography-iOS
//
//  Created by Vitor Travain on 10/10/17.
//  Copyright © 2017 Robert Böhnke. All rights reserved.
//

public protocol LayoutItem: class {
    associatedtype ProxyType: LayoutProxy

    func asProxy(context: Context) -> ProxyType
}

extension LayoutItem {
    public func asProxy(_ identifier: String? = nil) -> ProxyType {
        let ctx = Context()
        if identifier != nil {
            ctx.identifier = identifier!
        }
        return asProxy(context: ctx)
    }
}
