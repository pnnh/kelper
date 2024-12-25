import Foundation
import SwiftUI
import Combine
import MTKepler

struct PSNavbarComponent: View {
    @EnvironmentObject var router: Router
    
    
    var body: some View {
        HStack {
            
            Image(.global)
                    .font(.system(size: 56))
                    .foregroundColor(.accentColor)
                    .onTapGesture {
                        
                        router.navigate(to: .home)
                    }
        }
    }
 
}



#Preview {
    PSUUIDView()
        .modelContainer(for: Item.self, inMemory: true)
}
