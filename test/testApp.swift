//
//  testApp.swift
//  test
//
//  Created by ptivs-mac2 on 2022/6/28.
//

import SwiftUI

@main
struct testApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
