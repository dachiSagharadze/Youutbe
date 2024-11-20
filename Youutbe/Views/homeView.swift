//
//  homeView.swift
//  Youutbe
//
//  Created by Dachi Sagharadze on 05.11.24.
//

import SwiftUI

struct homeView: View {
    var body: some View {
        HStack {
            topNavButton(image: "sun.min")
            Spacer()
            topNavButton(image: "sun.min")
            topNavButton(image: "sun.min")
            topNavButton(image: "sun.min")
        }
        .padding(16)
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(videos) { video in
                    VideoRow(video: video)
                        .padding(.horizontal)
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

private func topNavButton(image: String, size: CGFloat = 24) -> some View {
    Button(action: {}) {
        Image(systemName: image)
            .font(.system(size: size))
    }
    .buttonStyle(NoTapAnimationStyle())
}

#Preview {
    ContentView()
}
