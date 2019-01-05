//
//  Movie.swift
//  BoxOffice
//
//  Created by Lyunho Kim on 05/01/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import Foundation

class Movie {
    var grade: Int?
    var thumbUrl: String?
    var reservation_grade: Int?
    var title: String?
    var reservation_rate: Double?
    var user_rating: Double?
    var date: String?
    var id: String?
}


//grade    Int    관람등급
//0: 전체이용가
//12: 12세 이용가
//15: 15세 이용가
//19: 19세 이용가
//thumb    String    포스터 이미지 섬네일 주소
//reservation_grade    Int    예매순위
//title    String    영화제목
//reservation_rate    Double    예매율
//user_rating    Double    사용자 평점
//date    String    개봉일
//id    String    영화 고유 ID
