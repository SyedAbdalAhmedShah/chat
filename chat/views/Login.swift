//
//  Login.swift
//  chat
//
//  Created by Abdal Shah on 28/08/2024.
//

import SwiftUI

struct Login: View {
    @State var EmailTText:String = ""
    @State var PassowrText:String = ""
    var body: some View {
        VStack(alignment:.leading ,content: {
            Text(AppStrings.loginUrAccount).font(.system(size: 50,weight: .medium)).frame(alignment: .leading)
            TextField(AppStrings.email, text: $EmailTText).padding().background(.gray.opacity(0.1)).clipShape(.rect(cornerRadius: 10))
            SecureField(AppStrings.password, text: $PassowrText).padding().background(.gray.opacity(0.1)).clipShape(.rect(cornerRadius: 10))
        }).frame(width: .infinity,alignment: .leading).padding(.horizontal)
        
    }
}

#Preview {
    Login()
}
