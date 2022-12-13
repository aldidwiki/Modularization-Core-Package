//
//  Extension.swift
//  Core
//
//  Created by Aldi Dwiki Prahasta on 13/12/22.
//
import Foundation
import RealmSwift

extension String {
   public func formatDateString(input inFormat: String, output outFormat: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = inFormat
        let outDate = dateFormatter.date(from: self) ?? Date()
        
        dateFormatter.dateFormat = outFormat
        return dateFormatter.string(from: outDate)
    }
}

extension Results {
    public func toArray<T>(ofType: T.Type) -> [T] {
        var array = [T]()
        for index in 0 ..< count {
            if let result = self[index] as? T {
                array.append(result)
            }
        }
        return array
    }
}
