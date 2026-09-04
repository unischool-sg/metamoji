.class public final Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;
.super Ljava/lang/Object;
.source "FlagImpl.kt"


# instance fields
.field private final bitWidth:I

.field private final offset:I

.field private final value:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->offset:I

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->bitWidth:I

    iput p3, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->value:I

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField<",
            "*>;I)V"
        }
    .end annotation

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;->offset:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;->bitWidth:I

    invoke-direct {p0, v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final getBitWidth$kotlin_metadata()I
    .locals 1

    .line 10
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->bitWidth:I

    return v0
.end method

.method public final getOffset$kotlin_metadata()I
    .locals 1

    .line 10
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->offset:I

    return v0
.end method

.method public final getValue$kotlin_metadata()I
    .locals 1

    .line 10
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->value:I

    return v0
.end method

.method public final invoke(I)Z
    .locals 2

    .line 20
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->offset:I

    ushr-int/2addr p1, v0

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->bitWidth:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    and-int/2addr p1, v0

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->value:I

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final plus$kotlin_metadata(I)I
    .locals 2

    .line 18
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->bitWidth:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->offset:I

    shl-int/2addr v0, v1

    not-int v0, v0

    and-int/2addr p1, v0

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->value:I

    shl-int/2addr v0, v1

    add-int/2addr p1, v0

    return p1
.end method
