//
//  LoadingButtonView.swift
//  MarketPlaceStylish
//
//  Created by Silas Borges on 28/07/26.
//

import SwiftUI

struct LoadingButtonView: View {
    
    var body: some View {
        ZStack {
            Button(action: {
                
            }, label: {
                Text("Login")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .padding(.horizontal, 16)
                    .background(Color.textRed)
                    .foregroundColor(.white)
                    .cornerRadius(6.0)
            })
        }
    }
}

#Preview {
    LoadingButtonView()
}
