import SwiftUI

struct OtherQuotesView: View {
    let quotes = [
        "Life is beautiful.",
        "Time is precious.",
        "Learning never stops."
    ]
    
    @State private var currentQuote: String = ""
    
    var body: some View {
        ZStack {
            // Gradient background (soft peach to pink)
            LinearGradient(gradient: Gradient(colors: [Color.orange.opacity(0.4), Color.pink.opacity(0.3)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Quote of the Day")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 50)
                
                Text(currentQuote)
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(10)
                    .transition(.slide)
                    .padding(.top, 30)
            }
        }
        .onAppear {
            withAnimation {
                currentQuote = quotes.randomElement() ?? "Keep going!"
            }
        }
    }
}
