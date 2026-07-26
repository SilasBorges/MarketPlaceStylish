//
//  SplashViewModel.swift
//  MarketPlaceStylish
//
//  Created by Silas Borges on 18/07/26.
//

import SwiftUI
import Combine

class SplashViewModel: ObservableObject {
    
    @Published var uiState: SplashUiState = .loading
    
    func onAppear() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.uiState = .goToWelcomeFlow
        }
    }
}

extension SplashViewModel {
    func SignInView() -> some View {
        return SplashViewRouter.makeSignInView()
    }
}
