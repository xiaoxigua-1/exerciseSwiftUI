//
//  newView.swift
//  test
//
//  Created by ptivs-mac2 on 2022/7/5.
//

import SwiftUI


func text_padding(value: Double) -> Double {
    let a = ((value - 30) / 15) * (UIScreen.main.bounds.width - 80) - 10
    if a < 0 {
        return 0
    } else if a > UIScreen.main.bounds.width - 111 {
        return (UIScreen.main.bounds.width - 111)
    } else {
        return  a
    }
}

struct newView: View {
    @State var alter = false
    @State var value: Double = 1
    @State var date = Date()
    @State var time = Date()
    var body: some View {
        ZStack {
            Button("abc") {
                alter = true
            }
            if alter {
                ZStack {
                    Color.gray
                    

                    VStack {
                        VStack {
                            HStack {
                                Text("新增體溫紀錄")
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                Text("\(Int(value)) 度")
                                    .padding(.leading, text_padding(value: value))
                                Spacer()
                            }
                            Slider(value: $value, in: 30...45)
                            HStack {
                                Text("30.0")
                                Spacer()
                                Text("45.0")
                            }
                            HStack {
                                Text("日期")
                                    .bold()
                                Spacer()
                            }
                            DatePicker("", selection: $date, displayedComponents: .date)
                                .labelsHidden()
                                .clipped()
                            DatePicker("", selection: $time, displayedComponents: .hourAndMinute)
                                .datePickerStyle(.wheel)
                            HStack {
                                Button(action: {
                                    alter = false
                                }) {
                                    Text("取消")
                                        .padding()
                                        .padding(.horizontal, 30)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(.gray, lineWidth: 2)
                                        )
                                }
                                .foregroundColor(.gray)
                                
                                Button("確認") {
                                    
                                }
                                .padding()
                                .padding(.horizontal, 30)
                                .background(.blue)
                                .cornerRadius(15)
                                .foregroundColor(.white)

                            }
                            .padding(.top, 10)
                        }.padding(10)
                    }
                    .background(.white)
                    .cornerRadius(20)
                    .padding(.horizontal, 30)
                    
                        

                }.edgesIgnoringSafeArea(.all)
            }
        }
    }
}


struct newView_Previews: PreviewProvider {
    static var previews: some View {
        newView()
            .previewInterfaceOrientation(.portrait)
    }
}
