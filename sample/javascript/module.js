// 名前空間の作成
var module = module || {
    util : {},
};

// 即時関数を利用したモジュールパターン
module.util = (function() {
    // private
    var x = "abc";
    var y = "def";

    fx = x => {
       console.log(x); 
    };
    fx2 = () => {
       console.log(x); 
    };
    fx3 = () => {
       console.log(y); 
    };

    // public
    // 以下のオブジェクトにて返却されたもののみ
    // 外部からアクセス可能となる
    return {
        y: y,
        z: "ghi",
        fx: fx,
        fx2: fx2, 
        fx3: fx3,
        sety: x => {y = x;},
    };
}());

module.util.fx("123");
module.util.fx2();

console.log(module.util.y);
module.util.fx3();
module.util.y = "456";
console.log(module.util.y);
module.util.fx3();
module.util.sety("y");
module.util.fx3();

console.log(module.util.z);
module.util.fx(module.util.z);
module.util.z = "789";
console.log(module.util.z);
module.util.fx(module.util.z);
