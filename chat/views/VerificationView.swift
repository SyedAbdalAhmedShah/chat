//
//  VerificationView.swift
//  chat
//
//  Created by Abdal Shah on 02/09/2024.
//

import SwiftUI

struct VerificationView: View {
    var body: some View {
        VStack(alignment: .trailing ,content: {
            Text(AppStrings.verificationCode).bold()
        }).padding().frame(width: .infinity,height: .infinity)
       
    }
}

#Preview {
    VerificationView()
}
