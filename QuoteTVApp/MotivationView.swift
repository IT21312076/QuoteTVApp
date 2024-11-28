import SwiftUI

struct MotivationView: View {
    let quotes = [
        Quote(text: "Believe in yourself", author: "John Doe", description: "Always trust in your potential."),
        Quote(text: "Never give up", author: "Jane Smith", description: "Persistence leads to success."),
        Quote(text: "Success is not final", author: "Winston Churchill", description: "The journey is always ongoing, keep moving forward.")
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                // Gradient Background: Soft Blue to Peach
                LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.pink.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Motivation Quotes")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 50)
                    
                    List(quotes) { quote in
                        NavigationLink(destination: QuoteDetailView(quote: quote)) {
                            VStack(alignment: .leading) {
                                Text(quote.text)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.black.opacity(0.6))
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                                
                                Text("- \(quote.author)")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding([.leading, .bottom])
                            }
                            .padding(.vertical, 5)
                        }
                    }
                    .listStyle(PlainListStyle())
                }
            }
        }
    }
}

struct Quote: Identifiable {
    let id = UUID()
    let text: String
    let author: String
    let description: String
}
