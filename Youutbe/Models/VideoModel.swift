import Foundation
import SwiftUI

struct Video: Identifiable {
    let id : UUID
    let Image : String
    let title : String
}

var videos = [
    Video(id: UUID() ,Image: "video1", title: "this is video about me"),
    Video(id: UUID() ,Image: "Video2", title: "this is video about cars"),
    Video(id: UUID() ,Image: "Video2", title: "this is video about cars"),
    Video(id: UUID() ,Image: "Video2", title: "this is video about cars"),
    Video(id: UUID() ,Image: "Video2", title: "this is video about cars")
]


struct VideoRow: View {
    let video: Video

    var body: some View {
        VStack(alignment: .leading) {
            Image(video.Image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(8)
                .background(Color.white)
            Spacer()
            HStack {
                
                Image(video.Image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .background(Color.white)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(video.title)
                        .font(.headline)
                        .padding(.leading, 8)
                }

                
            }
            .padding(.bottom, 8)
            
            Spacer()
        }

    }
}

#Preview {
    ContentView()
}
