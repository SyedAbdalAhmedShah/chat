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
            Spacer()
            Text(AppStrings.loginUrAccount).font(.system(size: 50,weight: .medium)).frame(alignment: .leading)
            TextField(AppStrings.email, text: $EmailTText).padding().background(.gray.opacity(0.1)).clipShape(.rect(cornerRadius: 10))
            SecureField(AppStrings.password, text: $PassowrText).padding().background(.gray.opacity(0.1)).clipShape(.rect(cornerRadius: 10))
            
            NavigationLink {
                VerificationView().navigationTitle("Verification Code")
            } label: {
                Text(AppStrings.signIn).foregroundStyle(.white).bold().frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).padding().background(.blue.opacity(0.6)).clipShape(.rect(cornerRadius: 20)).padding(.top,20)
            }
            
            Text(AppStrings.forgotPassword).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 16)).foregroundStyle(.blue.opacity(0.4)).frame( maxWidth: .infinity ,alignment: .center).padding(.top,20)
            Spacer()
            
            HStack(content: {
                Text(AppStrings.dontHaveAcc).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 16)).foregroundStyle(.gray.opacity(0.4)).padding(.top,20)
                Text(AppStrings.signup).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 16)).foregroundStyle(.blue).padding(.top,20)
            }).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
          
        }).frame(width: .infinity,alignment: .leading).padding(.horizontal)
    
    }
}

#Preview {
    Login()
}
