
import SwiftUI

struct GameOfLifeView: View {
    
    @State private var board: BoardModel = BoardModel(gridSize: 50)
    @State private var selectedDesign: DesignType = .tub
    @State private var swapXY:Bool = false
    @State private var currentImage: ImageResource = .mountain1
    @State private var showImage:Bool = true
    @State private var isPlaying = true
    
    @State private var timer: Timer?
    
    @State private var speed = 200.0
    @State private var showDesignSelectionView = true
    
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                // Title
                TitleView()
                Spacer()
                
                BoardView(
                    board: $board,
                    selectedDesign: $selectedDesign,
                    swapXY: $swapXY,
                    currentImage: $currentImage,
                    showImage: $showImage
                )

                
                Spacer()
                
                if showDesignSelectionView {
                    DesignSelectionView(
                        selectedDesign: $selectedDesign,
                        swapXY: $swapXY
                    )
                }
                
                
                
                ControleView(
                    showImages: $showImage,
                    currentImages: $currentImage,
                    speed: $speed,
                    isPlaying: $isPlaying,
                    showDesignSelectionView: $showDesignSelectionView, board: $board
                )

            }
            .padding()
        }
        .onAppear {
            // Start Game
            startGame()
        }
        .onChange(of: speed) { _, _ in
            resetSpeed()
        }
    }
    
    func startGame() {
        timer?.invalidate() // Stop existing timer
        timer = Timer.scheduledTimer(
            withTimeInterval: 1 / speed,
            repeats: true,
            block: { _ in
                withAnimation {
                    if isPlaying{
                        // Next Generation
                        board.newGeneration()
                    }
                }
            }
        )
    }
    
    func stopGame() {
        timer?.invalidate()
        timer = nil
    }
    
    func resetSpeed() {
        stopGame()
        startGame()
    }
    
    // Reset Board and timer
    func resetGame() {
        board.clearBpard()
        stopGame()
    }
}


 
#Preview("Light Mode") {
    GameOfLifeView()
        .preferredColorScheme(.light)
    
}


#Preview("Dark Mode") {
    GameOfLifeView()
        .preferredColorScheme(.dark)
}
