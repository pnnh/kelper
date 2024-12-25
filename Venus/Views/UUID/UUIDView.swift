import Foundation
import SwiftUI
import Combine
import MTKepler

struct PSUUIDView: View {
    @EnvironmentObject var router: Router
    
    
    var body: some View {
        Text("  PSUUIDView")
    }
 
}



#Preview {
    PSUUIDView()
        .modelContainer(for: Item.self, inMemory: true)
}
