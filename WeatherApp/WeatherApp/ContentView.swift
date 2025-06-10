//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        GeometryReader { geometry in
//            ZStack(alignment: .top) {
//                Image("iOS-rainWallpaper")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: geometry.size.width, height: .infinity)
//                    .ignoresSafeArea()
//
//                ScrollView {
//                    VStack(spacing: 16) {
//                        VStack(spacing: 0){
//                            Text("Mumbai")
//                                .font(.system(size: 34, weight: .medium))
//                                .foregroundColor(.white)
//                                .padding(.top, 32)
//                                .shadow(radius: 5)
//
//                            Image(systemName: "cloud.sun.fill")
//                                .renderingMode(.original)
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 180, height: 180)
//
//                            Text("Partly Cloudy")
//                                .font(.system(size: 24))
//                                .foregroundColor(.white)
//                                .shadow(radius: 5)
//
//                            Text("35°C")
//                                .font(.system(size: 72))
//                                .foregroundColor(.white)
//                                .shadow(radius: 5)
//                        }
//
//                        VStack(alignment: .leading) {
//                            ScrollView(.horizontal, showsIndicators: false) {
//                                HStack(spacing: 24) {
//                                    ForEach(sampleDays, id: \.dayOfWeek) { day in
//                                        WeatherDayView(dayOfWeek: day.dayOfWeek, imageName: day.imageName, temperature: day.temperature)
//                                    }
//                                }
//                                .padding()
//                            }
//                        }
//                        .background(Color.black.opacity(0.8))
//                        .cornerRadius(16)
//                        .padding(.horizontal)
//                        
////                        ScrollView(.vertical){
////                            VStack(){
////                                
////                            }
////                        }
//
//                        Button(action: {
//                            print("Change day time tapped")
//                        }) {
//                            Text("Change day time")
//                                .font(.system(size: 20, weight: .medium))
//                                .padding()
//                                .frame(maxWidth: .infinity)
//                                .background(Color.black.opacity(0.8))
//                                .foregroundStyle(Color.white)
//                                .cornerRadius(12)
//                        }
//                        .padding(.horizontal)
//                        .padding(.bottom, 40) // For safe bottom padding
//                        
//                    }
//                    //Outer container Vertical Stack ends here
//                }
//                //scrollview ends here
//            }
//        }
//    }
//}
//
//
//struct WeatherDayView: View {
//    var dayOfWeek: String
//    var imageName: String
//    var temperature: Int
//    
//    var body: some View {
//        VStack(spacing: 8) {
//            Text(dayOfWeek)
//                .font(.system(size: 16, weight: .medium))
//                .foregroundColor(.white)
//            Image(systemName: imageName)
//                .resizable()
//                .scaledToFit()
//                .frame(width: 30, height: 30)
//                .foregroundColor(.white)
//            Text("\(temperature)°")
//                .font(.system(size: 20, weight: .medium))
//                .foregroundColor(.white)
//        }
//    }
//}
////sampleDays will be an array of all the different days. so an array of structs
//let sampleDays: [WeatherDay] = [
//    .init(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 34),
//    .init(dayOfWeek: "Wed", imageName: "sun.max.fill", temperature: 35),
//    .init(dayOfWeek: "Thu", imageName: "wind.snow", temperature: 40),
//    .init(dayOfWeek: "Fri", imageName: "wind", temperature: 34),
//    .init(dayOfWeek: "Sat", imageName: "snow", temperature: 34),
//    .init(dayOfWeek: "Sun", imageName: "cloud.rain", temperature: 34),
//]
//
////we efine the variables in struct WeatherDay here and then use this in sampleDays
//struct WeatherDay {
//    let dayOfWeek: String
//    let imageName: String
//    let temperature: Int
//}
//
//#Preview {
//    ContentView()
//}


