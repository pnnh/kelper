 

import SwiftUI
import SwiftData

struct PSMainView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @EnvironmentObject var router: Router

    var body: some View {
        VStack {
                   Image(systemName: "house.fill")
                       .font(.system(size: 56))
                       .foregroundColor(.accentColor)
                   Text("**Home**")
                       .font(.system(size: 24))
                   
            Button {
                       router.navigate(to: .files)
                   } label: {
                       Text("**Go to Files**")
                   }
                   .padding(.top, 12)

               }
               .padding()
    }
}

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
