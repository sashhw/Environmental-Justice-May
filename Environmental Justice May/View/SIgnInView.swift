//
//  LosAlamos.swift
//  Environmental Justice May
//
//  Created by Sasha on 6/6/21.
//


import SwiftUI


struct SignInView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var coordinator: SignInWithAppleCoordinator?
    
    
    
    var body: some View {
        VStack {
        Text("Login here")
            SignInWithAppleButton()
                .frame(width: 200, height: 45)
                
                .onTapGesture {
                    self.coordinator = SignInWithAppleCoordinator()
                    if let coordinator = self.coordinator {
                    coordinator.startSignInWithAppleFlow {
                        print("You successfully signed in")
                    self.presentationMode.wrappedValue.dismiss()
                }
    }
}
}
}
}
struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
