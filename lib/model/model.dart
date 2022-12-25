class Quiz {
  const Quiz(this.question, this.answer);

  final String question;
  final bool answer;
}

const q1 = Quiz("Who is the best footballer ever?       -Pele", true);
const q2 = Quiz("Am I richest?", true);
const q3 = Quiz("Is Sadyr president of KR?", true);
const q4 = Quiz('is Bishkek the Dirty city in the world?', false);
const q5 = Quiz("Is hourse Kyrgyz's national animal?", false);
const q6 = Quiz("Is politech the worst university?", true);
const q7 = Quiz("is this really that politech is the worst university?", true);

const quizder = <Quiz>[q1, q2, q3, q4, q5, q6, q7];
