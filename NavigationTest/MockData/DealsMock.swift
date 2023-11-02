//
//  DealsMock.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/1/23.
//

import Foundation

struct Deal: Equatable, Hashable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let image: String
    
    static let mock = [
        Deal(id: 1, name: "T-shirt", description: "Golden wear. Perfect of Parties", price: 20.0, image: "https://www.google.com/aclk?sa=l&ai=DChcSEwie0r3j1aOCAxUmC60GHThvDKoYABAFGgJwdg&ase=2&gclid=CjwKCAjw7oeqBhBwEiwALyHLM8Xb7JP5H2VFiLp0EJj_KmFCk6pkUKA0nV3kzSLix9_fO5RXFEUTexoCnAAQAvD_BwE&sig=AOD64_3tNbs_G15XEQ-9Su-Z7d6TWD56nA&ctype=5&nis=6&adurl&ved=2ahUKEwi3pazj1aOCAxXfNkQIHcA0B4QQvhd6BQgBEIsB"),
        Deal(id: 2, name: "Jeans", description: "Blue Jeans. Perfect of Parties", price: 30.0, image: "https://www.google.com/aclk?sa=l&ai=DChcSEwiMh7yH1qOCAxX_Da0GHXoSDdsYABARGgJwdg&ase=2&gclid=CjwKCAjw7oeqBhBwEiwALyHLM98kBYttGCDUt9XkCy8kbWWSCeDKwDgFV34Nz2BuE10o1CctTZSCJRoCFCcQAvD_BwE&sig=AOD64_31sdedzJ8CTlLTjSkigpoAfrLw5Q&ctype=5&nis=6&adurl&ved=2ahUKEwjWmKSH1qOCAxXXiO4BHXMdAPEQvhd6BQgBELMB"),
        Deal(id: 3, name: "Shirt", description: "White Shirt. Perfect of Parties", price: 40.0, image: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages.ctfassets.net%2Fw2dr5qwt1rrm%2F5n6oak1i4gjsUVMF7ihpr3%2Fba835a581f0a2cd594f68b587c3aad97%2FRCL8JSPZ0249000R.jpg&tbnid=UMbWDdpPE7dOMM&vet=12ahUKEwj2i8KV1qOCAxUgiO4BHYnUD2UQ94IIKBB6BQgBEJkC..i&imgrefurl=https%3A%2F%2Fwww.brioni.com%2Fen%2Fus%2Fpr%2FEssential-white-formal-shirt-RCL8JSPZ0249000&docid=rx04r9DtWxkdRM&w=3000&h=4000&q=white%20shirt&ved=2ahUKEwj2i8KV1qOCAxUgiO4BHYnUD2UQ94IIKBB6BQgBEJkC"),
        Deal(id: 4, name: "Shoes", description: "Black Shoes. Perfect of Parties", price: 50.0, image: "https://www.google.com/aclk?sa=l&ai=DChcSEwi18qut1qOCAxX1F60GHYbiBIUYABAPGgJwdg&ase=2&gclid=CjwKCAjw7oeqBhBwEiwALyHLM4dxk7EaQDYjhqDTKwtXowUl5ih_5Ou9JJd83yrTMaz4PIrQa3AtyxoCpVMQAvD_BwE&sig=AOD64_05SnZiL4K04aX1ch8TQ5-1vtJx9Q&ctype=5&nis=6&adurl&ved=2ahUKEwiPh5it1qOCAxWuIkQIHdWtCP8Qvhd6BQgBEKUB"),
        Deal(id: 5, name: "Jacket", description: "Black Jacket. Perfect of Parties", price: 60.0, image: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.fjackets.com%2Fproduct_images%2Fa%2F316%2FWomens_Black_Biker_Leather_Jacket__48988_zoom.jpg&tbnid=lSt9xVR9eVnEyM&vet=12ahUKEwjiwrK-1qOCAxUgiO4BHYnUD2UQ94IIKAt6BQgBEN4C..i&imgrefurl=https%3A%2F%2Fwww.fjackets.com%2Fbuy%2FWomens-Black-Leather-Biker-Jacket.html&docid=rhvs6-AHPuGdFM&w=950&h=1280&q=black%20jacket&ved=2ahUKEwjiwrK-1qOCAxUgiO4BHYnUD2UQ94IIKAt6BQgBEN4C"),
        Deal(id: 6, name: "Trousers", description: "Black Trousers. Perfect of Parties", price: 70.0, image: "https://www.google.com/aclk?sa=l&ai=DChcSEwjX-crM1qOCAxW4Aa0GHUqoBHkYABALGgJwdg&ase=2&gclid=CjwKCAjw7oeqBhBwEiwALyHLM9Pb6DsMOwcm07Nyu05ye69yCkCibhwfQS0czpMNQUJCXEOSDzjg_RoCTdsQAvD_BwE&sig=AOD64_3sHMRMb0L6BhQ8WGWnP_c8MDKcmg&ctype=5&nis=6&adurl&ved=2ahUKEwiVx7bM1qOCAxWFCUQIHYjlBZMQvhd6BQgBEK8B"),
        Deal(id: 7, name: "Sweater", description: "Black Sweater. Perfect of Parties", price: 80.0, image: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.omocat-shop.com%2Fcdn%2Fshop%2Fproducts%2Fbg_sweater_black_1_1000x.jpg%3Fv%3D1562119498&tbnid=hszbXmTcsTGJfM&vet=12ahUKEwj53efc1qOCAxXzPkQIHZVsCtsQMygIegUIARDLAg..i&imgrefurl=https%3A%2F%2Fwww.omocat-shop.com%2Fproducts%2Fbunnygirl-black-sweater&docid=aiEDZ38BPV8qGM&w=1000&h=1460&q=black%20sweater&ved=2ahUKEwj53efc1qOCAxXzPkQIHZVsCtsQMygIegUIARDLAg"),
        Deal(id: 8, name: "Hat", description: "Black Hat. Perfect of Parties", price: 90.0, image: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fcelticclothing.com%2Fwp-content%2Fuploads%2F2015%2F06%2FFlapper-Black.jpg&tbnid=T5qksdNQ98jOsM&vet=12ahUKEwiiia331qOCAxUnCUQIHUBTDxgQMyggegUIARDgAg..i&imgrefurl=https%3A%2F%2Fcelticclothing.com%2Fproduct%2Fladies-1920-s-black-flapper-hat%2F&docid=Hi0mypN-Ve3_dM&w=1050&h=1050&q=black%20hat&ved=2ahUKEwiiia331qOCAxUnCUQIHUBTDxgQMyggegUIARDgAg"),
        
    ]
}

