//
//  ContentView.swift
//  dynamicFeed_SwiftUI
//
//  Created by Max Gillespie on 9/26/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @State var viewState = CGSize(width: 0, height: 40)
    
    var body: some View {
        ZStack {
            TitleView()
                .blur(radius: show ? 10 : 0)
                .animation(.default)
            
            CardBottomView()
                .blur(radius: show ? 10 : 0)
                .animation(.default)
            
            CardView()
                .offset(x: 0, y: show ? -400 : 0)
                .scaleEffect(0.85)
                .rotationEffect(Angle(degrees: show ? 15 : 0))
//                .rotation3DEffect(Angle(degrees: show ? 50 : 0), axis: (x: CGFloat(1.0), y: CGFloat(1.0), z: CGFloat(1.0)))
                .animation(.spring())
                .offset(x: viewState.width, y: viewState.height - 20)
            
            CardView()
                .offset(x: 0, y: show ? -200 : 0)
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees: show ? 10 : 0))
//                .rotation3DEffect(Angle(degrees: show ? 40 : 0), axis: (x: CGFloat(1.0), y: CGFloat(1.0), z: CGFloat(1.0)))
                .animation(.spring())
                .offset(x: viewState.width, y: viewState.height)
            
            CertificateView()
                .scaleEffect(0.95)
                .offset(x: viewState.width, y: viewState.height)
                .rotationEffect(Angle(degrees: show ? 5 : 0))
//                .rotation3DEffect(Angle(degrees: show ? 30 : 0), axis: (x: CGFloat(1.0), y: CGFloat(1.0), z: CGFloat(1.0)))
                .animation(.default)
                .onTapGesture {
                    self.show.toggle()
            }
            .gesture(
                DragGesture()
                    .onChanged { value in
                        self.viewState = value.translation
                        self.show = true
                }
                .onEnded { value in
                    self.viewState = CGSize(width: 0, height: 40)
                    self.show = false
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
