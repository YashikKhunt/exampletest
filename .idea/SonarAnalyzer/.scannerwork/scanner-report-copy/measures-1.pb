ðV
secai.cognicrypt.error.tree2ÐV
ÍV[ {
  "class" : "org.example.Msg",
  "method" : "<org.example.Msg: void encrypt()>",
  "errorType" : "ConstraintError",
  "rule" : "javax.crypto.Cipher",
  "line" : 31,
  "statement" : "r0 = getInstance(varReplacer13)",
  "hashcode" : "-145597774",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.Msg",
  "method" : "<org.example.Msg: void encrypt()>",
  "errorType" : "IncompleteOperationError",
  "rule" : "javax.crypto.Cipher",
  "line" : 31,
  "statement" : "r0 = getInstance(varReplacer13)",
  "hashcode" : "-1114854047",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.Msg",
  "method" : "<org.example.Msg: void encryptAlgFromVar()>",
  "errorType" : "IncompleteOperationError",
  "rule" : "javax.crypto.Cipher",
  "line" : 36,
  "statement" : "r1 = getInstance(r0)",
  "hashcode" : "-1497446514",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.Msg",
  "method" : "<org.example.Msg: void encryptAlgFromVar()>",
  "errorType" : "ConstraintError",
  "rule" : "javax.crypto.Cipher",
  "line" : 36,
  "statement" : "r1 = getInstance(r0)",
  "hashcode" : "-248762593",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.Msg",
  "method" : "<org.example.Msg: void encryptAlgFromField()>",
  "errorType" : "IncompleteOperationError",
  "rule" : "javax.crypto.Cipher",
  "line" : 41,
  "statement" : "r2 = getInstance($r1)",
  "hashcode" : "440937931",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.Msg",
  "method" : "<org.example.Msg: void encryptAlgFromField()>",
  "errorType" : "ConstraintError",
  "rule" : "javax.crypto.Cipher",
  "line" : 41,
  "statement" : "r2 = getInstance($r1)",
  "hashcode" : "1120347456",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.Msg",
  "method" : "<org.example.Msg: byte[] sign(java.lang.String)>",
  "errorType" : "RequiredPredicateError",
  "rule" : "java.security.Signature",
  "line" : 13,
  "statement" : "r0.initSign($r2)",
  "hashcode" : "1805649655",
  "precedingErrors" : [ "1520923624" ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.Msg",
  "method" : "<org.example.Msg: byte[] sign(java.lang.String)>",
  "errorType" : "ConstraintError",
  "rule" : "java.security.Signature",
  "line" : 12,
  "statement" : "r0 = getInstance(varReplacer10)",
  "hashcode" : "-1973767962",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.Msg",
  "method" : "<org.example.Msg: java.security.PrivateKey getPrivateKey()>",
  "errorType" : "RequiredPredicateError",
  "rule" : "java.security.KeyPair",
  "line" : 21,
  "statement" : "r1 = r0.generateKeyPair()",
  "hashcode" : "-502563569",
  "precedingErrors" : [ "-494155059" ],
  "subsequentErrors" : [ "1520923624" ]
}, {
  "class" : "org.example.Msg",
  "method" : "<org.example.Msg: java.security.PrivateKey getPrivateKey()>",
  "errorType" : "ConstraintError",
  "rule" : "java.security.KeyPairGenerator",
  "line" : 19,
  "statement" : "r0 = getInstance(varReplacer12)",
  "hashcode" : "-494155059",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ "-502563569" ]
}, {
  "class" : "org.example.Msg",
  "method" : "<org.example.Msg: java.security.PrivateKey getPrivateKey()>",
  "errorType" : "RequiredPredicateError",
  "rule" : "java.security.PrivateKey",
  "line" : 22,
  "statement" : "$r2 = r1.getPrivate()",
  "hashcode" : "1520923624",
  "precedingErrors" : [ "-502563569" ],
  "subsequentErrors" : [ "1805649655" ]
}, {
  "class" : "org.example.Main",
  "method" : "<org.example.Main: void incorrect()>",
  "errorType" : "ImpreciseValueExtractionError",
  "rule" : "java.security.spec.RSAKeyGenParameterSpec",
  "line" : 23,
  "statement" : "$r1.<init>(s0,$r2)",
  "hashcode" : "1698095942",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ "-1347172430" ]
}, {
  "class" : "org.example.Main",
  "method" : "<org.example.Main: void incorrect()>",
  "errorType" : "RequiredPredicateError",
  "rule" : "java.security.KeyPairGenerator",
  "line" : 24,
  "statement" : "r0.initialize(r3,$r4)",
  "hashcode" : "-1347172430",
  "precedingErrors" : [ "1698095942", "-445990403" ],
  "subsequentErrors" : [ "1816304488" ]
}, {
  "class" : "org.example.Main",
  "method" : "<org.example.Main: void incorrect()>",
  "errorType" : "ConstraintError",
  "rule" : "java.security.spec.RSAKeyGenParameterSpec",
  "line" : 23,
  "statement" : "$r1.<init>(s0,$r2)",
  "hashcode" : "-445990403",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ "-1347172430" ]
}, {
  "class" : "org.example.Main",
  "method" : "<org.example.Main: void incorrect()>",
  "errorType" : "RequiredPredicateError",
  "rule" : "java.security.KeyPair",
  "line" : 25,
  "statement" : "r5 = r0.generateKeyPair()",
  "hashcode" : "1816304488",
  "precedingErrors" : [ "-1347172430" ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.Main",
  "method" : "<org.example.Main: void incorrectBigInteger()>",
  "errorType" : "RequiredPredicateError",
  "rule" : "java.security.KeyPairGenerator",
  "line" : 39,
  "statement" : "r0.initialize(r3,$r4)",
  "hashcode" : "1079868650",
  "precedingErrors" : [ "-1693562110", "-55384483" ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.Main",
  "method" : "<org.example.Main: void incorrectBigInteger()>",
  "errorType" : "ConstraintError",
  "rule" : "java.security.spec.RSAKeyGenParameterSpec",
  "line" : 38,
  "statement" : "$r1.<init>(s0,$r2)",
  "hashcode" : "-1693562110",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ "1079868650" ]
}, {
  "class" : "org.example.Main",
  "method" : "<org.example.Main: void incorrectBigInteger()>",
  "errorType" : "ConstraintError",
  "rule" : "java.security.spec.RSAKeyGenParameterSpec",
  "line" : 38,
  "statement" : "$r1.<init>(s0,$r2)",
  "hashcode" : "-55384483",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ "1079868650" ]
}, {
  "class" : "org.example.Main",
  "method" : "<org.example.Main: void correct()>",
  "errorType" : "RequiredPredicateError",
  "rule" : "java.security.KeyPairGenerator",
  "line" : 16,
  "statement" : "r0.initialize(r3,$r4)",
  "hashcode" : "66474132",
  "precedingErrors" : [ "415163048" ],
  "subsequentErrors" : [ "-1609948301" ]
}, {
  "class" : "org.example.Main",
  "method" : "<org.example.Main: void correct()>",
  "errorType" : "ImpreciseValueExtractionError",
  "rule" : "java.security.spec.RSAKeyGenParameterSpec",
  "line" : 15,
  "statement" : "$r1.<init>(s0,$r2)",
  "hashcode" : "415163048",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ "66474132" ]
}, {
  "class" : "org.example.Main",
  "method" : "<org.example.Main: void correct()>",
  "errorType" : "RequiredPredicateError",
  "rule" : "java.security.KeyPair",
  "line" : 17,
  "statement" : "r5 = r0.generateKeyPair()",
  "hashcode" : "-1609948301",
  "precedingErrors" : [ "66474132" ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.test",
  "method" : "<org.example.test: void main(java.lang.String[])>",
  "errorType" : "RequiredPredicateError",
  "rule" : "javax.crypto.spec.SecretKeySpec",
  "line" : 17,
  "statement" : "$r55.<init>($r4,varReplacer3)",
  "hashcode" : "2071157299",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ "-363463181" ]
}, {
  "class" : "org.example.test",
  "method" : "<org.example.test: void main(java.lang.String[])>",
  "errorType" : "ConstraintError",
  "rule" : "javax.crypto.spec.SecretKeySpec",
  "line" : 17,
  "statement" : "$r55.<init>($r4,varReplacer3)",
  "hashcode" : "-486527279",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ "-363463181" ]
}, {
  "class" : "org.example.test",
  "method" : "<org.example.test: void main(java.lang.String[])>",
  "errorType" : "ConstraintError",
  "rule" : "javax.crypto.spec.SecretKeySpec",
  "line" : 55,
  "statement" : "$r57.<init>($r10,varReplacer1)",
  "hashcode" : "446989110",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ "-122252564" ]
}, {
  "class" : "org.example.test",
  "method" : "<org.example.test: void main(java.lang.String[])>",
  "errorType" : "RequiredPredicateError",
  "rule" : "javax.crypto.spec.SecretKeySpec",
  "line" : 37,
  "statement" : "$r56.<init>($r40,varReplacer2)",
  "hashcode" : "510878289",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ "1368569868" ]
}, {
  "class" : "org.example.test",
  "method" : "<org.example.test: void main(java.lang.String[])>",
  "errorType" : "AlternativeReqPredicateError",
  "rule" : "javax.crypto.Cipher",
  "line" : 22,
  "statement" : "r34.init(varReplacer0,r33)",
  "hashcode" : "-363463181",
  "precedingErrors" : [ "2071157299", "-486527279" ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.test",
  "method" : "<org.example.test: void main(java.lang.String[])>",
  "errorType" : "RequiredPredicateError",
  "rule" : "javax.crypto.spec.SecretKeySpec",
  "line" : 55,
  "statement" : "$r57.<init>($r10,varReplacer1)",
  "hashcode" : "-1797345463",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ "-122252564" ]
}, {
  "class" : "org.example.test",
  "method" : "<org.example.test: void main(java.lang.String[])>",
  "errorType" : "ConstraintError",
  "rule" : "javax.crypto.Cipher",
  "line" : 40,
  "statement" : "r42 = getInstance(varReplacer8)",
  "hashcode" : "923178479",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.test",
  "method" : "<org.example.test: void main(java.lang.String[])>",
  "errorType" : "AlternativeReqPredicateError",
  "rule" : "javax.crypto.Cipher",
  "line" : 59,
  "statement" : "r52.init(varReplacer7,r51)",
  "hashcode" : "-122252564",
  "precedingErrors" : [ "446989110", "-1797345463" ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.test",
  "method" : "<org.example.test: void main(java.lang.String[])>",
  "errorType" : "ConstraintError",
  "rule" : "javax.crypto.Cipher",
  "line" : 58,
  "statement" : "r52 = getInstance(varReplacer6)",
  "hashcode" : "1430190658",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.test",
  "method" : "<org.example.test: void main(java.lang.String[])>",
  "errorType" : "ConstraintError",
  "rule" : "javax.crypto.spec.SecretKeySpec",
  "line" : 37,
  "statement" : "$r56.<init>($r40,varReplacer2)",
  "hashcode" : "-715970915",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ "1368569868" ]
}, {
  "class" : "org.example.test",
  "method" : "<org.example.test: void main(java.lang.String[])>",
  "errorType" : "AlternativeReqPredicateError",
  "rule" : "javax.crypto.Cipher",
  "line" : 43,
  "statement" : "r42.init(varReplacer5,r41)",
  "hashcode" : "1368569868",
  "precedingErrors" : [ "510878289", "-715970915" ],
  "subsequentErrors" : [ ]
}, {
  "class" : "org.example.test",
  "method" : "<org.example.test: void main(java.lang.String[])>",
  "errorType" : "ConstraintError",
  "rule" : "javax.crypto.Cipher",
  "line" : 20,
  "statement" : "r34 = getInstance(varReplacer4)",
  "hashcode" : "1794567081",
  "precedingErrors" : [ ],
  "subsequentErrors" : [ ]
} ]