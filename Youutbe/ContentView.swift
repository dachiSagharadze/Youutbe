import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab: Int = 0
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            if selectedTab == 0 {
                homeView()
            } else if selectedTab == 1 {
                shortsView()
            } else if selectedTab == 2 {
                createVideo()
            } else if selectedTab == 3 {
                subscriptionView()
            } else if selectedTab == 4 {
                youView()
            }
            Spacer()
            
            HStack(spacing: 0) {
                navButton(text: "Home", image: "house", selectedImage: "house.fill" , index: 0)
                
                navButton(text: "Shorts", image: "play.rectangle.on.rectangle", selectedImage: "play.rectangle.on.rectangle.fill" , index: 1)
                
                navButton(text: "", image: "plus.circle", selectedImage: "plus.circle.fill" , index: 2, size: 36)
                
                navButton(text: "Subscription", image: "play.square.stack", selectedImage: "play.square.stack.fill" , index: 3)
                
                navButton(text: "You", image: "person.crop.circle", selectedImage: "person.crop.circle.fill" , index: 4)
            }
            .background(Color.black)
            .foregroundColor(.white)
        }
        .preferredColorScheme(.dark)
    }
    
    private func navButton(text: String, image: String, selectedImage: String , index: Int, size: CGFloat = 24) -> some View {
        VStack{
            Button(action: {
                selectedTab = index
            }) {
                Image(systemName: selectedTab == index ? selectedImage : image)
                    .font(.system(size: size))
                    .foregroundColor(.white)
            }
            .buttonStyle(NoTapAnimationStyle())
            Text(text)
                .font(.system(size: 12))
        }
        .frame(maxWidth: .infinity)
    }
    
}

struct NoTapAnimationStyle: PrimitiveButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .contentShape(Rectangle())
            .onTapGesture(perform: configuration.trigger)
    }
}

#Preview {
    ContentView()
}
