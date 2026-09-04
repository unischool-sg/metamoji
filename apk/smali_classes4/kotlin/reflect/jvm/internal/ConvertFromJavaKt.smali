.class public final Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;
.super Ljava/lang/Object;
.source "ConvertFromJava.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConvertFromJava.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConvertFromJava.kt\nkotlin/reflect/jvm/internal/ConvertFromJavaKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,185:1\n1586#2:186\n1661#2,3:187\n1586#2:190\n1661#2,3:191\n1586#2:194\n1661#2,3:195\n1586#2:199\n1661#2,3:200\n1586#2:203\n1661#2,3:204\n672#2,11:207\n1586#2:228\n1661#2,3:229\n1#3:198\n9810#4,2:218\n9961#4,4:220\n11705#4:224\n12052#4,3:225\n*S KotlinDebug\n*F\n+ 1 ConvertFromJava.kt\nkotlin/reflect/jvm/internal/ConvertFromJavaKt\n*L\n32#1:186\n32#1:187,3\n44#1:190\n44#1:191,3\n46#1:194\n46#1:195,3\n107#1:199\n107#1:200,3\n121#1:203\n121#1:204,3\n163#1:207,11\n180#1:228\n180#1:229,3\n167#1:218,2\n167#1:220,4\n171#1:224\n171#1:225,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a8\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0016\u0010\u0003\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0000\u001a>\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\n2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0015H\u0002\u001a,\u0010\u0016\u001a\u00020\u00012\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u00182\u0016\u0010\u0003\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002\u001a\u001a\u0010\u0019\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0011*\u0006\u0012\u0002\u0008\u00030\u0018H\u0000\u001a\u0012\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0011*\u00020\u001bH\u0002\u001a$\u0010\u001c\u001a\u00020\u0012*\u00020\u00022\u0016\u0010\u0003\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002\u001a(\u0010!\u001a\u00020\u0006*\u0006\u0012\u0002\u0008\u00030\u00052\u0016\u0010\u0003\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002\u001a#\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0011*\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00050#H\u0000\u00a2\u0006\u0002\u0010$\u001a\u0014\u0010%\u001a\u00020&*\u00020\u000c2\u0006\u0010\'\u001a\u00020\u0002H\u0002\"\u001c\u0010\u001d\u001a\u00020\u001e*\u0006\u0012\u0002\u0008\u00030\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006("
    }
    d2 = {
        "toKType",
        "Lkotlin/reflect/KType;",
        "Ljava/lang/reflect/Type;",
        "knownTypeParameters",
        "",
        "Ljava/lang/reflect/TypeVariable;",
        "Lkotlin/reflect/KTypeParameter;",
        "nullability",
        "Lkotlin/reflect/jvm/internal/TypeNullability;",
        "replaceNonArrayArgumentsWithStarProjections",
        "",
        "createJavaSimpleType",
        "Lkotlin/reflect/jvm/internal/types/SimpleKType;",
        "type",
        "classifier",
        "Lkotlin/reflect/KClassifier;",
        "arguments",
        "",
        "Lkotlin/reflect/KTypeProjection;",
        "isMarkedNullable",
        "mutableCollectionClass",
        "Lkotlin/reflect/KClass;",
        "createRawJavaType",
        "klass",
        "Ljava/lang/Class;",
        "allTypeParameters",
        "collectAllArguments",
        "Ljava/lang/reflect/ParameterizedType;",
        "toKTypeProjection",
        "kotlinContainer",
        "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;",
        "getKotlinContainer",
        "(Ljava/lang/reflect/TypeVariable;)Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;",
        "findKTypeParameterInContainer",
        "toKTypeParameters",
        "",
        "([Ljava/lang/reflect/TypeVariable;)Ljava/util/List;",
        "toFlexibleArrayElementVarianceType",
        "Lkotlin/reflect/jvm/internal/types/FlexibleKType;",
        "javaType",
        "kotlin-reflection"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method static synthetic accessor$ConvertFromJavaKt$lambda0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->toKType$lambda$3$0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$ConvertFromJavaKt$lambda1(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->toKType$lambda$4(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$ConvertFromJavaKt$lambda2(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->createJavaSimpleType$lambda$0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$ConvertFromJavaKt$lambda3(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/TypeVariable;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->createRawJavaType$lambda$0$0(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$ConvertFromJavaKt$lambda4(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->createRawJavaType$lambda$2(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$ConvertFromJavaKt$lambda5(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->allTypeParameters$lambda$0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$ConvertFromJavaKt$lambda6(Ljava/lang/Class;)Lkotlin/sequences/Sequence;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->allTypeParameters$lambda$1(Ljava/lang/Class;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$ConvertFromJavaKt$lambda7(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->collectAllArguments$lambda$0(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$ConvertFromJavaKt$lambda8(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Iterable;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->collectAllArguments$lambda$1(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$ConvertFromJavaKt$lambda9(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->toFlexibleArrayElementVarianceType$lambda$1(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static final allTypeParameters(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$5;->INSTANCE:Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$5;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$6;->INSTANCE:Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$6;

    .line 128
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final allTypeParameters$lambda$0(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final allTypeParameters$lambda$1(Ljava/lang/Class;)Lkotlin/sequences/Sequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    const-string v0, "getTypeParameters(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method private static final collectAllArguments(Ljava/lang/reflect/ParameterizedType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 131
    sget-object v0, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$7;->INSTANCE:Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$7;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$8;->INSTANCE:Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$8;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->flatMapIterable(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final collectAllArguments$lambda$0(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final collectAllArguments$lambda$1(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Iterable;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "getActualTypeArguments(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method

.method private static final createJavaSimpleType(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;ZLkotlin/reflect/KClass;)Lkotlin/reflect/jvm/internal/types/SimpleKType;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lkotlin/reflect/KClassifier;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;Z",
            "Lkotlin/reflect/KClass<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/types/SimpleKType;"
        }
    .end annotation

    .line 92
    new-instance v0, Lkotlin/reflect/jvm/internal/types/SimpleKType;

    .line 94
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 100
    new-instance v10, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$2;

    invoke-direct {v10, p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$2;-><init>(Ljava/lang/reflect/Type;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v9, p4

    .line 92
    invoke-direct/range {v0 .. v10}, Lkotlin/reflect/jvm/internal/types/SimpleKType;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;Lkotlin/reflect/KType;ZZZLkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method static synthetic createJavaSimpleType$default(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;ZLkotlin/reflect/KClass;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/types/SimpleKType;
    .locals 0

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 86
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->createJavaSimpleType(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;ZLkotlin/reflect/KClass;)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object p0

    return-object p0
.end method

.method private static final createJavaSimpleType$lambda$0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    return-object p0
.end method

.method private static final createRawJavaType(Ljava/lang/Class;Ljava/util/Map;)Lkotlin/reflect/KType;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;+",
            "Lkotlin/reflect/KTypeParameter;",
            ">;)",
            "Lkotlin/reflect/KType;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 104
    sget-object v1, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->Companion:Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;

    .line 106
    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KClassifier;

    .line 107
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->allTypeParameters(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 199
    new-instance v5, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 200
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 201
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 116
    sget-object v7, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$3;->INSTANCE:Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$3;

    invoke-static {v6, v7}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v6

    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->last(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v6

    const-string v7, "getBounds(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/reflect/Type;

    .line 117
    sget-object v6, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v11, p1

    invoke-static/range {v10 .. v15}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->toKType$default(Ljava/lang/reflect/Type;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeNullability;ZILjava/lang/Object;)Lkotlin/reflect/KType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v6

    .line 201
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_0
    move-object v4, v5

    check-cast v4, Ljava/util/List;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 105
    invoke-static/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->createJavaSimpleType$default(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;ZLkotlin/reflect/KClass;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    .line 121
    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KClassifier;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->allTypeParameters(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 203
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 204
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 205
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 121
    sget-object v6, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v6}, Lkotlin/reflect/KTypeProjection$Companion;->getSTAR()Lkotlin/reflect/KTypeProjection;

    move-result-object v6

    .line 205
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    :cond_1
    move-object v4, v5

    check-cast v4, Ljava/util/List;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 121
    invoke-static/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->createJavaSimpleType$default(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;ZLkotlin/reflect/KClass;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    .line 104
    new-instance v3, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$4;

    invoke-direct {v3, v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$4;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v10, v2, v0, v3}, Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;->create(Lkotlin/reflect/jvm/internal/types/AbstractKType;Lkotlin/reflect/jvm/internal/types/AbstractKType;ZLkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KType;

    return-object v0
.end method

.method private static final createRawJavaType$lambda$0$0(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/TypeVariable;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "getBounds(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final createRawJavaType$lambda$2(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 0

    .line 123
    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0
.end method

.method private static final findKTypeParameterInContainer(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Lkotlin/reflect/KTypeParameter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;+",
            "Lkotlin/reflect/KTypeParameter;",
            ">;)",
            "Lkotlin/reflect/KTypeParameter;"
        }
    .end annotation

    .line 162
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/KTypeParameter;

    if-nez p1, :cond_5

    .line 163
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->getKotlinContainer(Ljava/lang/reflect/TypeVariable;)Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 209
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 210
    move-object v4, v3

    check-cast v4, Lkotlin/reflect/KTypeParameter;

    .line 163
    invoke-interface {v4}, Lkotlin/reflect/KTypeParameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    move-object v2, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    check-cast v0, Lkotlin/reflect/KTypeParameter;

    if-eqz v0, :cond_4

    return-object v0

    .line 164
    :cond_4
    new-instance p1, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type parameter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not found in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->getKotlinContainer(Ljava/lang/reflect/TypeVariable;)Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-object p1
.end method

.method private static final getKotlinContainer(Ljava/lang/reflect/TypeVariable;)Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;"
        }
    .end annotation

    .line 152
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 154
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 156
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/KClassImpl;

    check-cast p0, Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;

    return-object p0

    .line 155
    :cond_0
    new-instance v1, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Non-class container of a type parameter is not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final toFlexibleArrayElementVarianceType(Lkotlin/reflect/jvm/internal/types/SimpleKType;Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/types/FlexibleKType;
    .locals 9

    .line 177
    sget-object v0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->Companion:Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;

    .line 178
    move-object v1, p0

    check-cast v1, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    .line 180
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/SimpleKType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/SimpleKType;->getArguments()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 229
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 230
    check-cast v4, Lkotlin/reflect/KTypeProjection;

    .line 180
    invoke-virtual {v4}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v5

    if-eqz v5, :cond_1

    sget-object v6, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v6, v5}, Lkotlin/reflect/KTypeProjection$Companion;->covariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v4, v5

    .line 230
    :cond_1
    :goto_1
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_2
    move-object v4, v2

    check-cast v4, Ljava/util/List;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    .line 179
    invoke-static/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->createJavaSimpleType$default(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;ZLkotlin/reflect/KClass;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    .line 177
    new-instance p1, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$9;

    invoke-direct {p1, v2}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$9;-><init>(Ljava/lang/reflect/Type;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, p1}, Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;->create(Lkotlin/reflect/jvm/internal/types/AbstractKType;Lkotlin/reflect/jvm/internal/types/AbstractKType;ZLkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.types.FlexibleKType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;

    return-object p0
.end method

.method private static final toFlexibleArrayElementVarianceType$lambda$1(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    return-object p0
.end method

.method public static final toKType(Ljava/lang/reflect/Type;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeNullability;Z)Lkotlin/reflect/KType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;+",
            "Lkotlin/reflect/KTypeParameter;",
            ">;",
            "Lkotlin/reflect/jvm/internal/TypeNullability;",
            "Z)",
            "Lkotlin/reflect/KType;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "knownTypeParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nullability"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    instance-of v0, p0, Ljava/lang/Class;

    const/16 v1, 0xa

    if-eqz v0, :cond_3

    .line 24
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->allTypeParameters(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    .line 25
    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->createRawJavaType(Ljava/lang/Class;Ljava/util/Map;)Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 29
    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lkotlin/reflect/KClassifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "getComponentType(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/reflect/Type;

    invoke-static {p2, p1}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->toKTypeProjection(Ljava/lang/reflect/Type;Ljava/util/Map;)Lkotlin/reflect/KTypeProjection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .line 28
    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->createJavaSimpleType$default(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;ZLkotlin/reflect/KClass;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object p0

    move-object p1, v1

    .line 30
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->toFlexibleArrayElementVarianceType(Lkotlin/reflect/jvm/internal/types/SimpleKType;Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/types/FlexibleKType;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KType;

    return-object p0

    :cond_1
    move-object p1, p0

    .line 32
    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KClassifier;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->allTypeParameters(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 187
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 188
    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 32
    sget-object v1, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v1}, Lkotlin/reflect/KTypeProjection$Companion;->getSTAR()Lkotlin/reflect/KTypeProjection;

    move-result-object v1

    .line 188
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_2
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p1

    .line 32
    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->createJavaSimpleType$default(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;ZLkotlin/reflect/KClass;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object p0

    goto/16 :goto_4

    :cond_3
    move-object v0, p0

    .line 34
    nop

    instance-of p0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz p0, :cond_4

    .line 35
    move-object p0, v0

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    const-string p2, "getGenericComponentType(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->toKTypeProjection(Ljava/lang/reflect/Type;Ljava/util/Map;)Lkotlin/reflect/KTypeProjection;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/KTypesJvm;->getJvmErasure(Lkotlin/reflect/KType;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/UtilKt;->createArrayType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    .line 37
    move-object v1, p1

    check-cast v1, Lkotlin/reflect/KClassifier;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->createJavaSimpleType$default(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;ZLkotlin/reflect/KClass;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object p0

    .line 38
    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->toFlexibleArrayElementVarianceType(Lkotlin/reflect/jvm/internal/types/SimpleKType;Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/types/FlexibleKType;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KType;

    return-object p0

    .line 40
    :cond_4
    instance-of p0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p0, :cond_8

    .line 42
    move-object p0, v0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KClassifier;

    if-eqz p3, :cond_6

    .line 44
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->collectAllArguments(Ljava/lang/reflect/ParameterizedType;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 191
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 192
    check-cast p3, Ljava/lang/reflect/Type;

    .line 44
    sget-object p3, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {p3}, Lkotlin/reflect/KTypeProjection$Companion;->getSTAR()Lkotlin/reflect/KTypeProjection;

    move-result-object p3

    .line 192
    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_5
    check-cast p1, Ljava/util/List;

    goto :goto_3

    .line 46
    :cond_6
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->collectAllArguments(Ljava/lang/reflect/ParameterizedType;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 194
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Ljava/util/Collection;

    .line 195
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 196
    check-cast v1, Ljava/lang/reflect/Type;

    .line 46
    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->toKTypeProjection(Ljava/lang/reflect/Type;Ljava/util/Map;)Lkotlin/reflect/KTypeProjection;

    move-result-object v1

    .line 196
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 197
    :cond_7
    move-object p1, p3

    check-cast p1, Ljava/util/List;

    :goto_3
    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v2

    move-object v2, p1

    .line 40
    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->createJavaSimpleType$default(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;ZLkotlin/reflect/KClass;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object p0

    goto :goto_4

    .line 49
    :cond_8
    instance-of p0, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz p0, :cond_10

    .line 50
    move-object p0, v0

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->findKTypeParameterInContainer(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Lkotlin/reflect/KTypeParameter;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lkotlin/reflect/KClassifier;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->createJavaSimpleType$default(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;ZLkotlin/reflect/KClass;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object p0

    .line 58
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/SimpleKType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object p1

    instance-of p3, p1, Lkotlin/reflect/KClass;

    const/4 v1, 0x0

    if-eqz p3, :cond_9

    check-cast p1, Lkotlin/reflect/KClass;

    goto :goto_5

    :cond_9
    move-object p1, v1

    .line 59
    :goto_5
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;-><init>(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p3, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->readOnlyToMutable(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_b

    if-eqz p1, :cond_b

    .line 62
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/SimpleKType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/SimpleKType;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/SimpleKType;->isMarkedNullable()Z

    move-result v4

    .line 63
    invoke-static {p3, p1}, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClassKt;->getMutableCollectionKClass(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/KClass;)Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/KClass;

    .line 61
    invoke-static {v0, v2, v3, v4, p1}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->createJavaSimpleType(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;ZLkotlin/reflect/KClass;)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object p1

    .line 65
    sget-object p3, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->Companion:Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;

    check-cast p1, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    check-cast p0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    new-instance v2, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$0;

    invoke-direct {v2, v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$0;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p3, p1, p0, v1, v2}, Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;->create(Lkotlin/reflect/jvm/internal/types/AbstractKType;Lkotlin/reflect/jvm/internal/types/AbstractKType;ZLkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object p0

    goto :goto_6

    .line 66
    :cond_b
    check-cast p0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    .line 69
    :goto_6
    sget-object p1, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/TypeNullability;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_f

    const/4 p3, 0x2

    if-eq p1, p3, :cond_e

    .line 72
    sget-object p1, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->Companion:Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;

    .line 73
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->lowerBoundIfFlexible()Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object p3

    if-nez p3, :cond_c

    move-object p3, p0

    .line 74
    :cond_c
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->upperBoundIfFlexible()Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    move-object p0, v2

    :goto_7
    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object p0

    .line 72
    new-instance p2, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$1;

    invoke-direct {p2, v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$1;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p3, p0, v1, p2}, Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;->create(Lkotlin/reflect/jvm/internal/types/AbstractKType;Lkotlin/reflect/jvm/internal/types/AbstractKType;ZLkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KType;

    return-object p0

    .line 71
    :cond_e
    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KType;

    return-object p0

    .line 70
    :cond_f
    check-cast p0, Lkotlin/reflect/KType;

    return-object p0

    .line 51
    :cond_10
    instance-of p0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz p0, :cond_11

    new-instance p0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Wildcard type is not possible here: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_11
    new-instance p0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Type is not supported: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic toKType$default(Ljava/lang/reflect/Type;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeNullability;ZILjava/lang/Object;)Lkotlin/reflect/KType;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 19
    sget-object p2, Lkotlin/reflect/jvm/internal/TypeNullability;->FLEXIBLE:Lkotlin/reflect/jvm/internal/TypeNullability;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 17
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->toKType(Ljava/lang/reflect/Type;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeNullability;Z)Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0
.end method

.method private static final toKType$lambda$3$0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    return-object p0
.end method

.method private static final toKType$lambda$4(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    return-object p0
.end method

.method public static final toKTypeParameters([Ljava/lang/reflect/TypeVariable;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeParameter;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/util/LinkedHashMap;

    array-length v1, p0

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 219
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    .line 220
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    .line 168
    new-instance v5, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->getKotlinContainer(Ljava/lang/reflect/TypeVariable;)Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;

    move-result-object v6

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getName(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lkotlin/reflect/KVariance;->INVARIANT:Lkotlin/reflect/KVariance;

    invoke-direct {v5, v6, v7, v8, v1}, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)V

    .line 221
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;

    .line 171
    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v4, "getBounds(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v2

    check-cast v8, [Ljava/lang/Object;

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v8

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v2

    check-cast v9, Ljava/util/Collection;

    .line 225
    array-length v10, v8

    move v11, v1

    :goto_2
    if-ge v11, v10, :cond_1

    aget-object v2, v8, v11

    .line 226
    check-cast v2, Ljava/lang/reflect/Type;

    .line 171
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->toKType$default(Ljava/lang/reflect/Type;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeNullability;ZILjava/lang/Object;)Lkotlin/reflect/KType;

    move-result-object v2

    .line 226
    invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 227
    :cond_1
    check-cast v9, Ljava/util/List;

    .line 171
    invoke-virtual {v0, v9}, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;->setUpperBounds(Ljava/util/List;)V

    goto :goto_1

    .line 173
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final toKTypeProjection(Ljava/lang/reflect/Type;Ljava/util/Map;)Lkotlin/reflect/KTypeProjection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;+",
            "Lkotlin/reflect/KTypeParameter;",
            ">;)",
            "Lkotlin/reflect/KTypeProjection;"
        }
    .end annotation

    .line 134
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->toKType$default(Ljava/lang/reflect/Type;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeNullability;ZILjava/lang/Object;)Lkotlin/reflect/KType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    .line 138
    move-object p0, v1

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 139
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 140
    array-length v0, p1

    const/4 v3, 0x1

    if-gt v0, v3, :cond_3

    array-length v0, p0

    if-gt v0, v3, :cond_3

    .line 144
    array-length v0, p0

    const-string v1, "single(...)"

    if-ne v0, v3, :cond_1

    sget-object p1, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->single([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->toKType$default(Ljava/lang/reflect/Type;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeNullability;ZILjava/lang/Object;)Lkotlin/reflect/KType;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/KTypeProjection$Companion;->contravariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object p0

    return-object p0

    .line 145
    :cond_1
    array-length p0, p1

    if-ne p0, v3, :cond_2

    sget-object p0, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->single([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->toKType$default(Ljava/lang/reflect/Type;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeNullability;ZILjava/lang/Object;)Lkotlin/reflect/KType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;->covariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object p0

    return-object p0

    .line 146
    :cond_2
    sget-object p0, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {p0}, Lkotlin/reflect/KTypeProjection$Companion;->getSTAR()Lkotlin/reflect/KTypeProjection;

    move-result-object p0

    return-object p0

    .line 141
    :cond_3
    new-instance p0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Wildcard types with many bounds are not supported: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
