//
//  SplashView.swift
//  MarketPlaceStylish
//
//  Created by Silas Borges on 18/07/26.
//

import SwiftUI

struct SplashView: View {
    
    @ObservedObject var viewModel: SplashViewModel
    
    var body: some View {
        Group {
            switch viewModel.uiState {
            case .loading:
                loadingView()
            case .goToWelcomeFlow:
                Text("Tela de welcome")
            case .error(let msg):
                loadingView(error: msg)
            }
        }.onAppear(perform: viewModel.onAppear)
    }
}

extension SplashView {
    func loadingView(error: String? = nil) -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .padding(32)
            
            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(title: Text("Stylish"), message: Text(error), dismissButton: .default(Text("Ok")) {
                            // faz algo quando some o alerta
                        })
                    }
            }
        }
    }
}

#Preview {
    let viewModel = SplashViewModel()
    SplashView(viewModel: viewModel)
}
