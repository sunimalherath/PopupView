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
                withAnimation {
                    self.showPopup.toggle()
                }
            }, label: {
                Text("Show")
            })
            
            if self.showPopup {
                GeometryReader {_ in
                    Popup()
                }.background(
                    Color.black.opacity(0.60)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            withAnimation {
                                self.showPopup.toggle()
                            }
                    }
                )
            }
        }
    }
}

struct Popup: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            Button(action: {
                // what to do when Start pressed
            }) {
                Text("Start")
            }
        }
        .frame(width: 200, height: 400)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .alignmentGuide(HorizontalAlignment.center) { (_ ) -> CGFloat in
            10
        }
        .alignmentGuide(VerticalAlignment.center) { (_) -> CGFloat in
            10
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
