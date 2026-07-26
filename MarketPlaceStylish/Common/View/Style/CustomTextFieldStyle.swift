//
//  CustomTextFieldStyle.swift
//  MarketPlaceStylish
//
//  Created by Silas Borges on 24/07/26.
//

import SwiftUI

struct CustomTextFieldStyle : TextFieldStyle {
    public func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.vertical, 16)

    }
}

