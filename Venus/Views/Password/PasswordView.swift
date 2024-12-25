import Foundation
import SwiftUI
import Combine
import MTKepler

struct PSPasswordView: View {
    @EnvironmentObject var router: Router
    @State private var length = 16
    @State private var password: String = ""
    
    var body: some View {
        VStack{
            PSNavbarComponent()
            
            TextField("选择长度", value: $length, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button("生成密码") {
                let randomCxxString = MTKepler.quark.PSRandom.randomString(Int32(length))
                self.password = String(randomCxxString)
            }
            .padding(.top, 12)
            
            Text(password)
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
    PSPasswordView()
        .modelContainer(for: Item.self, inMemory: true)
}
