import SwiftUI

struct SignInScreen: View {
    @State private var email: String = ""
    var body: some View {
        ZStack {
            Color(.white).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                VStack {
                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.bottom, 30)
                    SocalLoginButton(image: Image(systemName: "apple.logo"), text: Text("Sign in with Apple"))
                    SocalLoginButton(
                        image: Image(systemName: "logo.xbox"), 
                        text: Text("Sign in with Google")
                            .foregroundColor(.red))
                    .padding(.vertical)
                    Text("or get a link emailed to you")
                        .foregroundColor(Color.black.opacity(0.4))
                    TextField("Work email address", text: $email)
                        .foregroundColor(.white)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.brown.opacity(0.9))
                        .cornerRadius(50)
                        .shadow(color: Color.black.opacity(0.08), radius:60, x: 0.0, y:16)
                        .padding(.vertical)
                    PrimaryButton(title: "Email Me a signup link")
                    
                }
                Spacer()
                Divider()
                Spacer()
                Text("You are completely safe.")
                    .foregroundColor(.black)
                Text("Read our Terms & Conditions.")
                    .foregroundColor(.brown)
                Spacer()
            }
            .padding()
        }
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}

struct SocalLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .foregroundColor(.black)
                .controlSize(.regular)
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
                .foregroundColor(.black)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50)
        .shadow(color: Color.black.opacity(0.08), radius:60, x: 0.0, y:16)
        
    }
}
