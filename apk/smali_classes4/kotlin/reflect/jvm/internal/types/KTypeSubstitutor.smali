.class public final Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;
.super Ljava/lang/Object;
.source "KTypeSubstitutor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKTypeSubstitutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KTypeSubstitutor.kt\nkotlin/reflect/jvm/internal/types/KTypeSubstitutor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,82:1\n1586#2:83\n1661#2,2:84\n1663#2:87\n1#3:86\n*S KotlinDebug\n*F\n+ 1 KTypeSubstitutor.kt\nkotlin/reflect/jvm/internal/types/KTypeSubstitutor\n*L\n36#1:83\n36#1:84,2\n36#1:87\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nJ\u0014\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0002J\u000c\u0010\r\u001a\u00020\u0005*\u00020\u0005H\u0002J\u000c\u0010\u000e\u001a\u00020\u0005*\u00020\u0005H\u0002R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;",
        "",
        "substitution",
        "",
        "Lkotlin/reflect/KTypeParameter;",
        "Lkotlin/reflect/KTypeProjection;",
        "<init>",
        "(Ljava/util/Map;)V",
        "substitute",
        "type",
        "Lkotlin/reflect/KType;",
        "withNullabilityOf",
        "other",
        "lowerBoundIfFlexible",
        "upperBoundIfFlexible",
        "Companion",
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


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor$Companion;

.field private static final EMPTY:Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;


# instance fields
.field private final substitution:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KTypeParameter;",
            "Lkotlin/reflect/KTypeProjection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->Companion:Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor$Companion;

    .line 68
    new-instance v0, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;-><init>(Ljava/util/Map;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->EMPTY:Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KTypeParameter;",
            "Lkotlin/reflect/KTypeProjection;",
            ">;)V"
        }
    .end annotation

    const-string v0, "substitution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->substitution:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;
    .locals 1

    .line 16
    sget-object v0, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->EMPTY:Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;

    return-object v0
.end method

.method private final lowerBoundIfFlexible(Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KTypeProjection;
    .locals 2

    .line 62
    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->lowerBoundIfFlexible()Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getVariance()Lkotlin/reflect/KVariance;

    move-result-object p1

    check-cast v0, Lkotlin/reflect/KType;

    invoke-direct {v1, p1, v0}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    return-object v1

    :cond_1
    return-object p1
.end method

.method private final upperBoundIfFlexible(Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KTypeProjection;
    .locals 2

    .line 65
    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->upperBoundIfFlexible()Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getVariance()Lkotlin/reflect/KVariance;

    move-result-object p1

    check-cast v0, Lkotlin/reflect/KType;

    invoke-direct {v1, p1, v0}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    return-object v1

    :cond_1
    return-object p1
.end method

.method private final withNullabilityOf(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)Lkotlin/reflect/KType;
    .locals 5

    .line 49
    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.model.RigidTypeMarker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    .line 50
    sget-object v1, Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext;->INSTANCE:Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext;

    .line 51
    sget-object v1, Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext;->INSTANCE:Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext;

    invoke-interface {p2}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    invoke-interface {p1}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v4

    :goto_1
    invoke-virtual {v1, v0, p1}, Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext;->withNullability(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Z)Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    move-result-object p1

    .line 52
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    if-eqz v1, :cond_6

    .line 53
    check-cast p1, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    .line 54
    instance-of v1, p2, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->isDefinitelyNotNullType()Z

    move-result v1

    if-ne v1, v4, :cond_3

    goto :goto_3

    .line 55
    :cond_3
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    if-eqz v1, :cond_4

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->isDefinitelyNotNullType()Z

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-interface {p2}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result p2

    if-nez p2, :cond_5

    :goto_3
    move v3, v4

    .line 53
    :cond_5
    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->makeDefinitelyNotNullAsSpecified(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    .line 50
    :cond_6
    const-string p2, "null cannot be cast to non-null type kotlin.reflect.KType"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/KType;

    return-object p1
.end method


# virtual methods
.method public final substitute(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;
    .locals 7

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->lowerBoundIfFlexible()Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 19
    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->upperBoundIfFlexible()Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v1

    :goto_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 21
    check-cast v2, Lkotlin/reflect/KType;

    invoke-virtual {p0, v2}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->substitute(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->lowerBoundIfFlexible(Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KTypeProjection;

    move-result-object p1

    .line 22
    check-cast v3, Lkotlin/reflect/KType;

    invoke-virtual {p0, v3}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->substitute(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->upperBoundIfFlexible(Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KTypeProjection;

    move-result-object v0

    .line 23
    new-instance v1, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getVariance()Lkotlin/reflect/KVariance;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/types/TypeOfImplKt;->createPlatformKType(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)Lkotlin/reflect/KType;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    return-object v1

    .line 26
    :cond_4
    invoke-interface {p1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v2

    if-nez v2, :cond_5

    sget-object v0, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v0, p1}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object p1

    return-object p1

    .line 27
    :cond_5
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->substitution:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KTypeProjection;

    if-eqz v3, :cond_7

    .line 28
    invoke-virtual {v3}, Lkotlin/reflect/KTypeProjection;->component1()Lkotlin/reflect/KVariance;

    move-result-object v0

    invoke-virtual {v3}, Lkotlin/reflect/KTypeProjection;->component2()Lkotlin/reflect/KType;

    move-result-object v1

    if-nez v1, :cond_6

    return-object v3

    .line 29
    :cond_6
    new-instance v2, Lkotlin/reflect/KTypeProjection;

    .line 31
    invoke-direct {p0, v1, p1}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->withNullabilityOf(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)Lkotlin/reflect/KType;

    move-result-object p1

    .line 29
    invoke-direct {v2, v0, p1}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    return-object v2

    .line 34
    :cond_7
    sget-object v3, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    .line 35
    invoke-interface {p1}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_6

    .line 36
    :cond_8
    invoke-interface {p1}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 83
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 84
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 85
    check-cast v6, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v6}, Lkotlin/reflect/KTypeProjection;->component2()Lkotlin/reflect/KType;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 37
    invoke-virtual {p0, v6}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->substitute(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v6

    if-nez v6, :cond_a

    :cond_9
    sget-object v6, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v6}, Lkotlin/reflect/KTypeProjection$Companion;->getSTAR()Lkotlin/reflect/KTypeProjection;

    move-result-object v6

    .line 85
    :cond_a
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 87
    :cond_b
    check-cast v5, Ljava/util/List;

    .line 39
    invoke-interface {p1}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v4

    .line 40
    invoke-interface {p1}, Lkotlin/reflect/KType;->getAnnotations()Ljava/util/List;

    move-result-object v6

    if-eqz v0, :cond_c

    .line 41
    check-cast p1, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    goto :goto_5

    :cond_c
    move-object p1, v1

    :goto_5
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->getMutableCollectionClass()Lkotlin/reflect/KClass;

    move-result-object v1

    .line 35
    :cond_d
    invoke-static {v2, v5, v4, v6, v1}, Lkotlin/reflect/full/KClassifiers;->createTypeImpl(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;Lkotlin/reflect/KClass;)Lkotlin/reflect/KType;

    move-result-object p1

    .line 34
    :goto_6
    invoke-virtual {v3, p1}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object p1

    return-object p1
.end method
