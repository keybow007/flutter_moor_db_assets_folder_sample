// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Question extends DataClass implements Insertable<Question> {
  final int id;
  final String question;
  final String answer;
  final String choice1;
  final String choice2;
  final String choice3;
  final bool isCorrect;
  Question(
      {@required this.id,
      @required this.question,
      @required this.answer,
      @required this.choice1,
      @required this.choice2,
      @required this.choice3,
      @required this.isCorrect});
  factory Question.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Question(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      question: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}question']),
      answer:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}answer']),
      choice1:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}choice1']),
      choice2:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}choice2']),
      choice3:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}choice3']),
      isCorrect: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_correct']),
    );
  }
  factory Question.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Question(
      id: serializer.fromJson<int>(json['id']),
      question: serializer.fromJson<String>(json['question']),
      answer: serializer.fromJson<String>(json['answer']),
      choice1: serializer.fromJson<String>(json['choice1']),
      choice2: serializer.fromJson<String>(json['choice2']),
      choice3: serializer.fromJson<String>(json['choice3']),
      isCorrect: serializer.fromJson<bool>(json['isCorrect']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'question': serializer.toJson<String>(question),
      'answer': serializer.toJson<String>(answer),
      'choice1': serializer.toJson<String>(choice1),
      'choice2': serializer.toJson<String>(choice2),
      'choice3': serializer.toJson<String>(choice3),
      'isCorrect': serializer.toJson<bool>(isCorrect),
    };
  }

  @override
  QuestionsCompanion createCompanion(bool nullToAbsent) {
    return QuestionsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      question: question == null && nullToAbsent
          ? const Value.absent()
          : Value(question),
      answer:
          answer == null && nullToAbsent ? const Value.absent() : Value(answer),
      choice1: choice1 == null && nullToAbsent
          ? const Value.absent()
          : Value(choice1),
      choice2: choice2 == null && nullToAbsent
          ? const Value.absent()
          : Value(choice2),
      choice3: choice3 == null && nullToAbsent
          ? const Value.absent()
          : Value(choice3),
      isCorrect: isCorrect == null && nullToAbsent
          ? const Value.absent()
          : Value(isCorrect),
    );
  }

  Question copyWith(
          {int id,
          String question,
          String answer,
          String choice1,
          String choice2,
          String choice3,
          bool isCorrect}) =>
      Question(
        id: id ?? this.id,
        question: question ?? this.question,
        answer: answer ?? this.answer,
        choice1: choice1 ?? this.choice1,
        choice2: choice2 ?? this.choice2,
        choice3: choice3 ?? this.choice3,
        isCorrect: isCorrect ?? this.isCorrect,
      );
  @override
  String toString() {
    return (StringBuffer('Question(')
          ..write('id: $id, ')
          ..write('question: $question, ')
          ..write('answer: $answer, ')
          ..write('choice1: $choice1, ')
          ..write('choice2: $choice2, ')
          ..write('choice3: $choice3, ')
          ..write('isCorrect: $isCorrect')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          question.hashCode,
          $mrjc(
              answer.hashCode,
              $mrjc(
                  choice1.hashCode,
                  $mrjc(choice2.hashCode,
                      $mrjc(choice3.hashCode, isCorrect.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Question &&
          other.id == this.id &&
          other.question == this.question &&
          other.answer == this.answer &&
          other.choice1 == this.choice1 &&
          other.choice2 == this.choice2 &&
          other.choice3 == this.choice3 &&
          other.isCorrect == this.isCorrect);
}

class QuestionsCompanion extends UpdateCompanion<Question> {
  final Value<int> id;
  final Value<String> question;
  final Value<String> answer;
  final Value<String> choice1;
  final Value<String> choice2;
  final Value<String> choice3;
  final Value<bool> isCorrect;
  const QuestionsCompanion({
    this.id = const Value.absent(),
    this.question = const Value.absent(),
    this.answer = const Value.absent(),
    this.choice1 = const Value.absent(),
    this.choice2 = const Value.absent(),
    this.choice3 = const Value.absent(),
    this.isCorrect = const Value.absent(),
  });
  QuestionsCompanion.insert({
    @required int id,
    @required String question,
    @required String answer,
    @required String choice1,
    @required String choice2,
    @required String choice3,
    this.isCorrect = const Value.absent(),
  })  : id = Value(id),
        question = Value(question),
        answer = Value(answer),
        choice1 = Value(choice1),
        choice2 = Value(choice2),
        choice3 = Value(choice3);
  QuestionsCompanion copyWith(
      {Value<int> id,
      Value<String> question,
      Value<String> answer,
      Value<String> choice1,
      Value<String> choice2,
      Value<String> choice3,
      Value<bool> isCorrect}) {
    return QuestionsCompanion(
      id: id ?? this.id,
      question: question ?? this.question,
      answer: answer ?? this.answer,
      choice1: choice1 ?? this.choice1,
      choice2: choice2 ?? this.choice2,
      choice3: choice3 ?? this.choice3,
      isCorrect: isCorrect ?? this.isCorrect,
    );
  }
}

class $QuestionsTable extends Questions
    with TableInfo<$QuestionsTable, Question> {
  final GeneratedDatabase _db;
  final String _alias;
  $QuestionsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _questionMeta = const VerificationMeta('question');
  GeneratedTextColumn _question;
  @override
  GeneratedTextColumn get question => _question ??= _constructQuestion();
  GeneratedTextColumn _constructQuestion() {
    return GeneratedTextColumn(
      'question',
      $tableName,
      false,
    );
  }

  final VerificationMeta _answerMeta = const VerificationMeta('answer');
  GeneratedTextColumn _answer;
  @override
  GeneratedTextColumn get answer => _answer ??= _constructAnswer();
  GeneratedTextColumn _constructAnswer() {
    return GeneratedTextColumn(
      'answer',
      $tableName,
      false,
    );
  }

  final VerificationMeta _choice1Meta = const VerificationMeta('choice1');
  GeneratedTextColumn _choice1;
  @override
  GeneratedTextColumn get choice1 => _choice1 ??= _constructChoice1();
  GeneratedTextColumn _constructChoice1() {
    return GeneratedTextColumn(
      'choice1',
      $tableName,
      false,
    );
  }

  final VerificationMeta _choice2Meta = const VerificationMeta('choice2');
  GeneratedTextColumn _choice2;
  @override
  GeneratedTextColumn get choice2 => _choice2 ??= _constructChoice2();
  GeneratedTextColumn _constructChoice2() {
    return GeneratedTextColumn(
      'choice2',
      $tableName,
      false,
    );
  }

  final VerificationMeta _choice3Meta = const VerificationMeta('choice3');
  GeneratedTextColumn _choice3;
  @override
  GeneratedTextColumn get choice3 => _choice3 ??= _constructChoice3();
  GeneratedTextColumn _constructChoice3() {
    return GeneratedTextColumn(
      'choice3',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isCorrectMeta = const VerificationMeta('isCorrect');
  GeneratedBoolColumn _isCorrect;
  @override
  GeneratedBoolColumn get isCorrect => _isCorrect ??= _constructIsCorrect();
  GeneratedBoolColumn _constructIsCorrect() {
    return GeneratedBoolColumn('is_correct', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, question, answer, choice1, choice2, choice3, isCorrect];
  @override
  $QuestionsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'questions';
  @override
  final String actualTableName = 'questions';
  @override
  VerificationContext validateIntegrity(QuestionsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (d.question.present) {
      context.handle(_questionMeta,
          question.isAcceptableValue(d.question.value, _questionMeta));
    } else if (isInserting) {
      context.missing(_questionMeta);
    }
    if (d.answer.present) {
      context.handle(
          _answerMeta, answer.isAcceptableValue(d.answer.value, _answerMeta));
    } else if (isInserting) {
      context.missing(_answerMeta);
    }
    if (d.choice1.present) {
      context.handle(_choice1Meta,
          choice1.isAcceptableValue(d.choice1.value, _choice1Meta));
    } else if (isInserting) {
      context.missing(_choice1Meta);
    }
    if (d.choice2.present) {
      context.handle(_choice2Meta,
          choice2.isAcceptableValue(d.choice2.value, _choice2Meta));
    } else if (isInserting) {
      context.missing(_choice2Meta);
    }
    if (d.choice3.present) {
      context.handle(_choice3Meta,
          choice3.isAcceptableValue(d.choice3.value, _choice3Meta));
    } else if (isInserting) {
      context.missing(_choice3Meta);
    }
    if (d.isCorrect.present) {
      context.handle(_isCorrectMeta,
          isCorrect.isAcceptableValue(d.isCorrect.value, _isCorrectMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Question map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Question.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(QuestionsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.question.present) {
      map['question'] = Variable<String, StringType>(d.question.value);
    }
    if (d.answer.present) {
      map['answer'] = Variable<String, StringType>(d.answer.value);
    }
    if (d.choice1.present) {
      map['choice1'] = Variable<String, StringType>(d.choice1.value);
    }
    if (d.choice2.present) {
      map['choice2'] = Variable<String, StringType>(d.choice2.value);
    }
    if (d.choice3.present) {
      map['choice3'] = Variable<String, StringType>(d.choice3.value);
    }
    if (d.isCorrect.present) {
      map['is_correct'] = Variable<bool, BoolType>(d.isCorrect.value);
    }
    return map;
  }

  @override
  $QuestionsTable createAlias(String alias) {
    return $QuestionsTable(_db, alias);
  }
}

class Record extends DataClass implements Insertable<Record> {
  final int id;
  final String date;
  final int numberOfQuestion;
  final int numberOfCorrect;
  final int correctRate;
  Record(
      {@required this.id,
      @required this.date,
      @required this.numberOfQuestion,
      @required this.numberOfCorrect,
      @required this.correctRate});
  factory Record.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Record(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      date: stringType.mapFromDatabaseResponse(data['${effectivePrefix}date']),
      numberOfQuestion: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}number_of_question']),
      numberOfCorrect: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}number_of_correct']),
      correctRate: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}correct_rate']),
    );
  }
  factory Record.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Record(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<String>(json['date']),
      numberOfQuestion: serializer.fromJson<int>(json['numberOfQuestion']),
      numberOfCorrect: serializer.fromJson<int>(json['numberOfCorrect']),
      correctRate: serializer.fromJson<int>(json['correctRate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<String>(date),
      'numberOfQuestion': serializer.toJson<int>(numberOfQuestion),
      'numberOfCorrect': serializer.toJson<int>(numberOfCorrect),
      'correctRate': serializer.toJson<int>(correctRate),
    };
  }

  @override
  RecordsCompanion createCompanion(bool nullToAbsent) {
    return RecordsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      numberOfQuestion: numberOfQuestion == null && nullToAbsent
          ? const Value.absent()
          : Value(numberOfQuestion),
      numberOfCorrect: numberOfCorrect == null && nullToAbsent
          ? const Value.absent()
          : Value(numberOfCorrect),
      correctRate: correctRate == null && nullToAbsent
          ? const Value.absent()
          : Value(correctRate),
    );
  }

  Record copyWith(
          {int id,
          String date,
          int numberOfQuestion,
          int numberOfCorrect,
          int correctRate}) =>
      Record(
        id: id ?? this.id,
        date: date ?? this.date,
        numberOfQuestion: numberOfQuestion ?? this.numberOfQuestion,
        numberOfCorrect: numberOfCorrect ?? this.numberOfCorrect,
        correctRate: correctRate ?? this.correctRate,
      );
  @override
  String toString() {
    return (StringBuffer('Record(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('numberOfQuestion: $numberOfQuestion, ')
          ..write('numberOfCorrect: $numberOfCorrect, ')
          ..write('correctRate: $correctRate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          date.hashCode,
          $mrjc(numberOfQuestion.hashCode,
              $mrjc(numberOfCorrect.hashCode, correctRate.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Record &&
          other.id == this.id &&
          other.date == this.date &&
          other.numberOfQuestion == this.numberOfQuestion &&
          other.numberOfCorrect == this.numberOfCorrect &&
          other.correctRate == this.correctRate);
}

class RecordsCompanion extends UpdateCompanion<Record> {
  final Value<int> id;
  final Value<String> date;
  final Value<int> numberOfQuestion;
  final Value<int> numberOfCorrect;
  final Value<int> correctRate;
  const RecordsCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.numberOfQuestion = const Value.absent(),
    this.numberOfCorrect = const Value.absent(),
    this.correctRate = const Value.absent(),
  });
  RecordsCompanion.insert({
    this.id = const Value.absent(),
    @required String date,
    @required int numberOfQuestion,
    @required int numberOfCorrect,
    @required int correctRate,
  })  : date = Value(date),
        numberOfQuestion = Value(numberOfQuestion),
        numberOfCorrect = Value(numberOfCorrect),
        correctRate = Value(correctRate);
  RecordsCompanion copyWith(
      {Value<int> id,
      Value<String> date,
      Value<int> numberOfQuestion,
      Value<int> numberOfCorrect,
      Value<int> correctRate}) {
    return RecordsCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      numberOfQuestion: numberOfQuestion ?? this.numberOfQuestion,
      numberOfCorrect: numberOfCorrect ?? this.numberOfCorrect,
      correctRate: correctRate ?? this.correctRate,
    );
  }
}

class $RecordsTable extends Records with TableInfo<$RecordsTable, Record> {
  final GeneratedDatabase _db;
  final String _alias;
  $RecordsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _dateMeta = const VerificationMeta('date');
  GeneratedTextColumn _date;
  @override
  GeneratedTextColumn get date => _date ??= _constructDate();
  GeneratedTextColumn _constructDate() {
    return GeneratedTextColumn(
      'date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _numberOfQuestionMeta =
      const VerificationMeta('numberOfQuestion');
  GeneratedIntColumn _numberOfQuestion;
  @override
  GeneratedIntColumn get numberOfQuestion =>
      _numberOfQuestion ??= _constructNumberOfQuestion();
  GeneratedIntColumn _constructNumberOfQuestion() {
    return GeneratedIntColumn(
      'number_of_question',
      $tableName,
      false,
    );
  }

  final VerificationMeta _numberOfCorrectMeta =
      const VerificationMeta('numberOfCorrect');
  GeneratedIntColumn _numberOfCorrect;
  @override
  GeneratedIntColumn get numberOfCorrect =>
      _numberOfCorrect ??= _constructNumberOfCorrect();
  GeneratedIntColumn _constructNumberOfCorrect() {
    return GeneratedIntColumn(
      'number_of_correct',
      $tableName,
      false,
    );
  }

  final VerificationMeta _correctRateMeta =
      const VerificationMeta('correctRate');
  GeneratedIntColumn _correctRate;
  @override
  GeneratedIntColumn get correctRate =>
      _correctRate ??= _constructCorrectRate();
  GeneratedIntColumn _constructCorrectRate() {
    return GeneratedIntColumn(
      'correct_rate',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, date, numberOfQuestion, numberOfCorrect, correctRate];
  @override
  $RecordsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'records';
  @override
  final String actualTableName = 'records';
  @override
  VerificationContext validateIntegrity(RecordsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.date.present) {
      context.handle(
          _dateMeta, date.isAcceptableValue(d.date.value, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (d.numberOfQuestion.present) {
      context.handle(
          _numberOfQuestionMeta,
          numberOfQuestion.isAcceptableValue(
              d.numberOfQuestion.value, _numberOfQuestionMeta));
    } else if (isInserting) {
      context.missing(_numberOfQuestionMeta);
    }
    if (d.numberOfCorrect.present) {
      context.handle(
          _numberOfCorrectMeta,
          numberOfCorrect.isAcceptableValue(
              d.numberOfCorrect.value, _numberOfCorrectMeta));
    } else if (isInserting) {
      context.missing(_numberOfCorrectMeta);
    }
    if (d.correctRate.present) {
      context.handle(_correctRateMeta,
          correctRate.isAcceptableValue(d.correctRate.value, _correctRateMeta));
    } else if (isInserting) {
      context.missing(_correctRateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Record map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Record.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(RecordsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.date.present) {
      map['date'] = Variable<String, StringType>(d.date.value);
    }
    if (d.numberOfQuestion.present) {
      map['number_of_question'] =
          Variable<int, IntType>(d.numberOfQuestion.value);
    }
    if (d.numberOfCorrect.present) {
      map['number_of_correct'] =
          Variable<int, IntType>(d.numberOfCorrect.value);
    }
    if (d.correctRate.present) {
      map['correct_rate'] = Variable<int, IntType>(d.correctRate.value);
    }
    return map;
  }

  @override
  $RecordsTable createAlias(String alias) {
    return $RecordsTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $QuestionsTable _questions;
  $QuestionsTable get questions => _questions ??= $QuestionsTable(this);
  $RecordsTable _records;
  $RecordsTable get records => _records ??= $RecordsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [questions, records];
}
