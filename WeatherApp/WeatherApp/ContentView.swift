//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        GeometryReader { geometry in
//            ZStack(alignment: .top) {
//                Image("iOS-rainWallpaper")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
//                    .ignoresSafeArea()
//                    .opacity(0.5)
//
//                ScrollView {
//                    VStack(spacing: 16) {
//                        
//                        // Top Weather Information
//                        VStack(spacing: 4) {
//                            Text("Paris")
//                                .font(.system(size: 34, weight: .medium))
//                                .foregroundColor(Color("textPrimary"))
//                                .padding(.top, 32)
//                                .shadow(radius: 5)
//                            
//                            Text("47°")
//                                .font(.system(size: 72))
//                                .foregroundColor(Color("textPrimary"))
//                                .shadow(radius: 5)
//                                .padding(0)
//                            
//                            Text("Heavy Rain")
//                                .font(.system(size: 24))
//                                .foregroundColor(Color("textPrimary"))
//                                .shadow(radius: 5)
//                                .fontWeight(.medium)
//                                .padding(0)
//                            
//                            Text("H:62°  L:41°")
//                                .font(.system(size: 16))
//                                .foregroundColor(Color("textPrimary").opacity(0.9))
//                            
//                            Text("Rainy conditions tonight, continuing through the morning.")
//                                .foregroundColor(Color("textPrimary"))
//                                .font(.system(size: 14))
//                                .padding(.horizontal)
//                                .multilineTextAlignment(.center)
//                        }
//                        
//                        // Hourly Forecast Scroll
//                        VStack(alignment: .leading, spacing: 8) {
//                            VStack(spacing: 12) {
//                                Text("Today's Forecast")
//                                    .foregroundColor(Color("textPrimary").opacity(1))
//                                    .font(.headline)
//                                    .frame(maxWidth: .infinity, alignment: .leading)
//                                    .fontWeight(.bold)
//                                
//                                ScrollView(.horizontal, showsIndicators: false) {
//                                    HStack(spacing: 24) {
//                                        ForEach(hourlyData, id: \.time) { hour in
//                                            VStack(spacing: 8) {
//                                                Text(hour.time)
//                                                    .foregroundColor(Color("textPrimary"))
//                                                    .font(.system(size: 14))
//                                                
//                                                Image(systemName: hour.imageName)
//                                                    .renderingMode(.original)
//                                                    .resizable()
//                                                    .scaledToFit()
//                                                    .frame(width: 25, height: 25)
//                                                
//                                                Text("\(hour.chanceOfRain)%")
//                                                    .foregroundColor(.blue)
//                                                    .font(.system(size: 12))
//                                                
//                                                Text("\(hour.temperature)°")
//                                                    .foregroundColor(Color("textPrimary"))
//                                                    .font(.system(size: 14))
//                                            }
//                                        }
//                                        .padding(2)
//                                    }
//                                }
//                            }
//                            .padding(.horizontal)
//                        }
//                        .padding(.vertical)
//                        .background(Color("cardPrimary").opacity(0.7))
//                        .cornerRadius(16)
//                        .padding(.horizontal)
//                        
//                        // Weekly Forecast
//                        VStack(spacing: 12) {
//                            Text("Weekly Forecast")
//                                .foregroundColor(Color("textPrimary").opacity(1))
//                                .font(.headline)
//                                .frame(maxWidth: .infinity, alignment: .leading)
//                                .fontWeight(.bold)
//                            
//                            ForEach(dailyForecast, id: \.day) { day in
//                                HStack {
//                                    Text(day.day)
//                                        .foregroundColor(Color("textPrimary"))
//                                        .frame(width: 60, alignment: .leading)
//                                    
//                                    Image(systemName: day.imageName)
//                                        .renderingMode(.original)
//                                        .frame(width: 30)
//                                    
//                                    Text("\(day.chanceOfRain)%")
//                                        .foregroundColor(.blue)
//                                        .frame(width: 40)
//                                    
//                                    GeometryReader { geo in
//                                        ZStack(alignment: .leading) {
//                                            Capsule()
//                                                .fill(Color.gray.opacity(0.3))
//                                                .frame(height: 4)
//                                            
//                                            Capsule()
//                                                .fill(Color.blue)
//                                                .frame(width: geo.size.width * CGFloat(day.high - day.low) / 40, height: 4)
//                                                .offset(x: geo.size.width * CGFloat(day.low - 30) / 40)
//                                        }
//                                    }
//                                    .frame(height: 10)
//                                    
//                                    Text("\(day.high)°")
//                                        .foregroundColor(Color("textPrimary"))
//                                        .frame(width: 40, alignment: .trailing)
//                                }
//                                .padding(4)
//                            }
//                        }
//                        .padding()
//                        .background(Color("cardPrimary").opacity(0.7))
//                        .cornerRadius(16)
//                        .padding(.horizontal)
//                    }
//                    .padding(.bottom, 40)
//                    NavigationStack{
//                        NavigationLink(){
//                            Practice()
//                        }
//                        .buttonStyle(.borderedProminent)
//                    }
//                    .buttonStyle(.bordered)
//                    Button("this is a button"){
//                        print("you clicked the button")
//                    }
//                }
//            }
//        }
//    }
//}
//
//
//// Sample Hourly Data
//struct HourWeather: Identifiable {
//    let id = UUID()
//    let time: String
//    let imageName: String
//    let chanceOfRain: Int
//    let temperature: Int
//}
//
//let hourlyData: [HourWeather] = [
//    .init(time: "Now", imageName: "cloud.bolt.rain.fill", chanceOfRain: 60, temperature: 31),
//    .init(time: "11PM", imageName: "cloud.bolt.fill", chanceOfRain: 60, temperature: 30),
//    .init(time: "12AM", imageName: "cloud.moon.rain.fill", chanceOfRain: 50, temperature: 30),
//    .init(time: "1AM", imageName: "cloud.rain.fill", chanceOfRain: 60, temperature: 27),
//    .init(time: "2AM", imageName: "cloud.rain.fill", chanceOfRain: 40, temperature: 28),
//    .init(time: "3AM", imageName: "cloud.heavyrain.fill", chanceOfRain: 60, temperature: 30),
//    .init(time: "4AM", imageName: "cloud.moon.rain.fill", chanceOfRain: 60, temperature: 32),
//    .init(time: "5AM", imageName: "cloud.moon.rain.fill", chanceOfRain: 50, temperature: 33),
//    .init(time: "6AM", imageName: "cloud.sun.rain.fill", chanceOfRain: 40, temperature: 32),
//    .init(time: "6AM", imageName: "sun.rain.fill", chanceOfRain: 35, temperature: 37),
//]
//
//// Sample Daily Forecast
//struct DayForecast: Identifiable {
//    let id = UUID()
//    let day: String
//    let imageName: String
//    let chanceOfRain: Int
//    let low: Int
//    let high: Int
//}
//
//let dailyForecast: [DayForecast] = [
//    .init(day: "Today", imageName: "cloud.rain.fill", chanceOfRain: 60, low: 41, high: 62),
//    .init(day: "Tue", imageName: "cloud.rain.fill", chanceOfRain: 60, low: 38, high: 56),
//    .init(day: "Wed", imageName: "cloud.sun.fill", chanceOfRain: 20, low: 41, high: 54),
//    .init(day: "Thu", imageName: "cloud.sun.rain.fill", chanceOfRain: 10, low: 42, high: 57),
//    .init(day: "Fri", imageName: "cloud.heavyrain.fill", chanceOfRain: 10, low: 42, high: 57),
//    .init(day: "Sat", imageName: "sun.max.fill", chanceOfRain: 10, low: 42, high: 57),
//    .init(day: "Sun", imageName: "cloud.sun.fill", chanceOfRain: 10, low: 42, high: 57),
//]
//
//#Preview {
//    ContentView()
//}
import SwiftUI

struct ContentView: View {
    //@State variables can be changed in the UI
    @State private var message: String = "original"
    @State private var title: String =  "ths esd olf"
    var body: some View {
            NavigationStack{
                ZStack(){
//                    Image("iOS-rainWallpaper")
//                        .resizable()
//                        .ignoresSafeArea()
//                        .scaledToFill()
                    VStack(spacing: 5){
                        NavigationLink("Go to next page"){
                            secondView()
                        }
                        .buttonStyle(.borderedProminent)
                        .accentColor(.black)
                        .foregroundColor(.white)

//                        NavigationLink("Open new window"){
//                            newPopUp()
//                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
