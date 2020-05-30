//
//  DetailView.swift
//  Hackerman News
//
//  Created by Rares Popa on 29/05/2020.
//  Copyright © 2020 Rares Popa. All rights reserved.
//

import SwiftUI

struct DetailView: View {
  
  let url: String?
  
  var body: some View {
    WebView(urlString: url)
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(url: "https://www.google.com")
  }
}
