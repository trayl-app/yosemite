import SwiftUI

@main
struct yosemiteApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(HomeViewModel())
        }
    }
}
