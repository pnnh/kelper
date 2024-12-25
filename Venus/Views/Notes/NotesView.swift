import Foundation
import SwiftUI
import Combine
import MTKepler

struct PSNotesView: View {
    @EnvironmentObject var router: Router
    var ownerName: String
    
    
    var body: some View {
        Text("\(ownerName) Notes")
    }
 
}


struct PSNotesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PSMainView()
        }
    }
}
