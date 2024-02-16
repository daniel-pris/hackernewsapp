//
//  ContentView.swift
//  H4XORnews
//
//  Created by DaninMac on 21.11.23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailsView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4XOR news")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}


#Preview {
    ContentView()
}

//let posts = [
//    Post(objectID: "1", points: 1, title: "Hello", url: "1"),
//    Post(objectID: "2", points: 2, title: "Bonjour", url: "2"),
//    Post(objectID: "3", points: 3, title: "Bonjour", url: "3")
//]
