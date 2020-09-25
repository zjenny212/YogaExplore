//
//  MainView.swift
//  YogaExplore
//
//  Created by Keyi Zhu on 9/24/20.
//

import SwiftUI

struct MainView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        TabView {
            YogaTabView()
                .tabItem {
                    Text("Yoga")
                    Image("yogaTab").renderingMode(.template).frame(width: 30, height: 30, alignment: .center)
                }.tag(0)
            ChatView()
                .tabItem { Text("Chat")
                    Image("chatTab").renderingMode(.template)}.tag(1)
            
            ArticlesView()
                .tabItem { Text("Articles")
                    Image("articlesTab").renderingMode(.template) }.tag(2)
            
            Settings()
                .tabItem {
                    Text("Settings")
                    Image("settingsTab").renderingMode(.template) }.tag(3).navigationBarTitle(Text(""), displayMode: .large)
            
        }
        .cornerRadius(30, corners: [.topLeft, .topRight]).edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
        .accentColor(brownColor)
        
    }
    
    var btnBack: some View {
        Button(action: {self.presentationMode.wrappedValue.dismiss()}) {
            HStack {
                Image(systemName: "arrow.backward")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
