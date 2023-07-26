//
//  PostNewViewController.swift
//  NewspaperApp
//
//  Created by Lê Đình Linh on 26/07/2023.
//

import UIKit
import WebKit

class PostNewViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var btnChonAnh: UIButton!
    @IBOutlet weak var articleWebView: WKWebView!
    @IBOutlet weak var btnDangBai: UIButton!
    @IBOutlet weak var txtBaiViet: UITextField!
    @IBOutlet weak var txtTieuDe: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    var theLoai = ["Thế giới", "Thời sự" , "Thời tiết" , "Kinh doanh" , "Pháp luật" , "Giáo dục" ]
    
    var photoPicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        btnDangBai.layer.cornerRadius = 10
        btnChonAnh.layer.borderColor = UIColor.black.cgColor
        
        articleWebView.loadHTMLString("<p style='color: red'>Không dễ để đánh giá hết bốn thập niên cầm quyền của ông Hun Sen trong một bài viết. <i>Tuổi Trẻ Online</i> xin đăng tải một số hình ảnh về thời kỳ này:</p>", baseURL: nil)
        
        photoPicker.delegate = self
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return theLoai[row]
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return theLoai.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
    @IBAction func btnChonAnhOnClick(_ sender: UIButton){
        self.btnChonAnh.setTitleColor(UIColor.white, for: .normal)
            self.btnChonAnh.isUserInteractionEnabled = true
            
            let alert = UIAlertController(title: "Choose Image", message: nil, preferredStyle: .actionSheet)
//            alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { _ in
//                self.openCamera()
//            }))
            
            alert.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { _ in
                self.openGallary()
            }))
            
            alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        
    }
    
    func openGallary()
    {
        photoPicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        photoPicker.allowsEditing = true
        self.present(photoPicker, animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let anhDaDuocChon = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            self.img.image = anhDaDuocChon
        }
                
        //Dismiss the UIImagePicker after selection
        picker.dismiss(animated: true, completion: nil)
    }
}
