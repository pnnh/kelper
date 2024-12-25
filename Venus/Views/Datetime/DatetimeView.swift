import Foundation
import SwiftUI
import Combine
import MTKepler

struct PSDatetimeView: View {
    @EnvironmentObject var router: Router
    
    
    var body: some View {
        Text(" PSDatetimeView")
    }
 
}



#Preview {
    PSDatetimeView( )
        .modelContainer(for: Item.self, inMemory: true)
}
