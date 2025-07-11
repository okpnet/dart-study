import 'dart:async';

void main(){
  //コンパイル時の定数
  //設定読み込みで使える?
  final a="test";
  //未婚パイルの定数
  const b="test2";
  //リスト List<string>
  var l=["a","b"];
  List<int> list=[2,3,4,5];
  list.add(1);
  print(list);
  //いつも繰り返し
  for(var i=0;i<list.length;i++){
    var forI=list[i];
    print("$i番目は$forI");
  }
  //取り出しの繰り返し
  for(var i in list){
    print("i=$i");
  }
  //aarayならMapでも同様にForeachメソッドが使える
  list.forEach((value)
  {
    print("foreachの$value");
  });

  try{
    throw Exception("例外");
  } on Exception catch(ex){
    print(ex);
    //例外の再スロー-
    //rethrow;
  }finally{
    print("finaly");
  }

}
//抽象化クラス
abstract class TestBase{
  //プライイベートがないのでアンダースコアで始まるときはクラス、ライブラリ固有らしい
  String _name="";
  //ゲッター
  String get Name=>_name;
  set Name(String name)=>_name=name;

  TestBase(this._name);//コンストラクタ

  void NamePrint()=>print(Name);
}

class Test extends TestBase{
  Test(String name):super(name);//スパーで親クラスにアクセス
  @override
  void NamePrint(){//オーバーライド
    print("Test2のNameは$Name");
  }
}

class Test2<T> extends TestBase{
  Test2(String name):super(name);//スパーで親クラスにアクセス
  @override
  void NamePrint(){
    super.NamePrint();
    print("Test2のNameは$Name");
  }
}

class ImpletmentTestClazz implements TestBase{
  String _name="";//メンバを実装しないとインプリメントのエラー
  String get Name=>"ImpletmentTestClazz";//メンバを実装しないとインプリメントのエラー
  set Name(String name)=>print(name);//メンバを実装しないとインプリメントのエラー

  ImpletmentTestClazz();//継承ではないので、TestBaseのコンストラクタを呼び出さなくても大丈夫

  void NamePrint(){//メンバを実装しないとインプリメントのエラー
    print("インターフェイスを実装した");
  }
}

