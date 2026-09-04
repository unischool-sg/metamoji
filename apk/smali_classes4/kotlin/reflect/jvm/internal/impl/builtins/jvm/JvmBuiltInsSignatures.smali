.class public final Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;
.super Ljava/lang/Object;
.source "JvmBuiltInsSignatures.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJvmBuiltInsSignatures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmBuiltInsSignatures.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsSignatures\n+ 2 SignatureBuildingComponents.kt\norg/jetbrains/kotlin/load/kotlin/SignatureBuildingComponentsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n13#2:213\n13#2:219\n13#2:225\n13#2:226\n13#2:227\n13#2:228\n13#2:229\n13#2:230\n1480#3,5:214\n1480#3,5:220\n*S KotlinDebug\n*F\n+ 1 JvmBuiltInsSignatures.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsSignatures\n*L\n64#1:213\n185#1:219\n23#1:225\n71#1:226\n80#1:227\n136#1:228\n163#1:229\n180#1:230\n65#1:214,5\n189#1:220,5\n*E\n"
.end annotation


# static fields
.field private static final DEPRECATED_LIST_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

.field private static final MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

    .line 17
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    const/4 v2, 0x2

    .line 19
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "toArray()[Ljava/lang/Object;"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 17
    const-string v4, "Collection"

    invoke-virtual {v1, v4, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 20
    const-string v3, "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;"

    .line 17
    invoke-static {v1, v3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;

    .line 225
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .line 24
    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->buildPrimitiveValueMethodsSet()Ljava/util/Set;

    move-result-object v3

    .line 28
    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "sort(Ljava/util/Comparator;)V"

    aput-object v8, v7, v5

    .line 30
    const-string v9, "reversed()Ljava/util/List;"

    aput-object v9, v7, v6

    .line 26
    const-string v9, "List"

    invoke-virtual {v1, v9, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 24
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    const/16 v7, 0x30

    .line 35
    new-array v7, v7, [Ljava/lang/String;

    const-string v10, "codePointAt(I)I"

    aput-object v10, v7, v5

    const-string v10, "codePointBefore(I)I"

    aput-object v10, v7, v6

    const-string v10, "codePointCount(II)I"

    aput-object v10, v7, v2

    const-string v10, "compareToIgnoreCase(Ljava/lang/String;)I"

    const/4 v11, 0x3

    aput-object v10, v7, v11

    .line 36
    const-string v10, "concat(Ljava/lang/String;)Ljava/lang/String;"

    const/4 v12, 0x4

    aput-object v10, v7, v12

    const-string v10, "contains(Ljava/lang/CharSequence;)Z"

    const/4 v13, 0x5

    aput-object v10, v7, v13

    .line 37
    const-string v10, "contentEquals(Ljava/lang/CharSequence;)Z"

    const/4 v14, 0x6

    aput-object v10, v7, v14

    const-string v10, "contentEquals(Ljava/lang/StringBuffer;)Z"

    const/4 v15, 0x7

    aput-object v10, v7, v15

    .line 38
    const-string v10, "endsWith(Ljava/lang/String;)Z"

    const/16 v16, 0x8

    aput-object v10, v7, v16

    const-string v10, "equalsIgnoreCase(Ljava/lang/String;)Z"

    move/from16 v17, v5

    const/16 v5, 0x9

    aput-object v10, v7, v5

    const-string v10, "getBytes()[B"

    move/from16 v18, v11

    const/16 v11, 0xa

    aput-object v10, v7, v11

    const-string v10, "getBytes(II[BI)V"

    move/from16 v19, v15

    const/16 v15, 0xb

    aput-object v10, v7, v15

    const/16 v10, 0xc

    .line 39
    const-string v20, "getBytes(Ljava/lang/String;)[B"

    aput-object v20, v7, v10

    const/16 v10, 0xd

    const-string v20, "getBytes(Ljava/nio/charset/Charset;)[B"

    aput-object v20, v7, v10

    const/16 v10, 0xe

    const-string v20, "getChars(II[CI)V"

    aput-object v20, v7, v10

    const/16 v10, 0xf

    .line 40
    const-string v20, "indexOf(I)I"

    aput-object v20, v7, v10

    const/16 v10, 0x10

    const-string v20, "indexOf(II)I"

    aput-object v20, v7, v10

    const/16 v10, 0x11

    const-string v20, "indexOf(Ljava/lang/String;)I"

    aput-object v20, v7, v10

    const/16 v10, 0x12

    const-string v20, "indexOf(Ljava/lang/String;I)I"

    aput-object v20, v7, v10

    const/16 v10, 0x13

    .line 41
    const-string v20, "intern()Ljava/lang/String;"

    aput-object v20, v7, v10

    const/16 v10, 0x14

    const-string v20, "isEmpty()Z"

    aput-object v20, v7, v10

    const/16 v10, 0x15

    const-string v21, "lastIndexOf(I)I"

    aput-object v21, v7, v10

    const/16 v10, 0x16

    const-string v21, "lastIndexOf(II)I"

    aput-object v21, v7, v10

    const/16 v10, 0x17

    .line 42
    const-string v21, "lastIndexOf(Ljava/lang/String;)I"

    aput-object v21, v7, v10

    const/16 v10, 0x18

    const-string v21, "lastIndexOf(Ljava/lang/String;I)I"

    aput-object v21, v7, v10

    const/16 v10, 0x19

    const-string v21, "matches(Ljava/lang/String;)Z"

    aput-object v21, v7, v10

    const/16 v10, 0x1a

    .line 43
    const-string v21, "offsetByCodePoints(II)I"

    aput-object v21, v7, v10

    const/16 v10, 0x1b

    const-string v21, "regionMatches(ILjava/lang/String;II)Z"

    aput-object v21, v7, v10

    const/16 v10, 0x1c

    const-string v21, "regionMatches(ZILjava/lang/String;II)Z"

    aput-object v21, v7, v10

    const/16 v10, 0x1d

    .line 44
    const-string v21, "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x1e

    const-string v21, "replace(CC)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x1f

    .line 45
    const-string v21, "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x20

    .line 46
    const-string v21, "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x21

    .line 47
    const-string v21, "split(Ljava/lang/String;I)[Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x22

    const-string v21, "split(Ljava/lang/String;)[Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x23

    .line 48
    const-string v21, "startsWith(Ljava/lang/String;I)Z"

    aput-object v21, v7, v10

    const/16 v10, 0x24

    const-string v21, "startsWith(Ljava/lang/String;)Z"

    aput-object v21, v7, v10

    const/16 v10, 0x25

    const-string v21, "substring(II)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x26

    .line 49
    const-string v21, "substring(I)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x27

    const-string v21, "toCharArray()[C"

    aput-object v21, v7, v10

    const/16 v10, 0x28

    const-string v21, "toLowerCase()Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x29

    .line 50
    const-string v21, "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x2a

    const-string v21, "toUpperCase()Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x2b

    .line 51
    const-string v21, "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x2c

    const-string v21, "trim()Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x2d

    .line 52
    const-string v21, "isBlank()Z"

    aput-object v21, v7, v10

    const/16 v10, 0x2e

    const-string v21, "lines()Ljava/util/stream/Stream;"

    aput-object v21, v7, v10

    const/16 v10, 0x2f

    const-string v21, "repeat(I)Ljava/lang/String;"

    aput-object v21, v7, v10

    .line 33
    const-string v10, "String"

    invoke-virtual {v1, v10, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 24
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 55
    new-array v7, v2, [Ljava/lang/String;

    const-string v21, "isInfinite()Z"

    aput-object v21, v7, v17

    const-string v22, "isNaN()Z"

    aput-object v22, v7, v6

    const-string v15, "Double"

    invoke-virtual {v1, v15, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 24
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 56
    new-array v7, v2, [Ljava/lang/String;

    aput-object v21, v7, v17

    aput-object v22, v7, v6

    const-string v15, "Float"

    invoke-virtual {v1, v15, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 24
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 58
    new-array v7, v2, [Ljava/lang/String;

    const-string v21, "getDeclaringClass()Ljava/lang/Class;"

    aput-object v21, v7, v17

    const-string v21, "finalize()V"

    aput-object v21, v7, v6

    move/from16 v21, v5

    const-string v5, "Enum"

    invoke-virtual {v1, v5, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 24
    invoke-static {v3, v5}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 59
    new-array v5, v6, [Ljava/lang/String;

    aput-object v20, v5, v17

    const-string v7, "CharSequence"

    invoke-virtual {v1, v7, v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 24
    invoke-static {v3, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 23
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;

    .line 226
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .line 74
    new-array v3, v2, [Ljava/lang/String;

    const-string v5, "getFirst()Ljava/lang/Object;"

    aput-object v5, v3, v17

    .line 75
    const-string v5, "getLast()Ljava/lang/Object;"

    aput-object v5, v3, v6

    .line 72
    invoke-virtual {v1, v9, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 71
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DEPRECATED_LIST_METHODS:Ljava/util/Set;

    .line 227
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .line 83
    new-array v3, v2, [Ljava/lang/String;

    const-string v5, "codePoints()Ljava/util/stream/IntStream;"

    aput-object v5, v3, v17

    const-string v5, "chars()Ljava/util/stream/IntStream;"

    aput-object v5, v3, v6

    .line 81
    invoke-virtual {v1, v7, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 88
    new-array v5, v6, [Ljava/lang/String;

    const-string v7, "forEachRemaining(Ljava/util/function/Consumer;)V"

    aput-object v7, v5, v17

    .line 86
    const-string v7, "Iterator"

    invoke-virtual {v1, v7, v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 81
    invoke-static {v3, v5}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 93
    new-array v5, v2, [Ljava/lang/String;

    const-string v7, "forEach(Ljava/util/function/Consumer;)V"

    aput-object v7, v5, v17

    const-string v7, "spliterator()Ljava/util/Spliterator;"

    aput-object v7, v5, v6

    move/from16 v20, v2

    .line 91
    const-string v2, "Iterable"

    invoke-virtual {v1, v2, v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 81
    invoke-static {v3, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 98
    new-array v3, v11, [Ljava/lang/String;

    const-string v5, "setStackTrace([Ljava/lang/StackTraceElement;)V"

    aput-object v5, v3, v17

    const-string v5, "fillInStackTrace()Ljava/lang/Throwable;"

    aput-object v5, v3, v6

    .line 99
    const-string v5, "getLocalizedMessage()Ljava/lang/String;"

    aput-object v5, v3, v20

    const-string v5, "printStackTrace()V"

    aput-object v5, v3, v18

    const-string v5, "printStackTrace(Ljava/io/PrintStream;)V"

    aput-object v5, v3, v12

    .line 100
    const-string v5, "printStackTrace(Ljava/io/PrintWriter;)V"

    aput-object v5, v3, v13

    const-string v5, "getStackTrace()[Ljava/lang/StackTraceElement;"

    aput-object v5, v3, v14

    .line 101
    const-string v5, "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;"

    aput-object v5, v3, v19

    const-string v5, "getSuppressed()[Ljava/lang/Throwable;"

    aput-object v5, v3, v16

    .line 102
    const-string v5, "addSuppressed(Ljava/lang/Throwable;)V"

    aput-object v5, v3, v21

    .line 96
    const-string v5, "Throwable"

    invoke-virtual {v1, v5, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 81
    invoke-static {v2, v3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 107
    new-array v3, v12, [Ljava/lang/String;

    aput-object v7, v3, v17

    const-string v5, "parallelStream()Ljava/util/stream/Stream;"

    aput-object v5, v3, v6

    .line 108
    const-string v5, "stream()Ljava/util/stream/Stream;"

    aput-object v5, v3, v20

    const-string v5, "removeIf(Ljava/util/function/Predicate;)Z"

    aput-object v5, v3, v18

    .line 105
    invoke-virtual {v1, v4, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 81
    invoke-static {v2, v3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 113
    new-array v3, v13, [Ljava/lang/String;

    const-string v5, "replaceAll(Ljava/util/function/UnaryOperator;)V"

    aput-object v5, v3, v17

    .line 115
    const-string v5, "addFirst(Ljava/lang/Object;)V"

    aput-object v5, v3, v6

    .line 116
    const-string v5, "addLast(Ljava/lang/Object;)V"

    aput-object v5, v3, v20

    .line 117
    const-string v5, "removeFirst()Ljava/lang/Object;"

    aput-object v5, v3, v18

    .line 118
    const-string v5, "removeLast()Ljava/lang/Object;"

    aput-object v5, v3, v12

    .line 111
    invoke-virtual {v1, v9, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 81
    invoke-static {v2, v3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 123
    new-array v3, v11, [Ljava/lang/String;

    const-string v5, "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    aput-object v5, v3, v17

    .line 124
    const-string v5, "forEach(Ljava/util/function/BiConsumer;)V"

    aput-object v5, v3, v6

    const-string v5, "replaceAll(Ljava/util/function/BiFunction;)V"

    aput-object v5, v3, v20

    .line 125
    const-string v5, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    aput-object v5, v3, v18

    .line 126
    const-string v5, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    aput-object v5, v3, v12

    .line 127
    const-string v5, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    aput-object v5, v3, v13

    .line 128
    const-string v5, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    aput-object v5, v3, v14

    .line 129
    const-string v5, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    aput-object v5, v3, v19

    .line 130
    const-string v5, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    aput-object v5, v3, v16

    .line 131
    const-string v5, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    aput-object v5, v3, v21

    .line 121
    const-string v5, "Map"

    invoke-virtual {v1, v5, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 81
    invoke-static {v2, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 80
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;

    .line 228
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .line 137
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "removeIf(Ljava/util/function/Predicate;)Z"

    aput-object v3, v2, v17

    invoke-virtual {v1, v4, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 141
    new-array v3, v14, [Ljava/lang/String;

    const-string v4, "replaceAll(Ljava/util/function/UnaryOperator;)V"

    aput-object v4, v3, v17

    .line 142
    aput-object v8, v3, v6

    .line 143
    const-string v4, "addFirst(Ljava/lang/Object;)V"

    aput-object v4, v3, v20

    .line 144
    const-string v4, "addLast(Ljava/lang/Object;)V"

    aput-object v4, v3, v18

    .line 145
    const-string v4, "removeFirst()Ljava/lang/Object;"

    aput-object v4, v3, v12

    .line 146
    const-string v4, "removeLast()Ljava/lang/Object;"

    aput-object v4, v3, v13

    .line 139
    invoke-virtual {v1, v9, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 137
    invoke-static {v2, v3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    move/from16 v3, v21

    .line 151
    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    aput-object v3, v4, v17

    .line 152
    const-string v3, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    aput-object v3, v4, v6

    .line 153
    const-string v3, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    aput-object v3, v4, v20

    .line 154
    const-string v3, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    aput-object v3, v4, v18

    .line 155
    const-string v3, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    aput-object v3, v4, v12

    .line 156
    const-string v3, "remove(Ljava/lang/Object;Ljava/lang/Object;)Z"

    aput-object v3, v4, v13

    const-string v3, "replaceAll(Ljava/util/function/BiFunction;)V"

    aput-object v3, v4, v14

    .line 157
    const-string v3, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    aput-object v3, v4, v19

    .line 158
    const-string v3, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    aput-object v3, v4, v16

    .line 149
    const-string v3, "Map"

    invoke-virtual {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 137
    invoke-static {v2, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 136
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;

    .line 229
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .line 164
    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->buildPrimitiveStringConstructorsSet()Ljava/util/Set;

    move-result-object v0

    .line 165
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "D"

    aput-object v3, v2, v17

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v15, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 164
    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    const/16 v2, 0xb

    .line 168
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "[C"

    aput-object v3, v2, v17

    const-string v3, "[CII"

    aput-object v3, v2, v6

    const-string v3, "[III"

    aput-object v3, v2, v20

    const-string v3, "[BIILjava/lang/String;"

    aput-object v3, v2, v18

    .line 169
    const-string v3, "[BIILjava/nio/charset/Charset;"

    aput-object v3, v2, v12

    .line 170
    const-string v3, "[BLjava/lang/String;"

    aput-object v3, v2, v13

    .line 171
    const-string v3, "[BLjava/nio/charset/Charset;"

    aput-object v3, v2, v14

    .line 172
    const-string v3, "[BII"

    aput-object v3, v2, v19

    const-string v3, "[B"

    aput-object v3, v2, v16

    .line 173
    const-string v3, "Ljava/lang/StringBuffer;"

    const/16 v21, 0x9

    aput-object v3, v2, v21

    .line 174
    const-string v3, "Ljava/lang/StringBuilder;"

    aput-object v3, v2, v11

    .line 167
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 166
    invoke-virtual {v1, v10, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 164
    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 163
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    .line 230
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .line 181
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Ljava/lang/String;Ljava/lang/Throwable;ZZ"

    aput-object v2, v1, v17

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "Throwable"

    invoke-virtual {v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 180
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildPrimitiveStringConstructorsSet()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    const/16 v1, 0x8

    .line 187
    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v5, v1, v2

    const/4 v2, 0x3

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v5, v1, v2

    const/4 v2, 0x4

    .line 188
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v5, v1, v2

    const/4 v2, 0x5

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v5, v1, v2

    const/4 v2, 0x6

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->LONG:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v5, v1, v2

    const/4 v2, 0x7

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->SHORT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v5, v1, v2

    .line 186
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 189
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 220
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 221
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 191
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "asString(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "Ljava/lang/String;"

    aput-object v7, v6, v3

    invoke-virtual {v0, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 222
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 224
    :cond_0
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 219
    check-cast v2, Ljava/util/Set;

    return-object v2
.end method

.method private final buildPrimitiveValueMethodsSet()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    const/4 v1, 0x2

    .line 65
    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->CHAR:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 214
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 215
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 66
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "asString(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v4, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getJavaKeywordName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Value()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-virtual {v0, v6, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 216
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 218
    :cond_0
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 213
    check-cast v2, Ljava/util/Set;

    return-object v2
.end method


# virtual methods
.method public final getDEPRECATED_LIST_METHODS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DEPRECATED_LIST_METHODS:Ljava/util/Set;

    return-object v0
.end method

.method public final getDROP_LIST_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getHIDDEN_CONSTRUCTOR_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getHIDDEN_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getMUTABLE_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getVISIBLE_CONSTRUCTOR_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getVISIBLE_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final isArrayOrPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->array:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->isPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isSerializableInJava(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->isArrayOrPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 199
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mapKotlinToJava(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 201
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :catch_0
    return v0
.end method
