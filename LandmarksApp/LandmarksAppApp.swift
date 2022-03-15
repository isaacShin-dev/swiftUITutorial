//
//  LandmarksAppApp.swift
//  LandmarksApp
//
//  Created by Isaac Shin on 2022/03/12.
//

import SwiftUI


@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
