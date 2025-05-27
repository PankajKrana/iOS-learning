

import SwiftUI

struct ControleView: View {
    @Binding var showImages: Bool
    @Binding var currentImages: ImageResource
    @Binding var speed: Double
    @Binding var isPlaying: Bool
    @Binding var showDesignSelectionView: Bool
    @Binding var board: BoardModel
    
    
    var body: some View {
        VStack {
            Slider(
                value: $speed,
                in: 1...300,
                step: 0.5
            )
            
            HStack {
                // Play/Pause
                ButtonView(
                    name: ControleButtonType.playPause(isPlaying: isPlaying).systemImage,
                    action: {
                        isPlaying.toggle()
                    }
                )
                
                // Clear Button
                ButtonView(
                    name: ControleButtonType.clear.systemImage,
                    action: {
                        board.clearBpard()
                    }
                )
                
                // Refresh
                ButtonView(
                    name: ControleButtonType.refresh.systemImage,
                    action: {
                        board.randomBoard()
                    }
                )
                
                // Toggle show Image
                ButtonView(
                    name: ControleButtonType.toggleImage.systemImage,
                    action: {
                        showImages.toggle()                    }
                )
                
                // Change Image Randomly
                ButtonView(
                    name: ControleButtonType.changeImage.systemImage,
                    action: {
                        withAnimation {
                            currentImages = BackgroundImages.all
                                .randomElement() ?? .mountain1
                            
                        }
                    }
                )
                
                //  Toggle Creature Visibility
                ButtonView(
                    name: ControleButtonType.toggleVisibility(isHidden: showDesignSelectionView).systemImage,
                    action: {
                        withAnimation {
                            showDesignSelectionView.toggle()
                        }
                    }
                )

            }
        }
    }
}


struct ButtonView: View {
    let name: String
    let font: Font = Font.headline
    let color: Color = Color.white
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: name)
                .font(font)
                .foregroundColor(color)
                .padding(10)
                .background(Circle().fill(color.opacity(0.2)))
        }.frame(maxWidth: .infinity)

    }
}

enum ControleButtonType {
    case playPause(isPlaying: Bool)
    case refresh, clear , toggleImage, changeImage, toggleVisibility(isHidden: Bool)
    
    var systemImage: String {
        switch self {
            
        case .playPause(isPlaying: let isPlaying):
            isPlaying ? "pause" : "play"
        case .refresh:
            "arrow.counterclockwise"
        case .clear:
            "clear"
        case .toggleImage:
            "photo.on.rectangle"
        case .changeImage:
            "arrow.triangle.2.circlepath"
        case .toggleVisibility(isHidden: let isHidden):
            isHidden ? "ladybug" : "ladybug.slash"
        }
    }
}



#Preview {
    ZStack {
        Color.bg.ignoresSafeArea()
        
        ControleView(
            showImages: .constant(true),
            currentImages: .constant(.autumn1),
            speed: .constant(100.0),
            isPlaying: .constant(true),
            showDesignSelectionView: .constant(true), board: .constant(BoardModel(gridSize: 50))
        )
    }
}
