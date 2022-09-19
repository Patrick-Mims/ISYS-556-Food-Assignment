import SwiftUI

struct ContentView: View {
    @State private var imageName = "pizza"
    @State private var priceLabel = "Pizza : $12.99"
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .imageScale(.large)
                .foregroundColor(.orange)
                .padding()
            
            Text(priceLabel)
                .font(.title).fontWeight(.heavy).foregroundColor(.orange).italic()
            
            Button("Next Dish") {
                imageName = imageName
                priceLabel = priceLabel
            }
            .font(.title)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
