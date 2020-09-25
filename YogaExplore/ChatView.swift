//
//  ChatView.swift
//  YogaExplore
//
//  Created by Keyi Zhu on 9/24/20.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack {
            Text("Chat").font(.largeTitle).fontWeight(.medium).foregroundColor(brownColor).padding()
            Text("Page is not implemented yet")
                .foregroundColor(brownColor).padding()
            Spacer()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
