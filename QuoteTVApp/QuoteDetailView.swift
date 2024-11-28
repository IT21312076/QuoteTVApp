import SwiftUI

struct QuoteDetailView: View {
    let quote: Quote
    
    // Access the presentation mode to dismiss the view
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            // Background Gradient
            LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                // Custom Back Button
                HStack {
                    Button(action: {
                        // Dismiss the view (go back)
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "arrow.left.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                    }
                    .padding(.top, 50)
                    
                    Spacer()
                }
                
                Text(quote.text)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                
                Text("— \(quote.author)")
                    .font(.title2)
                    .foregroundColor(.white)
                
                Text(quote.description)
                    .font(.body)
                    .foregroundColor(.white)
                    .padding()
                
                Spacer()
            }
            .padding()
        }
    }
}
