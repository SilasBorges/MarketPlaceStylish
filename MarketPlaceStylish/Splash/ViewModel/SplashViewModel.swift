//
//  SplashViewModel.swift
//  MarketPlaceStylish
//
//  Created by Silas Borges on 18/07/26.
//

import SwiftUI
import Combine

class SplashViewModel: ObservableObject {
    
    @Published var uiState = SplashUiState.error("Teste")
    
    func onAppear() {
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            self.uiState = .loading
        }
    }
}
