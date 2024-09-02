//
//  VerificationView.swift
//  chat
//
//  Created by Abdal Shah on 02/09/2024.
//

import SwiftUI

struct VerificationView: View {
    var body: some View {
        VStack( content: {
            Text(AppStrings.verificationCode).bold().padding(.horizontal,20)
            Spacer()
            
            OTPTextField(numberOfFields: 6)
            HStack(content: {
                Text("Didn't get a code?").foregroundStyle(.gray).bold()
                Text("Resend").foregroundStyle(.blue).bold()
            }).padding(.top,20)
         
            
            Spacer()
            Button(action: {
                
            }, label: {
              
                Text("Continue").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).padding().background(.blue).foregroundColor(.white).clipShape(.rect(cornerRadius: 20))
            })
        }).padding().frame(width: .infinity,height: .infinity)
       
    }
}

#Preview {
    VerificationView()
}
