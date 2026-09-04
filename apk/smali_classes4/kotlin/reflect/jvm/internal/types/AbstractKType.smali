.class public abstract Lkotlin/reflect/jvm/internal/types/AbstractKType;
.super Ljava/lang/Object;
.source "AbstractKType.kt"

# interfaces
.implements Lkotlin/jvm/internal/KTypeBase;
.implements Lkotlin/reflect/jvm/internal/impl/types/model/DefinitelyNotNullTypeMarker;
.implements Lkotlin/reflect/jvm/internal/impl/types/model/FlexibleTypeMarker;
.implements Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
.implements Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractKType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractKType.kt\nkotlin/reflect/jvm/internal/types/AbstractKType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n1#2:55\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008 \u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0017\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0013H&J\n\u0010#\u001a\u0004\u0018\u00010\u0000H&J\n\u0010$\u001a\u0004\u0018\u00010\u0000H&J\u0014\u0010%\u001a\u00020\u00132\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0096\u0082\u0004J\n\u0010(\u001a\u00020)H\u0096\u0080\u0004J\n\u0010*\u001a\u00020+H\u0096\u0080\u0004R\u001c\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000bX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u000e\u001a\u0004\u0018\u00010\u00088VX\u0096\u0084\u0008\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0012\u0010\u001c\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001bR\u0012\u0010\u001d\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001bR\u0012\u0010\u001e\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001bR\u0018\u0010\u001f\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010 X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\u00a8\u0006,"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/types/AbstractKType;",
        "Lkotlin/jvm/internal/KTypeBase;",
        "Lkotlin/reflect/jvm/internal/impl/types/model/FlexibleTypeMarker;",
        "Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;",
        "Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;",
        "Lkotlin/reflect/jvm/internal/impl/types/model/DefinitelyNotNullTypeMarker;",
        "computeJavaType",
        "Lkotlin/Function0;",
        "Ljava/lang/reflect/Type;",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;",
        "getComputeJavaType",
        "()Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;",
        "javaType",
        "getJavaType",
        "()Ljava/lang/reflect/Type;",
        "makeNullableAsSpecified",
        "nullable",
        "",
        "makeDefinitelyNotNullAsSpecified",
        "isDefinitelyNotNull",
        "abbreviation",
        "Lkotlin/reflect/KType;",
        "getAbbreviation",
        "()Lkotlin/reflect/KType;",
        "isDefinitelyNotNullType",
        "()Z",
        "isNothingType",
        "isSuspendFunctionType",
        "isRawType",
        "mutableCollectionClass",
        "Lkotlin/reflect/KClass;",
        "getMutableCollectionClass",
        "()Lkotlin/reflect/KClass;",
        "lowerBoundIfFlexible",
        "upperBoundIfFlexible",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final computeJavaType:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/types/AbstractKType;->computeJavaType:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 46
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractStrictEqualityTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractStrictEqualityTypeChecker;

    sget-object v1, Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext;->INSTANCE:Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-virtual {v0, v1, v2, p1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractStrictEqualityTypeChecker;->strictEqualTypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract getAbbreviation()Lkotlin/reflect/KType;
.end method

.method protected final getComputeJavaType()Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/AbstractKType;->computeJavaType:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    return-object v0
.end method

.method public getJavaType()Ljava/lang/reflect/Type;
    .locals 1

    .line 28
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/AbstractKType;->computeJavaType:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getMutableCollectionClass()Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 2

    .line 49
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->isMarkedNullable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public abstract isDefinitelyNotNullType()Z
.end method

.method public abstract isNothingType()Z
.end method

.method public abstract isRawType()Z
.end method

.method public abstract isSuspendFunctionType()Z
.end method

.method public abstract lowerBoundIfFlexible()Lkotlin/reflect/jvm/internal/types/AbstractKType;
.end method

.method public abstract makeDefinitelyNotNullAsSpecified(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;
.end method

.method public abstract makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 52
    sget-object v0, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->INSTANCE:Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;

    move-object v1, p0

    check-cast v1, Lkotlin/reflect/KType;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->renderType$default(Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;Lkotlin/reflect/KType;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract upperBoundIfFlexible()Lkotlin/reflect/jvm/internal/types/AbstractKType;
.end method
