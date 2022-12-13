//
//  CoreInjection.swift
//  Core
//
//  Created by Aldi Dwiki Prahasta on 13/12/22.
//

import RealmSwift
import Foundation

public final class CoreInjection: NSObject {
    public func provideRealm() -> Realm? {
        return try? Realm()
    }
}
