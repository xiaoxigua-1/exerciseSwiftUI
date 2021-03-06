//
//  newView.swift
//  test
//
//  Created by ptivs-mac2 on 2022/7/5.
//

import SwiftUI
import CoreData



func text_padding(value: Double) -> Double {
    let a = ((value - 30) / 15) * (UIScreen.main.bounds.width - 150) - 10
    if a < 0 {
        return 0
    } else if a > UIScreen.main.bounds.width - 191 {
        return (UIScreen.main.bounds.width - 191)
    } else {
        return  a
    }
}

struct newView: View {
    @State var alter = false
    @State var value: Double = 30
    @State var date = Date()
    @State var time = Date()
    @State var search = ""
    
    @FetchRequest(entity: TestData.entity(),sortDescriptors: []) var data_list: FetchedResults<TestData>
    @Environment(\.managedObjectContext) var context
    
    var body: some View {
        ZStack {
            Color(.sRGB, red: 0.3, green: 0.3, blue: 0.5, opacity: 1).edgesIgnoringSafeArea(.all)

            Color.blue
            VStack {
                ZStack {
                    // icon
                    TextField("Search", text: $search)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(10)
                        .padding()
                        .padding(.top, 20)
                }
                    
                List {
                    ForEach(data_list) { data in
                        Text("\(data.temperature)")
                    }
                }
                
                .frame(
                    maxWidth: .infinity, maxHeight: .infinity
                )
                .background(.white)
                .cornerRadius(20)
                .padding(.horizontal, 20)
                .padding(.bottom, 50)
                
                
                
                .navigationBarItems(trailing: Button("add") {
                    alter = true
                })
                Spacer()

            }
            

            if alter {
                ZStack {
                    Color.gray.opacity(0.7)
                    

                    VStack {
                        VStack {
                            HStack {
                                Text("??????????????????")
                                    .bold()
                                    .font(.system(size: 20))
                                Spacer()
                            }
                            HStack {
                                Text("\(Int(value)) ???")
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
                                Text("??????")
                                    .bold()
                                Spacer()
                            }
                            DatePicker("", selection: $date, displayedComponents: .date)
                                .labelsHidden()
                                .clipped()
                            DatePicker("", selection: $time, displayedComponents: .hourAndMinute)
                                .datePickerStyle(.wheel)
                                .frame(width: 90)
                            HStack {
                                Button(action: {
                                    alter = false
                                }) {
                                    Text("??????")
                                        .padding()
                                        .padding(.horizontal, 20)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(.gray, lineWidth: 2)
                                        )
                                }
                                .foregroundColor(.gray)
                                
                                Button(action: {
                                    let data = TestData(context: context)
                                    data.temperature = Int32(self.value)
                                    data.day = Date()
                                    data.time = Date()
                                    
                                    do {
                                        try context.save()
                                    } catch {
                                        let error = error as NSError
                                                    fatalError("An error occured: \(error)")
                                    }
                                    alter = false
                                }) {
                                    Text("??????")
                                }
                                .padding()
                                .padding(.horizontal, 20)
                                .background(.blue)
                                .cornerRadius(15)
                                .foregroundColor(.white)

                            }
                            .padding(.top, 10)
                        }.padding(30)
                    }
                    .background(.white)
                    .cornerRadius(20)
                    .padding(.horizontal, 40)
                    
                        

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
