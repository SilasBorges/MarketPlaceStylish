//
//  EditTextView.swift
//  MarketPlaceStylish
//
//  Created by Silas Borges on 24/07/26.
//

import SwiftUI

struct EditTextView: View {
    
    @Binding var text: String
    var icon: String
    
    var placeholder: String = ""
    
    var body: some View {
        HStack {
            
            Image(systemName: icon)
                .foregroundColor(.iconEditText)
            
            TextField(placeholder, text: $text)
                .foregroundColor(Color("EditTextGray"))
                .keyboardType(.emailAddress)
                .textFieldStyle(CustomTextFieldStyle())
    
            
        }
        .padding(.leading, 8)
        .background(Color("EditTextBackground"))
            .overlay(
                RoundedRectangle(cornerRadius: 8.0)
                    .stroke(Color("EditTextBorder"), lineWidth: 0.8)
            )
    }
}

#Preview {
    EditTextView(text: .constant("Username or Email"), icon: "person.fill", placeholder: "E-mail")
}
