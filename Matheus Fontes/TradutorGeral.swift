//
//  TradutorGeral.swift
//  ProjetoFinal
//
//  Created by Student23 on 26/04/23.
//

import SwiftUI

struct TradutorGeral: View {
    @State var imageData: Data = .init(capacity: 0)
    @State var show = false
    @State var imagepicker = false
    @State var source: UIImagePickerController.SourceType = .photoLibrary
    @State var textTranslated: String = ""
    var body: some View {
        NavigationView{
            ZStack{
                NavigationLink(destination: ImagePicker(show: $imagepicker, image: $imageData, source: source), isActive: $imagepicker) {
                    Text("")
                }
                
                VStack{
                    Text("Tradutor")
                        .font(.title)
                    TextField("Digite o seu texto aqui", text: $textTranslated)
                        .padding()
                        .multilineTextAlignment(.center)
                        .background(Color.gray.opacity(0.4).cornerRadius(10))
                        .font(.title)
                    if imageData.count != 0 {
                        Image(uiImage: UIImage(data: self.imageData)!)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 250, height: 250)
                            .overlay(Circle().stroke(Color.blue, lineWidth: 3))
                            .foregroundColor(Color.purple)
                    }
                    //else {
//                        Image(systemName: "camera")
//                            .resizable()
//                            .frame(width: 250, height: 250)
//                            .foregroundColor(Color.purple)
//
//
//                    }
                    
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    
                       
                    Text(" ")
                    HStack{
                        Button (action: {
                            self.show.toggle()
                        }){ label: do {
                            Image(systemName: "camera")
                                .tint(.black)
                                .font(.title)
                            
                        }
                            
                        }.actionSheet(isPresented: $show) {
                            ActionSheet(title: Text("Take a Photo"), message: Text(""), buttons: [
                                .default(Text("Photo Library"), action: {
                                    self.source = .photoLibrary
                                    self.imagepicker.toggle()
                                }),.default(Text("Camera"), action: {
                                    self.source = .camera
                                    
                                    self.imagepicker.toggle()
                                    
                                })])
                    
                        }
                        .ignoresSafeArea()
                        Button {
                            
                        } label: {
                            Image(systemName: "mic")
                                .padding(.leading,20.0)
                                .tint(.black)
                                .font(.title)
                            
                        }
                    }
                    
                    Spacer()
                    
                }
            }
        }
    }
    
}

struct TradutorGeral_Previews: PreviewProvider
{
    static var previews: some View
    {
        TradutorGeral()
    }
    
}

struct ImagePicker : UIViewControllerRepresentable {
    @Binding var show : Bool
    @Binding var image : Data
    var source : UIImagePickerController.SourceType
    func makeCoordinator() -> ImagePicker.Coordinator {
        return ImagePicker.Coordinator(parent1: self)
         
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let controller = UIImagePickerController()
        controller.sourceType = source
        controller.delegate = context.coordinator
        return controller
    }
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
        
    }
    class Coordinator : NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
        var parent: ImagePicker
        init(parent1 : ImagePicker) {
            parent = parent1
        }
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            self.parent.show.toggle()
        }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            let image = info[.originalImage] as! UIImage
            let data = image.pngData()
            self.parent.image = data!
            self.parent.show.toggle()
        }
    }
}
