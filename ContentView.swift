import SwiftUI

struct ContentView: View {
    var body: some View {
        WelcomeScreen()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold/)
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color.brown)
            .cornerRadius(50)
    }
}


