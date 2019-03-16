Papers
=======

## 1. [generalized additive modlling and zero infalted count data](https://www.sciencedirect.com/science/article/pii/S0304380002001941)

* gam 모델을 이용한 zero inflated count data
* stem counts for a Eucalypt species in South East Australia
* 

## 2. [Structural equation modeling in medical research: a primer](https://bmcresnotes.biomedcentral.com/articles/10.1186/1756-0500-3-267)
* 구조방정식에 대한 기본적인 정의 및 절차 설명
* 간단한 예시를 통한 적용


# ESL2 (The Elements of Statistical Learning)
## 1. More on the Lasso and Related path Algorithms(ESL2 3.8)
#### Forward Stagewise Regression
  - Algorithm
  
  ![](https://github.com/miniii222/papers-summary/blob/master/More_on_the_Lasso/FS_algorithm.JPG "FS_algo")
  - FS0는 Lasso와 비슷하지만, 더 복잡하다. 하지만, path는 arc-length에 영향을 받기 때문에 더 간단하다.
  - FS0와 Lasso의 performance자체는 비슷하다.
#### [lars 및 FS R package 참고](https://cran.r-project.org/web/packages/lars/lars.pdf)
#### [python 패키지 참고](https://github.com/bbalasub1/glmnet_python/blob/master/test/glmnet_examples.ipynb)
  - predictor들이 이미 데이터 안에서 정의된 경우 grouped lasso를 사용한다. group이 함께 선택되고, 사라진다.
  
  ![](https://github.com/miniii222/papers-summary/blob/master/More_on_the_Lasso/grouped_lasso.JPG "grouped_lasso")
  - non-zero coefficietns의 bias를 막기 위해 relaxed lasso, SCAD lasso 등을 사용한다.
  
 ## 2. Piecewise Polynomials and Splines(ESL2 5.1-5.4)
#### Piecewise Polynomials and Splines
- 직선으로 fitting할 수 없는 function을 구간을 나눠서 구간별 sub-function으로 fitting
- constant, linear 여러 방법
- 가장 많이 쓰는 cubic spline
- 양 끝점에 제약조건을 걸어 natural cubic spline
#### Smoothing splines
- knots의 개수를 정하지 않고, 모든 점을 knots로 가정
- RSS를 최소로 하는 람다를 구하는 방식

## 3. EM algorithm and Ensemble(ESL2 5.1-5.4)
- 
- Ensemble : bagging, boosting, stacking

## 4. Tree Boosting(ESL2 10.9-)
#### 참고 link
- [xgboost document](https://xgboost.readthedocs.io/en/latest/tutorials/model.html) : 공식 xgboost 문서
- [xgboost 설명 블로그 ](https://brunch.co.kr/@snobberys/137) : 설명이 아주 좋다!

## 5. Choosing a point from the surface of a shape
- 논문 [link](https://projecteuclid.org/download/pdf_1/euclid.aoms/1177692644)
- 차원이 커져도 unit sphere on the surface 의 점들을 발생시키는 방법을 소개하는 논문.
- 차원의 저주에 의해 단 1%밀도의 점들도 굉장히 표면근처로 몰려 있기 때문에 sphere내부의 점들을 발생하는 것은 쉽지 않다.
- 2번 방법을 이용하면, 내부의 점들도 쉽게 발생시킬 수 있다.

