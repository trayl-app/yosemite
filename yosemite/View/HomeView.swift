import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    
    var body: some View {
        Button {
            vm.createUser()
        } label: {
            Text("Create User")
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(HomeViewModel())
    }
}
