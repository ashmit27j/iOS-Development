//import SwiftUI
//
//struct WeatherApp: View {
//    var body: some View {
//        VStack {
//            Image("Mountains")
//                .resizable()
//                .scaledToFill()
//                .frame(width: 200, height: 200)
//                .clipShape(Circle())
//                .overlay(Circle().stroke(Color.blue, lineWidth: 5))
//                .shadow(radius: 10)
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    WeatherApp()
//}
import SwiftUI

struct WeatherApp: View {
    var body: some View {
        //this guy is the outer z stack inside which we will add rows and columns
        ZStack {
            LinearGradient(colors: [.blue, .cyan, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            Image("Mountains")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .shadow(radius: 5)
                .clipShape(Circle())
            Text("Random stuff")
                .padding(100)
        }
    }
}

#Preview {
    WeatherApp()
}
