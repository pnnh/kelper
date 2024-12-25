import Foundation
import SwiftUI
import Combine
import MTKepler

struct PSPasswordView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        Text(" PSPassword")
    }
 
}


#Preview {
    PSPasswordView()
        .modelContainer(for: Item.self, inMemory: true)
}
