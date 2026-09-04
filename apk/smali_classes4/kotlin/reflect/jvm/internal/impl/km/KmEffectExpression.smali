.class public final Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;
.super Ljava/lang/Object;
.source "Contracts.kt"


# instance fields
.field private final andArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;",
            ">;"
        }
    .end annotation
.end field

.field private constantValue:Lkotlin/reflect/jvm/internal/impl/km/KmConstantValue;

.field private flags:I

.field private isInstanceType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

.field private final orArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;",
            ">;"
        }
    .end annotation
.end field

.field private parameterIndex:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->andArguments:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->orArguments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAndArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->andArguments:Ljava/util/List;

    return-object v0
.end method

.method public final getFlags$kotlin_metadata()I
    .locals 1

    .line 62
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->flags:I

    return v0
.end method

.method public final getOrArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->orArguments:Ljava/util/List;

    return-object v0
.end method

.method public final setConstantValue(Lkotlin/reflect/jvm/internal/impl/km/KmConstantValue;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->constantValue:Lkotlin/reflect/jvm/internal/impl/km/KmConstantValue;

    return-void
.end method

.method public final setFlags$kotlin_metadata(I)V
    .locals 0

    .line 62
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->flags:I

    return-void
.end method

.method public final setInstanceType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->isInstanceType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    return-void
.end method

.method public final setParameterIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->parameterIndex:Ljava/lang/Integer;

    return-void
.end method
