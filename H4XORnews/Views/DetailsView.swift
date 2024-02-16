//
//  DetailsView.swift
//  H4XORnews
//
//  Created by DaninMac on 22.11.23.
//

import SwiftUI

struct DetailsView: View {
    
    var url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}



#Preview {
    DetailsView(url: "https://www.google.com")
}
