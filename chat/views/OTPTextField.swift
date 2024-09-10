//
//  OTPTextField.swift
//  chat
//
//  Created by Abdal Shah on 02/09/2024.
//

import SwiftUI

struct OTPTextField: View {
    @State var enterValue = ""
    var body: some View {
        
        
        TextField("", text: $enterValue).frame(width: 48,height: 48).background(.gray.opacity(0.4)).clipShape(.rect(cornerRadius: 5)).multilineTextAlignment(.center)
    }
}


#Preview {
    OTPTextField()
}
