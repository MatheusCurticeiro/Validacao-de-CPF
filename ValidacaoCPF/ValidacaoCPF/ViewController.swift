//
//  ViewController.swift
//  ValidacaoCPF
//
//  Created by Matheus Curticeiro on 11/10/21.
//

import UIKit
import CPF_CNPJ_Validator

class ViewController: UIViewController {

    @IBOutlet weak var cpfTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func verificarButton(_ sender: Any) {
        
        if BooleanValidator().validate(cpf: self.cpfTextField.text ?? ""){
            
            self.alertMessage(title: "Sucesso", message: "CPF valido")
        
        }else{
            self.alertMessage(title: "Erro", message: "CPF Invalido")
        }
    }
    
    private func alertMessage(title:String,message:String){
        let alertController: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
    alertController.addAction(ok)
    self.present(alertController, animated: true, completion: nil)
    }
}
