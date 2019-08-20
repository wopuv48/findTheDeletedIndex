//
//  main.swift
//  nxcProjectNum3
//
//  Created by 진형진 on 19/08/2019.
//  Copyright © 2019 진형진. All rights reserved.
//

import Foundation

var fileArray: [String] = []
var tempForIndex : Int = 0

func makeFile() { //1번부터 1000번까지의 untitled folder를 만듦
    for i in 1...1000 {
        fileArray.append("untitled folder " + String(i))
    }
    print("초기 배열 : ")
    print(fileArray)
}

func remove() { //임의의 특정 인덱스 번호를 난수로 생성, 배열에 생성한 인덱스 번호의 폴더를 지우고 그 인덱스 번호를 tempForIndex에 저장.
    tempForIndex = Int(arc4random_uniform(1000))
    fileArray.remove(at: tempForIndex)
    print("삭제 후 배열 : ")
    print(fileArray)
}

func insert() { //폴더 번호를 입력받아 삭제한 인덱스에 삽입.
    print("폴더 번호를 입력해주세요!")
    if let num = readLine() {
        fileArray.insert("untitled folder " + num, at: tempForIndex)
        print("삽입 후 배열 : ")
        print(fileArray)
    }
}

makeFile()
remove()
insert()
