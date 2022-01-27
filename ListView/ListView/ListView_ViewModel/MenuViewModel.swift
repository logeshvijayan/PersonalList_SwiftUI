//
//  MenuViewModel.swift
//  ListView
//
//  Created by Logesh Vijayan on 2022-01-26.
//

import Foundation
import UIKit

class MenuViewModel {
    
    var  menu : Welcome = []
    
    init() {
        decodeMenuJson()
    }
    
    func decodeMenuJson() {
        guard let  menuList = Welcome.parse(jsonFile: "Menu") else {
            return
        }
        menu = menuList
    }
}


extension Decodable {
  static func parse(jsonFile: String) -> Self? {
    guard let url = Bundle.main.url(forResource: jsonFile, withExtension: "json"),
          let data = try? Data(contentsOf: url),
          let output = try? JSONDecoder().decode(self, from: data)
        else {
      return nil
    }

    return output
  }
}
