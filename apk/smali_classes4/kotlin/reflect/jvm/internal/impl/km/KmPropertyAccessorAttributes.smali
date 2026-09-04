.class public final Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;
.super Ljava/lang/Object;
.source "Nodes.kt"


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private flags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;->flags:I

    .line 302
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;->annotations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;->annotations:Ljava/util/List;

    return-object v0
.end method

.method public final getFlags$kotlin_metadata()I
    .locals 1

    .line 295
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;->flags:I

    return v0
.end method

.method public final setFlags$kotlin_metadata(I)V
    .locals 0

    .line 295
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;->flags:I

    return-void
.end method
