.class public final Lkotlin/reflect/jvm/internal/types/CapturedKTypeKt;
.super Ljava/lang/Object;
.source "CapturedKType.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCapturedKType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CapturedKType.kt\nkotlin/reflect/jvm/internal/types/CapturedKTypeKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n1786#2,3:110\n1586#2:113\n1661#2,2:114\n1663#2:117\n1661#2,3:118\n1#3:116\n*S KotlinDebug\n*F\n+ 1 CapturedKType.kt\nkotlin/reflect/jvm/internal/types/CapturedKTypeKt\n*L\n62#1:110,3\n67#1:113\n67#1:114,2\n67#1:117\n79#1:118,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\u001a\u0012\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0000\u001a\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004*\u0006\u0012\u0002\u0008\u00030\u0006H\u0000\u001a\u0008\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "captureKTypeFromArguments",
        "Lkotlin/reflect/KType;",
        "type",
        "allTypeParameters",
        "",
        "Lkotlin/reflect/KTypeParameter;",
        "Lkotlin/reflect/KClass;",
        "javaTypeNotSupported",
        "",
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
.method public static final synthetic access$javaTypeNotSupported()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/reflect/jvm/internal/types/CapturedKTypeKt;->javaTypeNotSupported()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic accessor$CapturedKTypeKt$lambda0(Lkotlin/reflect/KClass;)Lkotlin/reflect/KClass;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/types/CapturedKTypeKt;->allTypeParameters$lambda$0(Lkotlin/reflect/KClass;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$CapturedKTypeKt$lambda1(Lkotlin/reflect/KClass;)Ljava/lang/Iterable;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/types/CapturedKTypeKt;->allTypeParameters$lambda$1(Lkotlin/reflect/KClass;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static final allTypeParameters(Lkotlin/reflect/KClass;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeParameter;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lkotlin/reflect/jvm/internal/types/CapturedKTypeKt$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/types/CapturedKTypeKt$$Lambda$0;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/types/CapturedKTypeKt$$Lambda$1;->INSTANCE:Lkotlin/reflect/jvm/internal/types/CapturedKTypeKt$$Lambda$1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->flatMapIterable(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final allTypeParameters$lambda$0(Lkotlin/reflect/KClass;)Lkotlin/reflect/KClass;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p0}, Lkotlin/reflect/KClass;->isInner()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method private static final allTypeParameters$lambda$1(Lkotlin/reflect/KClass;)Ljava/lang/Iterable;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p0}, Lkotlin/reflect/KClass;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method

.method public static final captureKTypeFromArguments(Lkotlin/reflect/KType;)Lkotlin/reflect/KType;
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {v0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v1

    instance-of v2, v1, Lkotlin/reflect/KClass;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lkotlin/reflect/KClass;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    return-object v3

    .line 61
    :cond_1
    invoke-interface {v0}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v2

    .line 62
    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    .line 110
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_a

    .line 111
    :cond_2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/KTypeProjection;

    .line 62
    invoke-virtual {v6}, Lkotlin/reflect/KTypeProjection;->getVariance()Lkotlin/reflect/KVariance;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/KVariance;->INVARIANT:Lkotlin/reflect/KVariance;

    if-ne v6, v7, :cond_3

    goto :goto_1

    .line 64
    :cond_3
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/types/CapturedKTypeKt;->allTypeParameters(Lkotlin/reflect/KClass;)Ljava/util/List;

    move-result-object v5

    .line 65
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_4

    return-object v3

    .line 113
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 114
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 115
    check-cast v7, Lkotlin/reflect/KTypeProjection;

    .line 68
    invoke-virtual {v7}, Lkotlin/reflect/KTypeProjection;->getVariance()Lkotlin/reflect/KVariance;

    move-result-object v9

    sget-object v10, Lkotlin/reflect/KVariance;->INVARIANT:Lkotlin/reflect/KVariance;

    if-ne v9, v10, :cond_5

    goto :goto_4

    .line 69
    :cond_5
    invoke-virtual {v7}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v9

    invoke-virtual {v7}, Lkotlin/reflect/KTypeProjection;->getVariance()Lkotlin/reflect/KVariance;

    move-result-object v10

    sget-object v11, Lkotlin/reflect/KVariance;->IN:Lkotlin/reflect/KVariance;

    if-ne v10, v11, :cond_6

    goto :goto_3

    :cond_6
    move-object v9, v3

    .line 70
    :goto_3
    sget-object v10, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    new-instance v11, Lkotlin/reflect/jvm/internal/types/CapturedKType;

    new-instance v12, Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;

    invoke-direct {v12, v7}, Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;-><init>(Lkotlin/reflect/KTypeProjection;)V

    invoke-direct {v11, v9, v12, v8}, Lkotlin/reflect/jvm/internal/types/CapturedKType;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;Z)V

    check-cast v11, Lkotlin/reflect/KType;

    invoke-virtual {v10, v11}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v7

    .line 115
    :goto_4
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 117
    :cond_7
    move-object v10, v6

    check-cast v10, Ljava/util/List;

    .line 73
    sget-object v4, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->Companion:Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor$Companion;

    invoke-virtual {v4, v1, v10}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor$Companion;->create(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;

    move-result-object v4

    .line 75
    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_5
    if-ge v8, v6, :cond_b

    .line 76
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/KTypeProjection;

    .line 77
    invoke-virtual {v7}, Lkotlin/reflect/KTypeProjection;->getVariance()Lkotlin/reflect/KVariance;

    move-result-object v9

    sget-object v11, Lkotlin/reflect/KVariance;->INVARIANT:Lkotlin/reflect/KVariance;

    if-eq v9, v11, :cond_a

    .line 79
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/KTypeParameter;

    invoke-interface {v9}, Lkotlin/reflect/KTypeParameter;->getUpperBounds()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/List;

    check-cast v11, Ljava/util/Collection;

    .line 118
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 119
    check-cast v12, Lkotlin/reflect/KType;

    .line 80
    invoke-virtual {v4, v12}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->substitute(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v12

    invoke-virtual {v12}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 79
    :cond_8
    check-cast v11, Ljava/util/List;

    .line 83
    invoke-virtual {v7}, Lkotlin/reflect/KTypeProjection;->getVariance()Lkotlin/reflect/KVariance;

    move-result-object v9

    sget-object v12, Lkotlin/reflect/KVariance;->OUT:Lkotlin/reflect/KVariance;

    if-ne v9, v12, :cond_9

    .line 84
    move-object v9, v11

    check-cast v9, Ljava/util/Collection;

    invoke-virtual {v7}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_9
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v7}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v7

    const-string v9, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.types.CapturedKType"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lkotlin/reflect/jvm/internal/types/CapturedKType;

    .line 88
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/types/CapturedKType;->getTypeConstructor()Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;

    move-result-object v7

    invoke-virtual {v7, v11}, Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;->setSupertypes(Ljava/util/List;)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 91
    :cond_b
    new-instance v8, Lkotlin/reflect/jvm/internal/types/SimpleKType;

    .line 92
    move-object v9, v1

    check-cast v9, Lkotlin/reflect/KClassifier;

    .line 94
    invoke-interface {v0}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v11

    .line 95
    invoke-interface {v0}, Lkotlin/reflect/KType;->getAnnotations()Ljava/util/List;

    move-result-object v12

    .line 96
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    if-eqz v1, :cond_c

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    goto :goto_7

    :cond_c
    move-object v2, v3

    :goto_7
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->getAbbreviation()Lkotlin/reflect/KType;

    move-result-object v2

    move-object v13, v2

    goto :goto_8

    :cond_d
    move-object v13, v3

    :goto_8
    if-eqz v1, :cond_e

    .line 100
    check-cast v0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    goto :goto_9

    :cond_e
    move-object v0, v3

    :goto_9
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->getMutableCollectionClass()Lkotlin/reflect/KClass;

    move-result-object v3

    :cond_f
    move-object/from16 v17, v3

    const/16 v19, 0x200

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 91
    invoke-direct/range {v8 .. v20}, Lkotlin/reflect/jvm/internal/types/SimpleKType;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;Lkotlin/reflect/KType;ZZZLkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v8, Lkotlin/reflect/KType;

    return-object v8

    :cond_10
    :goto_a
    return-object v3
.end method

.method private static final javaTypeNotSupported()Ljava/lang/Void;
    .locals 2

    .line 108
    new-instance v0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    const-string v1, "javaType for captured types is not supported"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
