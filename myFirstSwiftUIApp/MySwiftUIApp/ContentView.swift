//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        //z stack allows for apna elements to overlap each other
//        ZStack(){
//            //assign color to background
//            Color.clear
//            //safe area is nothing but the area where the UI is bound to not be overlapped by system software display like bottom bar or the notch in apple products. ignoring safe area would be to paint everything "clear" regardless safe area or not
//                .ignoresSafeArea()
//            VStack(spacing: 25) {
//                //lll
//                HStack(){
//                    
//                }
//                // Title Text stuff
//                Text("iPhone")
//                    .font(.system(size: 80))
//                    .fontWeight(.bold)
//                    .foregroundStyle(
//                        LinearGradient(
//                            colors: [.red, .purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing
//                        )
//                    )
//                    .padding()
//                    .cornerRadius(12)
//                //align text to center
//                    .multilineTextAlignment(.center)
//                
//        
//                // Consistent Star Row using ForEach (Optional)
//                HStack {
//                    // the underscore means that we are ignoring loop index.
//                    ForEach(0..<4) { _ in
//                        Image(systemName: "star.fill")
//                            .foregroundColor(.orange)
//                            .font(.title)
//                    }
//                    Image(systemName: "star.lefthalf.fill")
//                        .foregroundColor(.orange)
//                        .font(.title)
//                }
//                
//                
//                // Button with action
//                Button(action: {
//                    print("Fill Button was tapped!")
//                }) {
//                    Text("Fill Button")
//                        .font(.title2)
//                        .padding()
//                        .frame(width: 200)
//                        .background(Color.blue)
//                        .foregroundColor(.white)
//                        .cornerRadius(12)
//                        .shadow(color: .gray.opacity(0.6), radius: 5, x: 0, y: 4)
//                }
//                
//                // Edit Button (requires context like a List to function properly)
//                Button( action: {
//                    print("Hollow button was tapped")
//                }){
//                    Text("Hollow Button")
//                    .padding(.horizontal, 48)
//                    .padding(.vertical, 16)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 10)
//                            .stroke(Color.blue, lineWidth: 2)
//                    )
//                }
////                Link("This is a link", destination: URL(string: "https://blahblah.com"))
//            }
//            .padding()
//        }
//    }
//}
//
//#Preview {
//    ContentView()
////    Button(action: {
////            print("The button was clicked yay")
////        }){
////            Text("Random button")
////                
////                .foregroundColor(.white)
////                .padding(.horizontal, 40)
////                .padding(.vertical, 20)
////                .background(Color.red)
////
////        }
////    
////    
////    
////    Button(action: {
////            print("The button was clicked yay")
////        }) {
////            Text("Random button")
////                .foregroundColor(.white)
////                .padding(.horizontal, 40)
////                .padding(.vertical, 20)
////                .background(Color.red)
////                .cornerRadius(10)
////        }
//}
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Maps()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Cool Mountain")
                    .font(.title)
                HStack {
                    Text("Somewhere idk")
                    Spacer()
                    Text("Japan")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                Divider()
 
//                Text("About Turtle Rock")
//                    .font(.title2)
//                Text("Descriptive text goes here.")
            }
            .padding()

            Spacer()
            
            HStack(alignment: .bottom){
//                Text("balls")
//                    .frame(width: 50, height: 50, alignment: .center)
//                    .background(.red)
//                Text("more balls")
//                    .frame(width: 50, height: 50, alignment: .center)
//                    .background(.blue)
            }
            .frame(maxWidth: .infinity, maxHeight: 200)
            .padding(0)
        }
    }
}


#Preview {
    ContentView()
}
