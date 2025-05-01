//
//  CalcsButtonView.swift
//  Calculator
//
//  Created by Pankaj Kumar Rana on 2/25/25.
//

import SwiftUI
struct CalcButtonModel: Identifiable {
    let id = UUID()
    let calcButton: CalcButton
    var color: Color = foregroundDigitsColor
}

struct RowOFCalcButtonModel: Identifiable {
    let id = UUID()
    let row: [CalcButtonModel]
}

struct CalcsButtonView: View {
    @Binding var currentComputation: String
    @Binding var mainResult: String
    
    let buttonData: [RowOFCalcButtonModel] = [
        RowOFCalcButtonModel(row: [
            CalcButtonModel(calcButton: .clear, color: foregroundTopButtonsColor),
            
            CalcButtonModel(calcButton: .negative, color: foregroundTopButtonsColor),
    
            CalcButtonModel(calcButton: .percent, color: foregroundTopButtonsColor),
    
            CalcButtonModel(calcButton: .divide, color: foregroundRightButtonColor),
    
    
        ]),
        
        RowOFCalcButtonModel(row: [
            CalcButtonModel(calcButton: .seven),
            CalcButtonModel(calcButton: .eight),
            CalcButtonModel(calcButton: .nine),
            CalcButtonModel(calcButton: .multiply,
                            color: foregroundRightButtonColor
                           )
        ]),
        
        RowOFCalcButtonModel(row: [
            CalcButtonModel(calcButton: .four),
            CalcButtonModel(calcButton: .five),
            CalcButtonModel(calcButton: .six),
            CalcButtonModel(calcButton: .divide,
                            color: foregroundRightButtonColor
                           )
        ]),
        
        RowOFCalcButtonModel(row: [
            CalcButtonModel(calcButton: .one),
            CalcButtonModel(calcButton: .two),
            CalcButtonModel(calcButton: .three),
            CalcButtonModel(calcButton: .add,
                            color: foregroundRightButtonColor
                           )
        ]),
        
        RowOFCalcButtonModel(row: [
            CalcButtonModel(calcButton: .undo),
            CalcButtonModel(calcButton: .zero),
            CalcButtonModel(calcButton: .decimal),
            CalcButtonModel(calcButton: .equal,
                            color: foregroundRightButtonColor
                           )
        ])

    ]

    var body: some View {
        Grid() {
            ForEach(buttonData) { rowOFCalcButtonModel in
                GridRow {
                    ForEach(rowOFCalcButtonModel.row) { calcButtonModel in
                        Button(
                            action: {
                                // Logic takes place here
                                print("Button Pressed")
                                buttonPressed(calcButton: calcButtonModel.calcButton)
                            },
                            label: {
                                ButtonView(
                                    calcButton: calcButtonModel.calcButton,
                                    fgColor: calcButtonModel.color,
                                    bgColor: buttonBackgroundColor)
                        })
                    }
                }
            }
        }
        .padding()
        .background(secondaryBackgroundCoolor.cornerRadius(20))
    }
    
    func buttonPressed(calcButton: CalcButton) {
        // Logic
        switch calcButton {
        case .clear: currentComputation = ""
            mainResult = ""
        
        case .equal, .negative:
            <#code#>

            
        case .decimal:
            <#code#>

        case .one:
            <#code#>
        case .two:
            <#code#>
        case .three:
            <#code#>
        case .four:
            <#code#>
        case .five:
            <#code#>
        case .six:
            <#code#>
        case .seven:
            <#code#>
        case .eight:
            <#code#>
        case .nine:
            <#code#>
        case .zero:
            <#code#>
        case .add:
            <#code#>
        case .substract:
            <#code#>
        case .divide:
            <#code#>
        case .multiply:
            <#code#>
        case .percent:
            <#code#>
        case .undo:
            <#code#>
        }
    }
}

#Preview {
    CalcsButtonView(currentComputation: .constant("5+1"), mainResult: .constant("6"))
}
