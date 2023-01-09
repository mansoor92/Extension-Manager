//
//  Extensions.swift
//  Extension Manager
//
//  Created by Mansoor Ali on 09/01/2023.
//

import Foundation

extension Array where Element == String {
    
    func getItem(at index: Int) -> String? {
        guard index < self.count else {return nil }
        return self[index]
    }
    
    func getItemOrEmpty(at index: Int) -> String {
        getItem(at: index) ?? ""
    }
}
