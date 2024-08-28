//
//  CreateAccount.swift
//  chat
//
//  Created by Abdal Shah on 27/08/2024.
//

import SwiftUI

struct CreateAccount: View {
    
    @State var EmailTText:String = ""
    @State var PassowrText:String = ""
    var body: some View {
        VStack(alignment:.leading ,content: {
            Spacer()
            Text(AppStrings.createUrAccount).font(.system(size: 50,weight: .medium)).frame(alignment: .leading)
            TextField(AppStrings.email, text: $EmailTText).padding().background(.gray.opacity(0.1)).clipShape(.rect(cornerRadius: 10))
            SecureField(AppStrings.password, text: $PassowrText).padding().background(.gray.opacity(0.1)).clipShape(.rect(cornerRadius: 10))
            NavigationLink {
                Login()
            } label: {
                Text(AppStrings.signup).foregroundStyle(.white).bold().frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).padding().background(.blue.opacity(0.6)).clipShape(.rect(cornerRadius: 20)).padding(.top,20)
            }
            
       
         
            HStack(content: {
                Text(AppStrings.alreadyAccounnt).foregroundStyle(.gray.opacity(0.8)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 16))
              
                NavigationLink {
                    
                    withAnimation {
                        Login()
                    }
                  
                } label: {
                    Text(AppStrings.signIn).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 16))

                }
                
                
              
            }).frame(maxWidth: .infinity).padding(.top,20)
            
            Spacer()
            Text(AppStrings.agreeToOur).foregroundStyle(.gray.opacity(0.8)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 16)).frame(maxWidth: .infinity)
            HStack(content: {
                Text(AppStrings.terms).foregroundStyle(.blue.opacity(0.6)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 16))
                Text(AppStrings.and).foregroundStyle(.gray.opacity(0.8)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 16))
                Text(AppStrings.privacy).foregroundStyle(.blue.opacity(0.6)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 16))
               
            }).frame(maxWidth: .infinity)
        }).frame(width: .infinity,alignment: .leading).padding(.horizontal)
        
    }
}

#Preview {
   ContentView()
}
