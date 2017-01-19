/*
 Não esquecer de adicionar a propriedade 
 - Privacy - Photo Library Usage Description
 no Info.plist
 
 
 */

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //MARK: OUTLETS
    @IBOutlet weak var minhaImageView: UIImageView!
    
    //MARK: Propriedades
    let imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Delegate
        imagePicker.delegate = self
        

    }
    
    //MARK: ACTIONS
    @IBAction func carregarImagem(_ sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .savedPhotosAlbum
        
        print("PRINT: Acessou")
        
        present(imagePicker, animated: true)
    }
    
    //MARK: PICKER DELEGATE
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let imagemEscolhida = info[UIImagePickerControllerOriginalImage] as! UIImage
        minhaImageView.image = imagemEscolhida
        picker.dismiss(animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("PRINT: Cancelou")
        minhaImageView.image = nil
        picker.dismiss(animated: true)
        
    }


}

