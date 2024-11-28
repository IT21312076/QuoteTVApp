import SwiftUI

struct MoodView: View {
    let moodQuotes = [
        "😀": "Stay happy and positive!",
        "😢": "It's okay to feel sad sometimes.",
        "😡": "Take deep breaths and relax."
    ]
    
    @State private var selectedEmoji: String? = nil
    
    var body: some View {
        ZStack {
            // Gradient background (blue to purple)
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.6), Color.purple.opacity(0.4)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Select Your Mood")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 50)
                
                HStack {
                    ForEach(moodQuotes.keys.sorted(), id: \.self) { emoji in
                        Button(action: {
                            selectedEmoji = emoji
                        }) {
                            Text(emoji)
                                .font(.system(size: 100))
                                .padding()
                                .background(Color.white.opacity(0.7))
                                .cornerRadius(25)
                                .shadow(radius: 10)
                        }
                    }
                }
                .padding()
                
                if let emoji = selectedEmoji {
                    Text(moodQuotes[emoji]!)
                        .font(.title)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(15)
                        .padding(.top, 30)
                }
            }
        }
    }
}
