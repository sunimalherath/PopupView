//
//  ContentView.swift
//  PopupView
//
//  Created by Sunimal Herath on 4/4/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showPopup = false
    var body: some View {
        ZStack {
            Button(action: {
                self.showPopup.toggle()
            }) {
                Text("Show")
            }
            
            if self.showPopup {
                GeometryReader {geo in
                    Popup2(width: geo.size.width, height: geo.size.height)
                }
                .background(Color.black.opacity(0.6).edgesIgnoringSafeArea(.all))
                
            }
        }
    }
}

struct Popup2: View {
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .path(in: CGRect(x: width/8, y: height/8, width: 3*width/4, height: 3*height/4))
            .fill(Color.white)
            .shadow(radius: 6)
            .cornerRadius(10.0)
    }
}

struct Popup: View {
    var body: some View {
        ZStack(alignment: .center) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 200.0, height: 400.0)
                
            Text("This is the popup view")
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
