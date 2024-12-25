 

import SwiftUI
import SwiftData

struct PSMainView: View {
    @Environment(\.modelContext) private var modelContext 
    @EnvironmentObject var router: Router

    var body: some View {
        
        Grid() {
                    GridRow {
                        VStack {
                            Image(.files)
                                .font(.system(size: 56))
                                .foregroundColor(.accentColor)
                            Text("资源管理器")
                                .onTapGesture() {
                                    print("Double tapped!")
                                    router.navigate(to: .files)
                                }
                        }
                        VStack {
                            Image(.notes)
                                .font(.system(size: 56))
                                .foregroundColor(.accentColor)
                            Text("笔记管理")
                                .onTapGesture() {
                                    print("Double tapped!")
                                    router.navigate(to: .notes(owner: "详细信息"))
                                }
                        }
                        VStack {
                            Image(.images)
                                .font(.system(size: 56))
                                .foregroundColor(.accentColor)
                            Text("图片管理")
                                .onTapGesture() {
                                    print("Double tapped!")
                                    router.navigate(to: .images)
                                }
                        }
                    }
                    GridRow {
                        VStack{
                            Image(.password)
                                .font(.system(size: 56))
                                .foregroundColor(.accentColor)
                            Text("随机密码生成")
                                .onTapGesture {
                                    
                                    router.navigate(to: .password)
                                }
                        }
                        
                            VStack {
                                Image(.uuid)
                                    .font(.system(size: 56))
                                    .foregroundColor(.accentColor)
                                Text("UUID生成器")
                                    .onTapGesture() {
                                        print("Double tapped!")
                                        router.navigate(to: .uuid)
                                    }
                            } 
                    }
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
    PSMainView()
        .modelContainer(for: Item.self, inMemory: true)
}
