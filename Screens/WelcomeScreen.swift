import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color(.white).edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image("Image Asset")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .padding(.horizontal)
                    Spacer()
                    PrimaryButton(title: "Get Started")
                    NavigationLink(
                        destination: SignInScreen().navigationBarHidden(true),
                        label: {
                            Text("Sign In")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.brown)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(50)
                                .shadow(color: Color.black.opacity(0.08), radius:60, x: 0.0, y:16)
                                .padding(.vertical)
                        })
                    .navigationBarHidden(true)
                    
                    HStack {
                        Text("New around here? ")
                            .foregroundColor(.black)
                        Text("Sign in")
                            .foregroundColor(.brown)
                    }
                }
                .padding()
            }
        }
        
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
