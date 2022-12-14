import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/user/user_state.dart';
import 'package:vantan_connect/infrastructure/fake_class_repository.dart';

import '../../domain/class/class.dart';

final testClassList = [
  Class(
    name: 'UI/UXデザイン実践',
    overView:
        'UI/UXデザインとはユーザー目線で製品やデザインを開発するためのスキル。ただしUIとUXは実は別物。UXは人間の怠惰を追求するための知識と言っても過言ではない。',
    goalPoint:
        'デザインを行うためのツールの使い方を学びと同時にUI/UXの概念を学ぶ。使いやすい、人を怠惰にさせる、人を惹きつけるデザインを作成する。',
    teacher: [
      {
        'name': '吉田先生',
        'job': 'UI/UXデザイナー',
        'userImagePath':
            'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
      },
      {
        'name': '曽根先生',
        'job': 'UI/UXデザイナー',
        'userImagePath':
            'data:image/jpeg;base64,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',
      }
    ],
    goalRequirements: ['出席率85%以上'],
    frameCount: 9,
    classImgUrl:
        'https://www.techfirm.co.jp/blog/wp-content/uploads/2021/09/uiux-scaled.jpg',
    student: [
      {
        'name': '高橋夏輝',
        'id': '@natuki',
        'profileText': '【太陽光発電所の保安・管理業務】※成長し続けるリテールビジネス分野総合商社の関連会社／スタートアップ',
        'userImagePath':
            'https://www.sozai-library.com/wp-content/uploads/2017/01/teacher_9517.jpg'
      },
      {
        'name': '川島愛海',
        'id': '@ami',
        'profileText': '【中国語・英語を活かせる法人営業　※世界トップクラスシェア製品／在宅勤務可',
        'userImagePath':
            'https://thumb.ac-illust.com/37/3703cf0e1ab732a3038212b0f7aaa893_t.jpeg',
      },
      {
        'name': '宇多田ひかる',
        'id': '@hikaru',
        'profileText': '【東京】法人研修オペレーション担当 ～リモートワーク可／自分の裁量で休みが取りやすい環境～',
        'userImagePath':
            'https://www.sozai-library.com/wp-content/uploads/2017/01/teacher_9517.jpg',
      },
    ],
  ),
  Class(
    name: 'データサイエンス',
    overView: '様々なデータから知見や洞察を引き出し、ビジネスに付加価値を提供する。データの可視化(ビジュアライゼーション)が意外と重要。',
    goalPoint: '機械学習、統計学、数学を学ぶ',
    teacher: [
      {
        'name': '〇〇先生',
        'job': 'データサイエンティスト',
        'userImagePath':
            'https://www.sozai-library.com/wp-content/uploads/2017/01/teacher_9517.jpg',
      },
    ],
    goalRequirements: [
      '出席率95%以上',
      '遅刻が4回以内',
    ],
    frameCount: 10,
    classImgUrl:
        'https://www.agaroot.jp/datascience/column/wp-content/uploads/2020/12/tech-5090539_1920-min.jpg',
    student: [
      {
        'name': '山下朋大',
        'id': '@PlaceSnow',
        'profileText': '【太陽光発電所の保安・管理業務】※成長し続けるリテールビジネス分野総合商社の関連会社／スタートアップ',
        'userImagePath':
            'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAQEhUPDxAPFQ8QEA8PDw8PDw8PDw8PFRYWFhURFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGBAQFi0dHR0tLS0rLSsrLSsrKysrLS0rKysrKy0tKy0rLS0rLS0tLS0rLS0rLS0tLS0tLS0rLS0tLf/AABEIALUBFgMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAABAgADBAUGBwj/xAA+EAACAQIEAwUFBQYFBQAAAAAAAQIDEQQSITEFQVEGE2FxgQciMpGhQrHB0fAUI2JyouEzUoKS8SRDc7LC/8QAGgEBAQEBAQEBAAAAAAAAAAAAAAECAwQFBv/EACERAQEBAQEAAgICAwAAAAAAAAABAhEDITEEEkFRIiMy/9oADAMBAAIRAxEAPwDmFTHUB0iB5gUEPGKAmOgGyIMYIiCmA6gh4wQqDEotUEMqaETLIsIiposjRQqZapFEeHQn7KixTQc4Ffc20RRUp+Bl5yupqBr3RLYUS7KFEVR3QY0TIykAxZUBVRMtguBiqgFYcvuFSAx3RYrpmTJlbAqVMDgWokkFVRTK5xuX2FaAx+7QHTRflA4kGNKBW6ZmZAOkBgygQyqlMgEhIaxRBlqkVlHEZC5wqQDoZCXGUgLEERSGUgGQ6K1IdSAsiyxMoUhlIqLkxrlKkMmBZcDFTJcCDIRsKYUWxWxZSNXxviXcQzJXk3aKe1wsnWXjMbCkr1JWT0W7b8kjTYntVSj8MZytu3aKOWxNec5Xd5Tfm0vBIMOHVGs0oyUU1d2MXTvnydThu1NGV3JSil11+nP0ubTB4+FaOanK68rNeaexwDw61vs+m8X5F/D8RKjOM49bNX+JdH6Ifsl8p/Dv84MxTRqqcVOO0kmvUsSNuBsxMwoGRTOQLiMUC24Cq4cwFlxinMOpgSoiCSkAKx1EZRJBliRWCWCkNYKAiQUgoYAIZEQUAUG5EEAoiZA2AIUxQ3AfMS4tyXANwplbA2BJSOX7T4m9WFJa2jmt/E3b7jpXI5jFxUeIQlP4XFTXR5U7r+kzu8nXbxndR1fZfstDIpySblH4ualf+/0Oww3BKajLNGLzWb0Vk0tTU8N7S0ksjpTglopSjZSYOOVJyac3W7ptONOm2nN+PX10Pm29vy+znPJ/jFPGOx2GnGcqMVGbV4uL9255Zj6UqNSUKkbNO2m6a5ntvBJTqxv3Dpwt8MpQlNPo8t1f1ON9pPBYZqdZaZpqlPxv8L+86+W7LyuXt5yzs+2n7M4nPR/kk4/j+LNwmYPBuHKnSzq/+JOnNtON2knF28sxnHtxf2nXyvbFxuypcDZAM05pcDZBWwIEUKALREgXCmFJURBpkAxoMuTK4FlgwZBFyksA6Y1ytINgHUg5hEEB1IbMIFAPmDmECA1yXFJcBrkYtyXAYDYLiyYCyZp+P0NIV470KkZv/wAd1n+n4m1lISTT0ez0a8BZ2cazr9b1vqHBak4xqVKk3GKk4xU3Gnl5Xgt3brc67uIThDPFNZI78tDk8BxdugqT+KMFFvqlpcx8FjE5LvK9Splbywp5n5J5d/U+XZe2P0GOaks/l3OHrU4LKnouRzvarCKvBa6RqQl6RevqWQnWqSzOnGNFLW8k6nhtpYp4hUUYxpR3k7vwvqzNti2RpeIcbo14qlQhKKpSXeZ1l99xVrLye5g5h+IYSNOtNxWtTJJ+kVH/AOSm59Lxk/ScfE/J1b666dSJmEIdHE1wAYoDhTK7kzAWMDYuYDkBKkiFNSRAdGJbGRUkPFFYW3ICwyCoRBSJYCDIBEAwUKEAhFCBk8Pwcq9SNGDipVHli5u0c1tE347epRWpuEnGStKLcZJ7qSdmhFWlBqUXaUWpRfRrVM6HjGF/a3+10XBKpCEq0W9I1krTs0trrn4mdamftvHnrf8AzOueuCTHxWHnSlkqRalv5rk11RjyZrvWbLLyncxJTK2yqUyB3MDmVOYrkFZeGxkqbureps8LXoz95vI38UI6XfU5+THpU5OM5q9qUHOTW/RL9dGcPXymv8vqvX+N+RrFmfuOxlx6lGGWN0ktWzG4betLvWnbaCNHw3hFSvOEYt1HNrJFc/Hy8T2Ps52Zjh4qU7Sq23+zDwj4+J48+d3fh9HfrMTtaqj2epqhVrYtqKdGS961qMUm+8k+q6cvPbyjBY+FXbSS3i9/NdUdN7W+1bqzfD6Ev3VKX/UST/xKq/7d/wDLF7/xeR5jnyvNms09Hzv4H0MZmJyPm+v+y9rsrkOaocaqrfLJeKs/oZ9HjcH8UZLytJG3nuK2zAa18ZpXslN+Nl+ZlYTFwqK8Hs7NPRoJc2L7EsS4LhBRGgXA2BTVICqQIugh7FdMsKya4biXDcBk2QCYQIQhAqXDcBAHuS4oGwBVlodF2enPv6bjOHd1MPlnSSdk1bK5X+00+XL0OYrbGT2VqPvZQlOSsu8pRzPLmWktOrTRw989nf6ez8Pf66s/t1/a2hFUXdK9Ozpy5pX1Vzhs53Ha+vSp4J1cRUcHUg40KajerWqW0tG6strvp6HnmFrqcVKL0f08C+Esz8p+Xy6ljInIx5SGnIpbOryxY2LcFzXcYxLjHJF+9Pd81HmGpO02J4vTi7JOTW9rZb9LnWdh+Jwnha0a1Fy73EqnF0knUSUItfFo0szb23PN8nI9p9lfBcuHjVmlecpOHN5ZNa+tl8kZs7HozJm9bjsfweFChdt+/KcYzlBQqKmpPLTs20reHReBsu0naergcHUqVFF1bd3hppp5qktIua6pXlpvlN3HhtOEszu+V5Nyy+XQ8n9sXFFKvTwcJXhQj3tTb/FqbL0jZ/6yZzxrWuvPas2222222227tt6tsxqj5L1fT+485dN+X5hstjbKpL9eo1rK41tCmc+Xiv19AqVqklpGPm27XMzgeMtV7uSyuStbk2tVZ/MxYU3fM35Itg7SjK18slJctUwzZ2cdUmS5ThqyqRzR259U+ha0HmRyBcliWApqMgtRhCMmIxVFjIqLEQS4bgWIKETBcCwlyu4QLAXEuS4VY2K2JcjYEmzEhjqeGqRxFWDnGk82RPLmlZ5V87aGQ2aXj2FdSKcX8N3l5S/uSt4vzGFxfj1fG1XXxE803pGK0hTjyhBcl9/MpwmLlSd1rF/FHk/HzNYnZmRmI9FnXV05qSUls0mvUqk9Tn8Fip03mu2nvBv3bfgbunXjUWaO3NPdPxK8+sXK9M5/F1+8m27aXgrdE2DHY+U24r4E3az+JbXfgUUHdfMnXXGefNZeBwzq1YU1vKUYrzk7fifSnAcAqMadJL3YRireR4b7OcF3uOpX2hmqvyirL6yR9BYV636LQNr8RiIwUpSaUIpyk3sopXbPmjjnEXia1XEy072pKpr9mL+GPpGy9D2n2mcQ7nAVUn71ZKgl4T+P+jMeB1J5pW+zHfxfT0AkOr5/cNNJiCSXiUTM4uxXXls/Ffr6ip2Kq0iKyFL/AJHvHnJGNTfRp+DepfFNfYXowL8LVdN5oSf8t/dl4NHTYbEKpFTXPdc0+aOUz/w6+BfhcTKnK8VvvG+jXiVjeOuoI2YuFxcaiut1vF7ovbDz/SmqQFVkCLqbLCqBYiocCA2RMByC5iZgGGEuG4BABslwIRkuSQCsw8VTuZbZXNBZXL4/B31Wj+816uvde6OrxNC5p8Xhf7Mx9O+dsJyT9SvPZ2u7fC7eQs04uz/5Fz/e36jrqdxlys11RZS5ddTHnJbrTqZGBlt4NgejeyWj/wBRVmlfJSjBecnd/wDqevYSrNXzq1opryf/AAeT+ybE5O9drubX9K/ueu1Gsqe14LfTco8w9tHEJWw2Hj9rvasn0tljF/1TPL6atojuvazKX7XS6LCxs/HvKl/wOGmwgSFyNgb/AF+vMSbvzCmeHfVFFWNixu3MoqMCqnVS92SuuXVGZCjzpzfluYHduTSW7dl5s3GL4c6cVOk3eKWdb3t9pfkSJbJVKqVVuk/HmNGs39j1Fw+LvvYvdRPdmhKVaUXmjdNfI3mExSqRvtJfEun9jn+/px+0vncfC4xRmpRl4NWauuYZ3nroJkFcrkDzMimNErgWIqL1G6A4AhKw7mUJYiA2BMgawWgZiNgBguRsUBrjMRBAgGBsXMAlVGBiKdzPkyiqiVqVpMRQT0ZrJ4aV7aW6nQ16ZrqsDFjtnTCp4Rc3fw2Rc42asuT2LUius7fJiNy9r1L2UYKM6LqaXVSUX13X5np+Ip5tOfupeGp5t7Fqa/ZpS5uvK/mufycfkemVpWTfNSX0NNPJva/R/eYeqr2y1aUnzvFxkl/Uzzmoes+2DD3oQmto11f1jJfl8jyWTArkIyySEkgK5MpmXSRRMDO4JRvNyf2Fp/M9vpc6CJqeCK0ZPrL8EbSDEeffzWk4xgVS/eU4vK75rfYf5GthTlPx+ZuON4qTfdRtaycm+b6GFTg1vL5Kwds958jCi4rWduiVkgOT2zX8tCSqrZK/1DZvfduyhHdsNN1w2rmpr+FuPotvvIW0KOSKj0383uQry6+2bBlkWUplsSsLUwOQqYWASAuQKiCKG4AbBcEgAWXImIS4DMRjNitgKJJDMDIMeojDq0jNqMpkFlYMqRhY5W+TZtJo1+JpZ6kaf+fLH5uxOOuL8vZPZRhO7wdNPeTnN+rVzt6+ZKz2zNed/wBfU5/snTyUaKSsv3i9M7t9x0tdXj/qv9Q7OL9qdPNgaj/ySpS/rivxPE7+B7v7QIZsDiPCi5f7WpfgeD5gBIVxDcrqyAqqTKblnddRHEg2XBK11KHR3+en4G0lVUU5PZJs1PB4WzS8l+L/AAMitjIyThHW+jd1YscdZ7pi4jPOXeJR95LS358yq8npaN14IylNbFFeSWwdYx25LnbysvuNlwXDXfeS2WkfF82YNCk6klFc930XNnRUYqKUVslZCMemuTi2TILJkK4LosuiyiLHTKyuuC5XmCFPcKEQyZA1xXIDkVuRQ+YjZXmBcgsciZhLgAdyK3UC2JIBs4rmIKwG3JKBIBnIDEqIXgeG77HUafWrBeiTk/omNUZqHj6lCuq1J2qU6ilB76rSz8Grr1FdvP7fR3D4JRpxXJ3t4NyZs+8taL2vLWz68zyvgXtNw1RRjXzUaiSTk4ynTvte6T015nVYTtlQm8jqU3LdPOlmXKUeq8jF09Ey2faHB97h60G379CtD/dBo+cs+ifVX+h9F1eJxqL3XpbVb3XM+d6qUHKFlaE5RTsr2TstfQssqWWfZHMW4spEzcufJc2OixwfgVSizJwWFq1WoU6c5T/yqL+bvt6m2xHZDHU4SrVKcVCEc0oqalPLdX0XTfyRLqf2sxqzsjUU6n7vIud7vw8DHyZbNRfncyeY0p6GmIV1Va9tTFlO4ak7mVw/C5nmfwp/Nohbz5bDh2HyRu/ilq/BdDLuJcCK89vatuAFglRkRjv4DJEIGTWHsQhRMpCEIA4gyEIUDIhrEIFTKBxIQIDiVyiQhBMgjiQgCpCVL9SECseS8TncW/el/NL7wkJXXyLh42szqMO7wrQesVQc8r1jmTg729SEOHp9x7fL5lYf7dUhHLTlKFlZOnOpBpLylb6GqlJy95ttybbb3be7ZCGsJ6zjsuyvZShXoxxNZzlmlNKmm4RWWVtWtXex1GBp0YVVRw+Ho00rPNkzN+e1yEOHpb17fHMmJeN66OWS1V3u1FRXyMjPvG3n4kIc3TX08q7bcHp4asnSuoVlKap8qbT1SfTXbkcxWlyCQ9uL3MfM9ZJuyFo08zS66fN2fnubunBJWWy2IQ1Hn9DOIMpCGnFbCPiEhAP/2Q==',
      },
      {
        'name': '堀内岬',
        'id': '@ami',
        'profileText': '【中国語・英語を活かせる法人営業　※世界トップクラスシェア製品／在宅勤務可',
        'userImagePath':
            'data:image/jpeg;base64,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',
      },
      {
        'name': '山口有樹',
        'id': '@hikaru',
        'profileText': '【東京】法人研修オペレーション担当 ～リモートワーク可／自分の裁量で休みが取りやすい環境～',
        'userImagePath':
            'https://thumb.ac-illust.com/37/3703cf0e1ab732a3038212b0f7aaa893_t.jpeg',
      }
    ],
  ),
  Class(
    name: 'プロダクトマネジメント',
    overView:
        'プロジェクトマネージャーとは、プロジェクトの運営、品質、納期等に責任を持ち、プロジェクトを円滑に推進させる役割を果たすプロジェクト管理者のことです。具体的な業務内容には、プロジェクトメンバーの選定、顧客折衝、案件受注、要件定義、品質管理、納期・進捗管理、コスト管理等があります。',
    goalPoint:
        'プロジェクトマネージャーになる為には、システム開発に関わる一連の業務に精通していなければなりません。よってプロジェクトメンバー（システムエンジニア）として開発や設計業務を経験した後に、プロジェクトリーダー、そしてプロジェクトマネージャーへとキャリアアップするケースが一般的です。',
    teacher: [
      {
        'name': '堺先生',
        'job': 'PM',
        'userImagePath':
            'https://thumb.ac-illust.com/37/3703cf0e1ab732a3038212b0f7aaa893_t.jpeg',
      }
    ],
    goalRequirements: ['出席率95%以上'],
    frameCount: 10,
    baseClass: 'UI/UXデザイン実践',
    classImgUrl:
        'https://images.assetsdelivery.com/compings_v2/logotok/logotok2004/logotok200406323.jpg',
    student: [
      {
        'name': '高橋夏輝',
        'id': '@natuki',
        'profileText': '【太陽光発電所の保安・管理業務】※成長し続けるリテールビジネス分野総合商社の関連会社／スタートアップ',
        'userImagePath':
            'https://www.sozai-library.com/wp-content/uploads/2017/01/teacher_9517.jpg'
      },
      {
        'name': '川島愛海',
        'id': '@ami',
        'profileText': '【中国語・英語を活かせる法人営業　※世界トップクラスシェア製品／在宅勤務可',
        'userImagePath':
            'data:image/jpeg;base64,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',
      },
      {
        'name': '宇多田ひかる',
        'id': '@hikaru',
        'profileText': '【東京】法人研修オペレーション担当 ～リモートワーク可／自分の裁量で休みが取りやすい環境～',
        'userImagePath':
            'https://thumb.ac-illust.com/37/3703cf0e1ab732a3038212b0f7aaa893_t.jpeg',
      },
    ],
  ),
  Class(
    name: '統計学',
    overView:
        '統計学とは、統計に関する研究を行う学問である。経験的に得られたバラツキのあるデータから、応用数学の手法を用いて数値上の性質や規則性あるいは不規則性を見いだす。統計的手法は、実験計画、データの要約や解釈を行う上での根拠を提供するため、幅広い分野で応用されている',
    goalPoint:
        '統計学を学んでいると、数値やグラフから解釈がしやすくなるだけではなく、基準値の異変や、グラフの上がり下がりからヒントになるものに気づきやすくなります。 また、データは揃っていても、適切な分析を行わなければ、意味のある正しい結果を導き出すことができません。',
    teacher: [
      {
        'name': '高橋先生',
        'job': 'データアナリスト',
        'userImagePath':
            'https://www.sozai-library.com/wp-content/uploads/2017/07/jinbutsu_kyoujyu_11701.jpg'
      }
    ],
    goalRequirements: ['出席率90%以上'],
    frameCount: 10,
    baseClass: 'データサイエンス',
    classImgUrl:
        'https://thumb.ac-illust.com/c2/c2e85ce4ef8d6233ee1a94932ba585e9_t.jpeg',
    student: [
      {
        'name': '山下朋大',
        'id': '@PlaceSnow',
        'profileText': '【太陽光発電所の保安・管理業務】※成長し続けるリテールビジネス分野総合商社の関連会社／スタートアップ',
        'userImagePath':
            'https://www.sozai-library.com/wp-content/uploads/2017/01/teacher_9517.jpg'
      },
      {
        'name': '堀内岬',
        'id': '@ami',
        'profileText': '【中国語・英語を活かせる法人営業　※世界トップクラスシェア製品／在宅勤務可',
        'userImagePath':
            'https://thumb.ac-illust.com/37/3703cf0e1ab732a3038212b0f7aaa893_t.jpeg',
      },
      {
        'name': '山口有樹',
        'id': '@hikaru',
        'profileText': '【東京】法人研修オペレーション担当 ～リモートワーク可／自分の裁量で休みが取りやすい環境～',
        'userImagePath':
            'https://thumb.ac-illust.com/37/3703cf0e1ab732a3038212b0f7aaa893_t.jpeg',
      }
    ],
  ),
];

class ClassUseCase extends StateNotifier<List<Class>> {
  ClassUseCase(this.classRepository) : super([]);
  final IClassRepository classRepository;

  void registerMyClass(Class classInfo) {
    classRepository.registerMyClass(classInfo);
  }

  void fetchClassInfo() {
    final classState = classRepository.fetchClassInfo();
    classState.listen((event) => state = [...event]);
  }

  void deleteClass(Class classInfo) {
    classRepository.deleteClass(classInfo);
  }

  void deleteAllClass(List<Class> classList) {
    classRepository.deleteAllClass(classList);
  }
}

final classUseCase = StateNotifierProvider(
  (ref) => ClassUseCase(
    FakeClassRepository(testClassList),
  ),
);
