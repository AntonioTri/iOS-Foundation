import SwiftUI

struct ContentView: View {
    @State private var mainImageName = "parthenope"
    @State private var mainImageLabel = ""
    let defaultImage = "parthenope"
    var body: some View {
        
        ZStack{
            GeometryReader{ geometry in
                Image("logo")
                    .resizable()
                    .aspectRatio(1, contentMode: .fill)
                    .edgesIgnoringSafeArea([.top, .bottom])
                    .blur(radius: 5)
                    .opacity(0.15)
                    .frame(width: geometry.size.width)
            }
            
            VStack{
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Text("Ciao mamma!")
                    .foregroundColor(.blue)
                    .font(.system(size: 30))
                    .bold()
                
                Image(mainImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .padding(10)
                    .overlay(
                        
                        Text(mainImageLabel)
                        .padding()
                        .foregroundColor(.white)
                        .font(.title), alignment: .bottom
                    
                    )
                
                
                
                HStack {
                    
                    CircularButton(imageName: "ciaramella", mainImage: $mainImageName, mainLabel: $mainImageLabel, defaultName: defaultImage, teamMember: "Angelo Ciaramella")
                    CircularButton(imageName: "agliata", mainImage: $mainImageName, mainLabel: $mainImageLabel, defaultName: defaultImage, teamMember: "Antonio Aiata")
                    CircularButton(imageName: "dicapua", mainImage: $mainImageName, mainLabel: $mainImageLabel, defaultName: defaultImage, teamMember: "Michele Di Capua")
                    
                } .padding()
                
                HStack {
                    
                    CircularButton(imageName: "dinardo", mainImage: $mainImageName, mainLabel: $mainImageLabel, defaultName: defaultImage, teamMember: "Emanuel Di Nardo")
                    CircularButton(imageName: "finizio", mainImage: $mainImageName, mainLabel: $mainImageLabel, defaultName: defaultImage, teamMember: "Ignazio Finizio")
                    CircularButton(imageName: "napolitano", mainImage: $mainImageName, mainLabel: $mainImageLabel, defaultName: defaultImage, teamMember: "Nunzio Napoitano")
                    
                } .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct CircularButton: View {
    
    var imageName: String
    @Binding var mainImage: String
    @Binding var mainLabel: String
    var defaultName: String
    var teamMember: String
    
    var body: some View {
        Button(action: {
            if self.mainImage != self.imageName {
                
                self.mainImage = self.imageName
                self.mainLabel = self.teamMember
                
            } else {
                
                self.mainImage = self.defaultName
                self.mainLabel = ""
                
            }
        }) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            
        }
    }
}
