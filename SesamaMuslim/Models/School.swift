//
//  School.swift
//  SesamaMuslim
//
//  Created by Wanhar on 07/08/20.
//

import Foundation

struct School {
    let id : Int
    let name: String
    let imageURL: String
    let desc: String
}

extension School {
    static func all() -> [School] {
        return [
            School(id: 0, name: "Pondok Pesantren Anshorus Sunnah (SMP)", imageURL: "https://sekolah-sunnah.s3.ap-southeast-1.amazonaws.com/photos/1579656274_339%20foto%201.jpg", desc: "profil PONDOK PESANTREN ANSHORUS SUNNAH Adalah lembaga Pendidikan & Dakwah Islam Yang Berdasarkan Al Qur'an Dan As Sunnah Menurut Pemahaman Salafush Shalih Visi: Mewujudkan Generasi Bermanhaj Salaf yang Berakidah Shahih dan Berahlak Mulia Misi: 1.Biaya Pendidikan Terjangkau tapi dengan ilmu Islam yang Terarah 2.mencetak lulusan Para penghafal Al Qur'an yang Shahih dengan Tajwid yang Baik"),
            School(id: 1, name: "Pondok Tahfidzul Qura'an Al Ihsan", imageURL: "https://sekolah-sunnah.s3.ap-southeast-1.amazonaws.com/photos/1579446893_al%20ihsan%20semarang%202.jpg", desc: "Visi: Menjadi lembaga yang mencetak kader-kader penghafal Al Qur'an, benar pemahamannya, beramal dan berdakwah sesuai pemahaman Salafushsholih."),
            School(id: 2, name: "Pondok Pesantren Anshorus Sunnah (SMP)", imageURL: "https://sekolah-sunnah.s3.ap-southeast-1.amazonaws.com/photos/1579656274_339%20foto%201.jpg", desc: "profil PONDOK PESANTREN ANSHORUS SUNNAH Adalah lembaga Pendidikan & Dakwah Islam Yang Berdasarkan Al Qur'an Dan As Sunnah Menurut Pemahaman Salafush Shalih Visi: Mewujudkan Generasi Bermanhaj Salaf yang Berakidah Shahih dan Berahlak Mulia Misi: 1.Biaya Pendidikan Terjangkau tapi dengan ilmu Islam yang Terarah 2.mencetak lulusan Para penghafal Al Qur'an yang Shahih dengan Tajwid yang Baik"),
            School(id: 3, name: "SD Annajah Jakarta (Srengseng)", imageURL: "https://sekolah-sunnah.s3.ap-southeast-1.amazonaws.com/photos/1581676446_photos/1581674354_237%20spanduk.jpg", desc: "SD Tahfizhul Quran di atas pemahaman Salafushalih dengan pilihan program Boarding atau Fullday school.")
        ]
    }
}
