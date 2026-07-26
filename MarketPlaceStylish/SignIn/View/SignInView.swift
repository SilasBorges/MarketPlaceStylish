//
//  SignInView.swift
//  MarketPlaceStylish
//
//  Created by Silas Borges on 24/07/26.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Welcome \nBack!")
                        .font(.system(size: 36).bold())
                    
                    EditTextView(text: .constant("Username or Email"), icon: "person.fill", placeholder: "Email")
                        .padding(.top, 24)
                    
                    EditTextView(text: .constant("Password"), icon: "lock.fill",
                        placeholder: "Password")
                        .padding(.top, 16)
                }
                
                HStack() {
                    Spacer()
                    Text("Forgot Password?")
                }
                
                
                
            }.padding()
        }
    }
}

#Preview {
    let viewModel = SignInViewModel()
    SignInView(viewModel: viewModel)
}
