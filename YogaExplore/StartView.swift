//
//  ContentView.swift
//  YogaExplore
//
//  Created by Keyi Zhu on 9/24/20.
//

import SwiftUI
//hexStringToUIColor(hex: "#B9A089")
struct StartView: View {    
    var body: some View {
        NavigationView {
            NavigationLink(destination: MainView()) {
                Text("Start")
                    .frame(width: 120, height: 35, alignment: .center)
                    .foregroundColor(.white)
                    .background(brownColor)
                    .cornerRadius(20)
                    .shadow(color: brownColor.opacity(0.4), radius: 10, x: 10, y: 10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
