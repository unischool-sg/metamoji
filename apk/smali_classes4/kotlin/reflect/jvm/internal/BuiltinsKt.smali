.class public final Lkotlin/reflect/jvm/internal/BuiltinsKt;
.super Ljava/lang/Object;
.source "Builtins.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "createFunctionKmClass",
        "Lkotlin/reflect/jvm/internal/impl/km/KmClass;",
        "arity",
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
.method public static final createFunctionKmClass(I)Lkotlin/reflect/jvm/internal/impl/km/KmClass;
    .locals 8

    .line 10
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;-><init>()V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kotlin/Function"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->setName(Ljava/lang/String;)V

    .line 12
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/ClassKind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/km/ClassKind;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->setKind(Lkotlin/reflect/jvm/internal/impl/km/KmClass;Lkotlin/reflect/jvm/internal/impl/km/ClassKind;)V

    .line 13
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/km/Modality;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->setModality(Lkotlin/reflect/jvm/internal/impl/km/KmClass;Lkotlin/reflect/jvm/internal/impl/km/Modality;)V

    .line 14
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/Visibility;->PUBLIC:Lkotlin/reflect/jvm/internal/impl/km/Visibility;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->setVisibility(Lkotlin/reflect/jvm/internal/impl/km/KmClass;Lkotlin/reflect/jvm/internal/impl/km/Visibility;)V

    const/4 v1, 0x1

    if-gt v1, p0, :cond_0

    move v3, v1

    .line 17
    :goto_0
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->getTypeParameters()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "P"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->IN:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    invoke-direct {v5, v6, v3, v7}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/km/KmVariance;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v3, p0, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p0, v1

    .line 20
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;

    const-string v4, "R"

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->OUT:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    invoke-direct {v3, v4, p0, v5}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/km/KmVariance;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->getSupertypes()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/km/KmType;

    invoke-direct {v3}, Lkotlin/reflect/jvm/internal/impl/km/KmType;-><init>()V

    .line 23
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;

    invoke-direct {v4, v2}, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;-><init>(Ljava/lang/String;)V

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    invoke-virtual {v3, v4}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->setClassifier(Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;)V

    .line 24
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->getArguments()Ljava/util/List;

    move-result-object v2

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/km/KmType;

    invoke-direct {v5}, Lkotlin/reflect/jvm/internal/impl/km/KmType;-><init>()V

    .line 25
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;

    invoke-direct {v6, p0}, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;-><init>(I)V

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    invoke-virtual {v5, v6}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->setClassifier(Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;)V

    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;

    invoke-direct {p0, v4, v5}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;-><init>(Lkotlin/reflect/jvm/internal/impl/km/KmVariance;Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
