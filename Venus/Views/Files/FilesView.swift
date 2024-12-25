import Foundation
import SwiftUI
import Combine
import MTKepler

struct PSFilesView: View {
    @EnvironmentObject var router: Router

    var body: some View {
        VStack{
            PSNavbarComponent()
            
            Button("前往笔记页面") {
                router.navigate(to: .notes(owner: "Jane"))
            }
            .padding(.top, 12)
        }
        .frame(
          minWidth: 0,
          maxWidth: .infinity,
          minHeight: 0,
          maxHeight: .infinity,
          alignment: .topLeading
        )
        .background(Color.purple)
    }
 
}



#Preview {
    PSFilesView( )
        .modelContainer(for: Item.self, inMemory: true)
}
