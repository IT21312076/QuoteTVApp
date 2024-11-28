import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MotivationView()
                .tabItem {
                    Label("Motivation", systemImage: "star.fill")
                }
            
            MoodView()
                .tabItem {
                    Label("Mood", systemImage: "face.smiling")
                }
            
            OtherQuotesView()
                .tabItem {
                    Label("Others", systemImage: "quote.bubble")
                }
        }
        .accentColor(.purple) // Accent color for the tab items
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("Apple TV 4K")
    }
}
