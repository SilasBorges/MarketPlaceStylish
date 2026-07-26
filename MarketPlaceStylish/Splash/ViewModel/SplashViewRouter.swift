//
//  SplashViewRouter.swift
//  MarketPlaceStylish
//
//  Created by Silas Borges on 26/07/26.
//

import SwiftUI

enum SplashViewRouter {
    
    static func makeSignInView() -> some View {
        let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
    }
}
