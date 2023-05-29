//
//  AddViewController.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/02.
//

import UIKit
import PanModal
import MobileCoreServices
import UniformTypeIdentifiers

class AddViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    let imagePickerController = UIImagePickerController()
    var Uploadvide = UploadVideoViewModel.shared
    @IBAction func UploadBtcClick(_ sender: Any) {
        self.imagePickerController.delegate = self
        self.imagePickerController.sourceType = .photoLibrary
        imagePickerController.mediaTypes = [UTType.movie.identifier]

        present(self.imagePickerController, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let videoURL = info[.mediaURL] as? URL {
            // 동영상 URL을 기반으로 AVPlayer를 생성합니다.
            self.Uploadvide.videoURL = videoURL
            // 동영상 재생을 시작합니다.

            print("asd")
        }
        
        // 이미지 피커를 닫습니다.
        picker.dismiss(animated: true, completion: nil)
        guard let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "UploadVideoViewController") as? UploadVideoViewController else { return }
                // 화면 전환 애니메이션 설정
                secondViewController.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
                secondViewController.modalPresentationStyle = .fullScreen
                self.present(secondViewController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()



    }
    
}
extension AddViewController: PanModalPresentable {
    var panScrollable: UIScrollView? {
        return nil
    }

    var shortFormHeight: PanModalHeight {
        return .contentHeight(320)
    }

    var longFormHeight: PanModalHeight {
        return .maxHeightWithTopInset(0)
    }
}

