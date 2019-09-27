//
//  CardView.swift
//  dynamicFeed_SwiftUI
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        return VStack {
            Text("Card Back")
                .foregroundColor(Color.white)
        }
        .frame(width: 300, height: 220)
        .background(Color.blue)
        .cornerRadius(10)
        .shadow(radius: 20)
        .offset(x: 0, y: -20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
