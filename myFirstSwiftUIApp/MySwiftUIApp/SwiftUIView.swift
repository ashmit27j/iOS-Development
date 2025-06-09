import SwiftUI

struct SwiftUIView: View {
    private let imageURL = "https://picsum.photos/600"

    var body: some View {
        ZStack {
            // Background
            Image("Background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            // Blurred overlay to simulate depth
            Rectangle()
                .fill(.ultraThinMaterial)
                .ignoresSafeArea()
                .blur(radius: 2)

            VStack(spacing: 8) {
                // Time
                Text(getCurrentTime())
                    .font(.system(size: 70, weight: .thin, design: .default))
                    .foregroundStyle(.white)
                    .shadow(radius: 4)

                // Date
                Text(getCurrentDate())
                    .font(.title3)
                    .foregroundStyle(.white.opacity(0.8))
                    .shadow(radius: 2)

                Spacer()

                // Main Image in Center
                AsyncImage(url: URL(string: imageURL)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 10)
                } placeholder: {
                    ProgressView()
                        .frame(width: 60, height: 60)
                        .background(.white.opacity(0.5))
                        .clipShape(Circle())
                }

                Spacer()

                // Bottom Icons (like flashlight/camera)
                HStack(spacing: 100) {
                    Image(systemName: "flashlight.off.fill")
                    Image(systemName: "camera.fill")
                }
                .font(.title2)
                .foregroundStyle(.white.opacity(0.8))
                .padding(.bottom, 30)
            }
            .padding(.top, 100)
        }
    }

    // Helpers for current time/date
    func getCurrentTime() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm"
        return formatter.string(from: Date())
    }

    func getCurrentDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d"
        return formatter.string(from: Date())
    }
}

#Preview {
    SwiftUIView()
}
