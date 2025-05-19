//
//  AnalogClock.swift
//  Digital And Analog Clocks
//
//  Created by Pankaj Kumar Rana on 5/19/25.
//

import SwiftUI

struct AnalogClock: View {
    var body: some View {
        TimelineView(.animation) { timeline in
            let date = timeline.date
            ClockView(date: date)
            
        }
        .frame(width: 200, height: 200)
    }
}

struct ClockView: View {
    let date: Date
    let centerPointRadius = 3.0
    let circleInset = 10.0

    var body: some View {
//        Text(date.formatted(date: .omitted, time: .standard))
        Canvas{
            context,
            size in
            let center = CGPoint(x: size.width / 2, y: size.height / 2)
            
            let calender = Calendar.current
            let radius = min(size.width, size.height) / 2 - circleInset

            
            let seconds = calender.component(.second, from: date)
            let minutes = calender.component(.minute, from: date)
            let hours = calender.component(.hour, from: date) % 12
            
            // Angles for the Clock Hands
            func angle(for value: Int, unit: Int) -> Angle {
                .degrees(Double(value) / Double(unit) * 360 - 90 )
            }
            
            // Clock Hands
            
            let secondAngle = angle(for: seconds, unit: 60)
            let minuteAngle = angle(for: minutes, unit: 60)
            let hourAngle = angle(for: hours * 5 + minutes / 12, unit: 60)
            
            // Draw the clock face circle
            let circleRect = CGRect(
                x: center.x - radius,
                y: center.y - radius,
                width: 2 * radius,
                height: 2 * radius
            )
            
            let circlePath = Path(ellipseIn: circleRect)
            context.stroke(circlePath, with: .color(.gray), lineWidth:  4)
            
            
            // Adding Hands
            
            func hand(at angle: Angle, length: CGFloat, color: Color) {
                var path = Path()
                let angleRadius: Double = Double(angle.radians)
                
                
                let end = toPolar(
                    center: center,
                    angle: angle.radians,
                    radius: length
                )
                
                
                path.move(to: center)
                path.addLine(to: end)
                context.stroke(path, with: .color(color), lineWidth: 2)
            }
            hand(at: hourAngle, length: size.width * 0.25, color: .primary)
            hand(at: minuteAngle, length: size.width * 0.35, color: .primary)
            hand(at: secondAngle, length: size.width * 0.4, color: .red)

            // Draw Clock Numbers 1...12
            
            for hour in 1...12 {
                let angle = Angle.degrees(Double(hour) / 12 * 360 - 90)
                let text = Text("\(hour)")
                    .font(.system(size: 12)).bold()
                
                let textSize = context.resolve(text).measure(in: CGSize(width: 100, height: 100))
                let textRadius = radius * 0.8
                
                let textXY = toPolar(
                    center: center,
                    angle: angle.radians,
                    radius: textRadius,
                    translation: CGPoint(
                        x: -textSize.width / 2,
                        y: -textSize.height / 2 )
                )
                
                
                context
                    .draw(
                        text,
                         at: CGPoint(x: textXY.x + textSize.width / 2, y: textXY.y + textSize.height / 2))
            }
            
            // Center Dot
            
            let centerCircle = Path(ellipseIn: CGRect(x: center.x - centerPointRadius, y: center.y - centerPointRadius, width: 2 * centerPointRadius, height: 2 * centerPointRadius))
            
            context.fill(centerCircle, with: .color(.black))
            
            // Tick marks for minutes and hours
            
            for i in 0..<60 {
                let angle = Angle(degrees: Double(i) / 60 * 360 - 90)
                let ishoursTick = i % 5 == 0
                let tickLength: CGFloat = ishoursTick ? 10 : 4
                let lineWidth: CGFloat = ishoursTick ? 2 : 1
                
                let outer = toPolar(
                    center: center,
                    angle: angle.radians,
                    radius: radius
                )
                
                let inner = toPolar(
                    center: center,
                    angle: angle.radians,
                    radius: radius - tickLength
                )
                
                var path = Path()
                path.move(to: inner)
                path.addLine(to: outer)
                
                context.stroke(
                    path,
                    with: .color(.gray),
                    lineWidth: lineWidth
                )
            }
            
            
        }
    }
    func toPolar(center: CGPoint, angle: CGFloat, radius: CGFloat, translation: CGPoint = .zero) -> CGPoint {
        CGPoint(
            x: center.x + cos(Double(angle)) * radius + translation.x,
            y: center.y + sin(Double(angle)) * radius + translation.y)
    }
}

#Preview {
    VStack(spacing: 40) {
        
        Text("SwiftUI Canvas And TimeLine View")
            .font(.title2)
            .bold()
        
        DigitalClock()
        
        AnalogClock()
    }
}
