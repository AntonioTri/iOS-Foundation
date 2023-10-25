//
//  EnviromentObservableApp.swift
//  EnviromentObservable
//
//  Created by Antonio Tridente on 25/10/23.
//

import SwiftUI

@main
struct EnviromentObservableApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ListItems())
            
        }
    }
}
