.class public final Lkotlin/reflect/full/KTypes;
.super Ljava/lang/Object;
.source "KTypes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u0014\u0010\u0004\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\u0006\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "withNullability",
        "Lkotlin/reflect/KType;",
        "nullable",
        "",
        "isSubtypeOf",
        "other",
        "isSupertypeOf",
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
.method public static final isSubtypeOf(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)Z
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lkotlin/reflect/jvm/internal/SystemPropertiesKt;->getUseK1Implementation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    check-cast p0, Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/DescriptorKType;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    check-cast p1, Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/types/DescriptorKType;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0

    return p0

    .line 49
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;

    .line 54
    sget-object v1, Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext;->INSTANCE:Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext;

    move-object v5, v1

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    .line 55
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypePreparator$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypePreparator$Default;

    move-object v6, v1

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypePreparator;

    .line 56
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner$Default;

    move-object v7, v1

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 49
    invoke-direct/range {v0 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;-><init>(ZZZZLkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/AbstractTypePreparator;Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner;)V

    .line 58
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    check-cast p0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    check-cast p1, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isSupertypeOf(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p1, p0}, Lkotlin/reflect/full/KTypes;->isSubtypeOf(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)Z

    move-result p0

    return p0
.end method

.method public static final withNullability(Lkotlin/reflect/KType;Z)Lkotlin/reflect/KType;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    check-cast p0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KType;

    return-object p0
.end method
