//
//  ContentView.swift
//  PopupView
//
//  Created by Sunimal Herath on 4/4/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showingPopup = false
    var body: some View {
        Button(action: {
            self.showingPopup.toggle()
        }) {
            Text("Show Popup")
        }.sheet(isPresented: $showingPopup) {
            PopupRectView()
        }
    }
}

struct PopupRectView: View {
    var body: some View {
        Rectangle()
            .fill(Color.yellow)
            .frame(width: 200.0, height: 400.0)
            .shadow(color: .black, radius: 10, x: 1, y: 5)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
