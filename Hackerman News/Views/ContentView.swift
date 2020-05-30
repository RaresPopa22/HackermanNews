//
//  ContentView.swift
//  Hackerman News
//
//  Created by Rares Popa on 29/05/2020.
//  Copyright © 2020 Rares Popa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject var networkManager = NetworkManager()
  
  var body: some View {
    NavigationView {
      List(networkManager.posts) { post in
        NavigationLink(destination: DetailView(url: post.url)) {
          HStack {
            Text(String(post.points))
            Text(post.title)
          }
        }
      }.navigationBarTitle(K.appName)
    }.onAppear {
      self.networkManager.fetchData()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
