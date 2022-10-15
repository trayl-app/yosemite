import ReusableButton
import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var vm: HomeViewModel

    var body: some View {
        ReusableButton {
            vm.createFirebaseUser(email: "b@b.it", password: "123456")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(HomeViewModel())
    }
}
