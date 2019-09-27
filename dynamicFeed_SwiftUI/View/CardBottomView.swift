//
//  CardBottomView.swift
//  dynamicFeed_SwiftUI
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct CardBottomView: View {
    var body: some View {
        return VStack(spacing: 20) {
            Rectangle()
                .frame(width: 60, height: 6)
                .cornerRadius(3)
                .opacity(0.4)
            Text("This certificate is proof that Max Gillespie has completed the UI Design Course")
                .lineLimit(3)
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .padding(.horizontal )
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 20)
        .offset(y: 600)
    }
}

struct CardBottomView_Previews: PreviewProvider {
    static var previews: some View {
        CardBottomView()
    }
}