import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                Image("iOS-rainWallpaper")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: .infinity)
                    .ignoresSafeArea()

                ScrollView {
                    VStack(spacing: 16) {
                        // Top Weather Info
                        VStack(spacing: 4) {
                            Text("Paris")
                                .font(.system(size: 34, weight: .medium))
                                .foregroundColor(.white)
                                .padding(.top, 32)
                                .shadow(radius: 5)

                            Text("47°")
                                .font(.system(size: 72))
                                .foregroundColor(.white)
                                .shadow(radius: 5)

                            Text("Heavy Rain")
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                                .shadow(radius: 5)

                            Text("H:62°  L:41°")
                                .font(.system(size: 16))
                                .foregroundColor(.white.opacity(0.9))
                        }

                        // Hourly Forecast Scroll st
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Rainy conditions tonight, continuing through the morning.")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .padding(.horizontal)

                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 24) {
                                    ForEach(hourlyData, id: \.time) { hour in
                                        VStack(spacing: 8) {
                                            Text(hour.time)
                                                .foregroundColor(.white)
                                                .font(.system(size: 14))

                                            Image(systemName: hour.imageName)
                                                .renderingMode(.original)
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 25, height: 25)

                                            Text("\(hour.chanceOfRain)%")
                                                .foregroundColor(.blue)
                                                .font(.system(size: 12))

                                            Text("\(hour.temperature)°")
                                                .foregroundColor(.white)
                                                .font(.system(size: 14))
                                        }
                                    }
                                }
                                .padding(.horizontal)
                            }
                        }
                        .padding(.vertical)
                        .background(Color.black.opacity(0.7))
                        .cornerRadius(16)
                        .padding(.horizontal)

                        // 10-Day Forecast
                        VStack(spacing: 12) {
                            Text("10-DAY FORECAST")
                                .foregroundColor(.white.opacity(0.7))
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)

                            ForEach(dailyForecast, id: \.day) { day in
                                HStack {
                                    Text(day.day)
                                        .foregroundColor(.white)
                                        .frame(width: 60, alignment: .leading)

                                    Image(systemName: day.imageName)
                                        .renderingMode(.original)
                                        .frame(width: 30)

                                    Text("\(day.chanceOfRain)%")
                                        .foregroundColor(.blue)
                                        .frame(width: 40)

                                    GeometryReader { geo in
                                        ZStack(alignment: .leading) {
                                            Capsule()
                                                .fill(Color.gray.opacity(0.3))
                                                .frame(height: 4)
                                            Capsule()
                                                .fill(Color.blue)
                                                .frame(width: geo.size.width * CGFloat(day.high - day.low) / 40, height: 4)
                                                .offset(x: geo.size.width * CGFloat(day.low - 30) / 40)
                                        }
                                    }
                                    .frame(height: 10)

                                    Text("\(day.high)°")
                                        .foregroundColor(.white)
                                        .frame(width: 40, alignment: .trailing)
                                }
                                .padding(.horizontal)
                            }
                        }
                        .padding()
                        .background(Color.black.opacity(0.6))
                        .cornerRadius(16)
                        .padding(.horizontal)
                    }
                    .padding(.bottom, 40)
                }
            }
        }
    }
}

// Sample Hourly Data
struct HourWeather: Identifiable {
    let id = UUID()
    let time: String
    let imageName: String
    let chanceOfRain: Int
    let temperature: Int
}

let hourlyData: [HourWeather] = [
    .init(time: "Now", imageName: "cloud.rain.fill", chanceOfRain: 60, temperature: 47),
    .init(time: "11PM", imageName: "cloud.rain.fill", chanceOfRain: 60, temperature: 45),
    .init(time: "12AM", imageName: "cloud.rain.fill", chanceOfRain: 50, temperature: 44),
    .init(time: "1AM", imageName: "cloud.rain.fill", chanceOfRain: 60, temperature: 43),
    .init(time: "2AM", imageName: "cloud.rain.fill", chanceOfRain: 40, temperature: 41),
    .init(time: "3AM", imageName: "cloud.rain.fill", chanceOfRain: 60, temperature: 41),
]

// Sample Daily Forecast
struct DayForecast: Identifiable {
    let id = UUID()
    let day: String
    let imageName: String
    let chanceOfRain: Int
    let low: Int
    let high: Int
}

let dailyForecast: [DayForecast] = [
    .init(day: "Today", imageName: "cloud.rain.fill", chanceOfRain: 60, low: 41, high: 62),
    .init(day: "Tue", imageName: "cloud.rain.fill", chanceOfRain: 60, low: 38, high: 56),
    .init(day: "Wed", imageName: "cloud.sun.fill", chanceOfRain: 20, low: 41, high: 54),
    .init(day: "Thu", imageName: "cloud.sun.fill", chanceOfRain: 10, low: 42, high: 57),
]

#Preview {
    ContentView()
}
