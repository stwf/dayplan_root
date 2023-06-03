//  ContentView.swift
import SwiftUI
import LiveViewNative

@MainActor
struct ContentView: View {
    @StateObject private var session: LiveSessionCoordinator<EmptyRegistry> = {
        var config = LiveSessionConfiguration()

        return LiveSessionCoordinator(URL(string: "http://127.0.0.1:4000/start")!, config: config)
    }()

    var body: some View {
        LiveView(session: session)
    }
}
