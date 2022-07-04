//
//  login.swift
//  test
//
//  Created by ptivs-mac2 on 2022/7/2.
//

import SwiftUI

struct login: View {
    @State var text = ""
    var body: some View {
        NavigationView {
            VStack {
                Image("a")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                    .scaledToFill()
                    .clipShape(Circle())
                Text("防疫ＸＸＸ\naaa")
                    .multilineTextAlignment(.center)
                VStack {
                    TextField("帳號", text: $text)
                }.lineTextField()
                    .padding(.horizontal, 50)
                
                VStack {
                    TextField("密碼", text: $text)
                }.lineTextField()
                    .padding(.horizontal, 50)
                Button(action: {}) {
                    Text("登入")
                        .padding(.horizontal, 50)
                        .padding(.vertical, 5)
                        .background(.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }.padding(.top, 30)
                
                Spacer()
            }
            
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

extension View {
    func lineTextField() -> some View {
        self.padding(10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(.gray)
        
    }
}

struct login_Previews: PreviewProvider {
    static var previews: some View {
        login()
            .previewInterfaceOrientation(.portrait)
    }
}
