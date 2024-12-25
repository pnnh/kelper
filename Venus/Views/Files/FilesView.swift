import Foundation
import SwiftUI
import Combine
import MTKepler

struct PSFilesView: View {
    @EnvironmentObject var router: Router

    var body: some View {
        
        Button("**Go to Jane's Bedroom**") {
            router.navigate(to: .notes(owner: "Jane"))
        }
        .padding(.top, 12)
    }
 
}


struct PSFilesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PSMainView()
        }
    }
}
