//
//  OTPTextField.swift
//  chat
//
//  Created by Abdal Shah on 02/09/2024.
//

import SwiftUI

struct OTPTextField: View {
   
    let numberOfFields: Int
    @State var enterValue: [String]
    @FocusState private var fieldFocus: Int?
    
    
    init(numberOfFields: Int) {
        self.enterValue = Array(repeating: "", count: numberOfFields)
        self.numberOfFields = numberOfFields
    }
    var body: some View {
        
        
        
        HStack(content: {
            ForEach(0..<numberOfFields) { index in
                TextField("", text: $enterValue[index]).frame(width: 48,height: 48).background(fieldFocus != index  ? .gray.opacity(0.2) : .blue.opacity(0.2)).clipShape(.rect(cornerRadius: 5)).multilineTextAlignment(.center).focused($fieldFocus,equals: index).tag(index).onChange(of: enterValue[index]) { oldValue, newValue in
                    fieldFocus = (fieldFocus ?? 0) + 1
                }
                
            }
        })
  
        
    }
}


#Preview {
    OTPTextField(numberOfFields: 6)
}
