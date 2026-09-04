.class public final Lkotlin/reflect/jvm/internal/impl/km/KmContract;
.super Ljava/lang/Object;
.source "Contracts.kt"


# instance fields
.field private final effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmContract;->effects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmEffect;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmContract;->effects:Ljava/util/List;

    return-object v0
.end method
