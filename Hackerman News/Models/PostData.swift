//
//  PostData.swift
//  Hackerman News
//
//  Created by Rares Popa on 29/05/2020.
//  Copyright © 2020 Rares Popa. All rights reserved.
//

import Foundation

struct Results: Decodable {
  
  let hits: [Post]
}

struct Post: Decodable, Identifiable {
  var id: String {
    return objectID
  }
  
  let objectID: String
  let points: Int
  let title: String
  let url: String?
}
