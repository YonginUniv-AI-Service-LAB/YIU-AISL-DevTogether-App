class Faq {
  int? id;
  String header;
  String body;
  bool expanded = false;

  Faq(this.header, this.body, {this.expanded = false, this.id});
}

List<Faq> generateFaq(int numberOfFaq) {
  return List.generate(numberOfFaq, (index) => Faq(list[index].header, list[index].body, id: index));
}

List<Faq> list = [
  Faq(
    'TOPCIT은 무엇입니까?',
    'ICT산업 종사자 및 SW개발자가 현장에서의 업무를 성공적으로 수행하는데 요구되는 핵심 역량을 진단하고 평가하는 수행형 테스트입니다.'
  ),
  Faq(
      'TOPCIT 학습 방법이 궁금합니다.',
      'TOPCIT은 대학교의 컴퓨터공학 관련 교육과정을 토대로 ICT를 전공한 인재들이 갖추어야 할 역량을 검증할 수 있도록 개발되었습니다.\n따라서 ICT관련 전공 내용을 기본으로 TOPCIT을 준비하면 됩니다.\nTOPCIT 공식홈페이지(www.topcit.or.kr)에서는 TOPCIT 에센스(이북), 문제해설 동영상 등을 제공하고 있습니다.'
  ),
  Faq(
    '응시료는 얼마인가요?',
    'A응시료는 일반인 2만원, MOU체결기관 소속자 1만원(할인은 단체접수에 한함)으로, 기존 자격평가에 비해 낮은 수준으로 책정되었습니다.'
  ),
  Faq(
      '성적공고는 언제 하나요?',
      '평가일정 안내시 성적공고일을 안내하고, 시행 공지에 별도 안내가 없는 경우 평가일 이후 한달 이내에 TOPCIT홈페이지를 통해 성적공고에 대해 공지하고 있습니다(평가일 이후 한달 이내).\n평가일 이후, TOPCIT홈페이지 [소식과 문의 > 공지 사항] 게시판을 확인해 주시기 바랍니다.'
  ),
  Faq(
    'TOPCIT 점수를 잘 받으면 정말로 실무 능력이 입증되나요?',
    '평가를 통해 개인의 역량을 측정하는 데에는 진점수를 방해하는 오차가 존재합니다.\n즉, TOPCIT 점수가 개인이 보유한 역량과 필요충분 관계에 있다고 말하기는 어렵습니다.\n그러나 TOPCIT은 아는 것(knowing)보다 할 수 있는(performing) 역량을 평가하는 참평가(authentic assessment)를 지향합니다.\n응시생이 가진 실질적인 역량을 타당하게 측정하고 평가의 객관성을 확보하기 위해 신뢰도와 타당도, 문항 분석 등을 수행하여 실제적인 실무능력을 평가하기 위해 노력하고 있습니다.'
  ),
  Faq(
    'TOPCIT에센스는 e-book 형태로만 이용이 가능한가요?',
    'TOPCIT에센스에 대한 저작권을 가지고 있는 과학기술정보통신부의 정책 상, 책자 및 e-book 형태(PC 및 모바일 열람 가능)로 무료 배포하고 무단전재 및 재배포를 금하고 있어 PDF 파일 제공을 지원하지 않습니다.\n현재는 e-book 형태로만 이용이 가능합니다.'
  ),
  Faq(
    '홈페이지 이용 시에 오류가 납니다.',
    '이용하지 마세요;;;;;;;'
  )
];