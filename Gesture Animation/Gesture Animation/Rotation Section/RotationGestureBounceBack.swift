import SwiftUI

struct RotationGestureBounceBack: View {
    @State private var rotation: Double = 0.0
    var body: some View {
        NavigationStack {
            NiceTextView(
                text: "Hello world!",
                bgColor: .black,
                fgColor: .orange,
                radius: 10
            )
            .rotationEffect(
                Angle(
                    degrees: rotation
                )
            )
            .gesture(
                RotationGesture()
                    .onChanged{ value in
                        rotation = value.degrees
                        
                    }
                    .onEnded{ _ in
                        withAnimation(.spring()) {
                            rotation = .zero
                        }
                    }
            )
            .navigationTitle("Rotaion Demo Bounce Back")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RotationGestureBounceBack()
}
