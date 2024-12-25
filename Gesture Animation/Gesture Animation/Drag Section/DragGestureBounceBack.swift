
import SwiftUI

struct DragGestureBounceBack: View {
    @State private var offset: CGSize = .zero
    var body: some View {
        NavigationStack {
            
            VStack {
                Squares()
                Spacer()
                NiceTextView(
                    text: "Hello World!",
                    bgColor: .black.opacity(0.7),
                    fgColor: .orange.opacity(0.85),
                    radius: 10
                    
                )
                .offset(offset)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            offset = value.translation
                            
                        }
                        .onEnded{ _ in
                            withAnimation(.spring()) {
                                offset = .zero
                            }
                             
                        }
                )
                
                Spacer()
            }
            .navigationTitle("Drag and Bounce Back")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DragGestureBounceBack()
}
