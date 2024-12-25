import Foundation
import SwiftUI
import Combine
import MTKepler

struct PSImageView: View {
    @EnvironmentObject var router: Router
    
    
    var body: some View {
        Text("Images")
    }
 
}


#Preview {
    PSImageView( )
        .modelContainer(for: Item.self, inMemory: true)
}
