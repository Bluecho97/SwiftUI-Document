//
//  TextComponent.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/14/25.
//

import SwiftUI


struct TextComponent: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 36) {
                // 1. 기본 텍스트
                VStack(alignment: .leading) {
                    Text("Hello, SwiftUI!")
                }
                
                // 2. 시스템 폰트 스타일
                VStack(alignment: .leading) {
                    Text("SystemFont_LargeTitle").font(.largeTitle)
                    Text("SystemFont_Title").font(.title)
                    Text("SystemFont_Headline").font(.headline)
                    Text("SystemFont_Body").font(.body)
                    Text("SystemFont_Subheadline").font(.subheadline)
                    Text("SystemFont_Caption").font(.caption)
                    Text("SystemFont_Footnote").font(.footnote)
                }
                
                // 3. 폰트 크기
                VStack(alignment: .leading) {
                    Text("FontSize_12pt").font(.system(size: 12))
                    Text("FontSize_20pt").font(.system(size: 20))
                    Text("FontSize_36pt").font(.system(size: 36))
                }
                
                
                
                // 4. 폰트 굵기 & 꾸미기
                VStack(alignment: .leading) {
                    Text("굵은 텍스트").bold()
                    Text("얇은 텍스트").fontWeight(.light)
                    Text("세미볼드 텍스트").fontWeight(.semibold)
                    
                    Text("이탤릭 텍스트").italic()
                    Text("밑줄 텍스트").underline()
                    Text("취소선").strikethrough(true, color: .red)
                    
                    Text("그림자 효과").shadow(color: .gray, radius: 2, x: 2, y: 2)

                }
                
                // 5. 색상 및 배경
                VStack(alignment: .leading) {
                    Text("빨간색 텍스트").foregroundStyle(.red)
                    Text("배경이 있는 텍스트")
                        .padding()
                        .foregroundStyle(.black)
                        .background(Color.yellow)
                        .cornerRadius(12)
                }
                
                // 6. 정렬 및 줄 수 제한
                VStack(alignment: .leading) {
                    Text("이 텍스트는 가운데 정렬입니다.")
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                    
                    Text("가운데 정렬")
                        .frame(maxWidth: .infinity, alignment: .center)


                    Text("이 텍스트는 너무 길어서 두 줄까지만 보여집니다. 두 줄까지만 보여지며 이후는 생략됩니다.")
                        .lineLimit(2)
                    
                    Text("여러 줄로\n표시할 수 있습니다.")
                        .multilineTextAlignment(.center)
                        .lineLimit(nil) // 제한 없음
                        .lineSpacing(8) // 줄 간격
                }
                
                // 7. 커스텀 폰트 디자인
                VStack(alignment: .leading) {
                    Text("Monospaced").font(.system(size: 18, design: .monospaced))
                    Text("Rounded").font(.system(size: 18, design: .rounded))
                    Text("Serif").font(.system(size: 18, design: .serif))
                }
                
                // 8. 커스텀 스타일 조합
                VStack(alignment: .leading) {
                    Text("조합된 스타일")
                        .font(.system(size: 22, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(12)
                        .shadow(radius: 4)
                    
                    Text("Custom Font")
                        .font(.custom("AvenirNext-Bold", size: 20))
                }
                
                // 9. 다국어 지원 (Localization)
                VStack(alignment: .leading) {
                    Text("localized_hello")     // Localizable.strings 사용
                }
                
                // 10. Accessibility 설정
                /*
                 < 필요한 이유 >
                  - 시각장애인 사용자도 앱을 이해하고 조작할 수 있도록 보조 정보 제공
                  - 아이콘이나 UI 요소에 텍스트가 없더라도 의미를 전달 가능
                  - 앱 심사에서 접근성 고려 여부도 중요하게 평가됨
                 
                 < 사용 상황 >
                  - 아이콘 버튼  (아이콘의 의미)   : 이 버튼을 누르면 어떤 일이 발생하는지
                  - 단축어 버튼  (기능 요약)     : 길게 누르면 다른 옵션을 표시함
                  - 이미지      (이미지 설명)    : 이미지에 담긴 맥락 정보
                 */
                VStack(alignment: .leading) {
                    Text("접근성 힌트 예제")
                        .accessibilityLabel("접근성을 위한 라벨")              // 화면에 보이지 않더라도 VoiceOver가 읽어줄 텍스트
                        .accessibilityHint("화면을 설명하는 힌트")              // VoiceOver가 라벨 뒤에 추가로 읽어주는 설명 (동작에 대한 힌트)
                    
                    Text("숨겨질 텍스트").accessibilityHidden(true)           // VoiceOver에서 무시됨
                    
                    Text("중요한 텍스트").accessibilityAddTraits(.isHeader)   // VoiceOver가 '헤더'라고 인식
                }
                
                // 11. Privacy 설정
                /*
                 개인정보 (이름, 주소, 전화번호)    - 스크린샷 등에 노출 방지
                 건강/금융 정보                 - 민감한 정보 보호
                 Live Activity, 위젯          - 잠금 화면 노출 대비
                 */
                VStack(alignment: .leading) {
                    Text("계좌 잔액: 1,000,000원").privacySensitive()        // 미러링, Live Activity 등에서 숨김 처리
                    Text("홍길동").redacted(reason: .placeholder)          // 스켈레톤 UI처럼 표시
                    Text("이 텍스트는 터치되지 않음").allowsHitTesting(false)   // 사용자가 터치해도 반응 없음
                }
                
                // 12. 특정 단어 강조 (AttributedString)
                Group {
                    if #available(iOS 15.0, *) {
                        Text(attributedText)
                    }
                }
            }
            .padding()
        }
    }
    
    @available(iOS 15.0, *)
    var attributedText: AttributedString {
        let highlightString = "강조된 텍스트"
        var string = AttributedString("이 문장에서는 강조된 텍스트가 있습니다.")
        
        if let range = string.range(of: highlightString) {
            string[range].foregroundColor = .red
            string[range].font = .system(size: 20, weight: .bold)
        }
        
        return string
    }
}


#Preview {
    TextComponent()
}


/*
| Modifier                             | 역할                    | 사용 예시                      |
| ------------------------------------ | --------------------- | -------------------------- |
| `.accessibilityLabel("텍스트")`         | VoiceOver가 대신 읽어주는 이름 | 이미지, 아이콘에 텍스트 의미 부여        |
| `.accessibilityHint("힌트")`           | 어떤 동작을 하는지 설명         | 버튼에 "누르면 삭제됩니다"            |
| `.accessibilityValue("값")`           | 현재 상태를 읽게 함           | 슬라이더의 현재 값                 |
| `.accessibilityHidden(true)`         | VoiceOver에서 무시        | 꾸밈용 텍스트 숨기기                |
| `.accessibilityAddTraits(.isHeader)` | 해당 요소를 헤더로 인식시킴       | 제목/섹션 구분                   |
| `.privacySensitive()`                | 민감한 정보 보호             | Live Activity, 스크린샷 등에서 숨김 |
| `.redacted(reason: .placeholder)`    | 가려진 UI 상태 표현          | 로딩 중인 이름/이미지               |
| `.allowsHitTesting(false)`           | 사용자 인터랙션 비활성화         | 클릭 금지 영역, 읽기 전용 영역         |
*/
