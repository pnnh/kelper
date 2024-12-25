import Foundation
import SwiftUI
import Combine
import MTKepler

struct PSUUIDView: View {
    @EnvironmentObject var router: Router
    
    @State private var uuidString: String = ""
    
    var body: some View {
        VStack{
            PSNavbarComponent()
            
            Button("点击生成UUID") {
                let cxxUUIDString = MTKepler.quark.MTUUID.generateUUID();
                self.uuidString = String(cxxUUIDString)
            }
            .padding(.top, 12)
            
            Text(uuidString)
        }
        .frame(
          minWidth: 0,
          maxWidth: .infinity,
          minHeight: 0,
          maxHeight: .infinity,
          alignment: .topLeading
        ).padding(0)
        .background(Color.white)
    }
 
}



#Preview {
    PSUUIDView()
        .modelContainer(for: Item.self, inMemory: true)
}
