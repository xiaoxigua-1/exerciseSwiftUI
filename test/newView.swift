//
//  newView.swift
//  test
//
//  Created by ptivs-mac2 on 2022/7/5.
//

import SwiftUI


struct newView: View {
    @State var alter = false
    @State var value: Double = 0
    @State var date = Date()
    @State var time = Date()
    var body: some View {
        VStack {
            Button("Abc") {
                alter = true
            }.popover(isPresented: $alter) {
                VStack{
                    VStack {
                        HStack {
                            Text("新增體溫紀錄")
                                .bold()
                            Spacer()
                        }
                        Text("\(Int(value)) 度")
                        Slider(value: $value, in: 0...10)
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
                    }.padding(.horizontal, 30)
                }
            }
        }
    }
}

struct newView_Previews: PreviewProvider {
    static var previews: some View {
        newView()
    }
}
