Papers
=======

1. [generalized additive modlling and zero infalted count data](https://www.sciencedirect.com/science/article/pii/S0304380002001941)

* gam 모델을 이용한 zero inflated count data
* stem counts for a Eucalypt species in South East Australia
* 

2. [Structural equation modeling in medical research: a primer](https://bmcresnotes.biomedcentral.com/articles/10.1186/1756-0500-3-267)
* 구조방정식에 대한 기본적인 정의 및 절차 설명
* 간단한 예시를 통한 적용

3. More on the Lasso and Related path Algorithms(ESL2 3.8)
* Forward Stagewise Regression
  - Algorithm
  
  ![](https://github.com/miniii222/papers-summary/blob/master/FS_algorithm.JPG "FS_algo")
  - FS0는 Lasso와 비슷하지만, 더 복잡하다. 하지만, path는 arc-length에 영향을 받기 때문에 더 간단하다.
  - FS0와 Lasso의 performance자체는 비슷하다.
* [lars 및 FS R package 참고](https://cran.r-project.org/web/packages/lars/lars.pdf)
* [python 패키지 챀고](https://github.com/bbalasub1/glmnet_python/blob/master/test/glmnet_examples.ipynb)
  - predictor들이 이미 데이터 안에서 정의된 경우 grouped lasso를 사용한다. group이 함께 선택되고, 사라진다.
  
  ![](https://github.com/miniii222/papers-summary/blob/master/grouped_lasso.JPG "grouped_lasso")
  - non-zero coefficietns의 bias를 막기 위해 relaxed lasso, SCAD lasso 등을 사용한다.
