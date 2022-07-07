//
//  SingUpView.swift
//  test
//
//  Created by ptivs-mac2 on 2022/7/4.
//

import SwiftUI

struct SingUpView: View {
    @State var text = ""
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                VStack {
                    Text("註冊").font(.system(size: 30))
                    HStack {
                        VStack {
                            TextField("姓名", text: $text)
                        }.lineTextField()
                        VStack {
                            TextField("性別", text: $text)
                        }.lineTextField()
                    }
                    VStack {
                        TextField("電話", text: $text)
                    }.lineTextField()
                    VStack {
                        TextField("身分證", text: $text)
                    }.lineTextField()
                    VStack {
                        TextField("健保卡", text: $text)
                    }.lineTextField()
                    VStack {
                        TextField("E-Mail", text: $text)
                    }.lineTextField()
                    VStack {
                        TextField("居住地址", text: $text)
                    }.lineTextField()
                    VStack {
                        TextField("設定密碼", text: $text)
                    }.lineTextField()
                        .padding(.top, 40)
                    VStack {
                        TextField("再次輸入密碼", text: $text)
                    }.lineTextField()
                    
                    Button(action: {}) {
                        Text("註冊")
                            .padding(.horizontal, 70)
                            .padding(.vertical, 10)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                }
                .padding(30)
            }
            
            .background()
            .cornerRadius(20)
            .padding(.horizontal, 20)
            
            
                
            .navigationTitle("註冊")
        }
    }
}

struct SingUpView_Previews: PreviewProvider {
    static var previews: some View {
        SingUpView()
    }
}
