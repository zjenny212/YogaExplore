//
//  ArticlesView.swift
//  YogaExplore
//
//  Created by Keyi Zhu on 9/24/20.
//

import SwiftUI

struct ArticlesView: View {
    var body: some View {
        VStack {
            Text("Articles").font(.largeTitle).fontWeight(.medium).foregroundColor(brownColor).padding()
            Text("Page is not implemented yet")
                .foregroundColor(brownColor).padding()
            Spacer()
        }
    }
}

struct ArticlesView_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesView()
    }
}
