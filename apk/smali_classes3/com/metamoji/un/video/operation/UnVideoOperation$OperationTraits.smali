.class public final Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;
.super Ljava/lang/Object;
.source "UnVideoOperation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/operation/UnVideoOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationTraits"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u000c\u001a\u00020\u0000J\u0006\u0010\r\u001a\u00020\u0000J\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0000J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;",
        "",
        "value",
        "",
        "passive",
        "",
        "<init>",
        "(IZ)V",
        "getValue",
        "()I",
        "getPassive",
        "()Z",
        "asPassive",
        "asUnPassive",
        "valueEquals",
        "dst",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;

.field private static final DirectionOrigin:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

.field private static final None:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

.field private static final UndoModelOrigin:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;


# instance fields
.field private final passive:Z

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->Companion:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;

    .line 88
    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v2, v2, v3, v1}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->None:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    .line 89
    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->UndoModelOrigin:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    .line 90
    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    invoke-direct {v0, v3, v2, v3, v1}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->DirectionOrigin:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->value:I

    iput-boolean p2, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->passive:Z

    return-void
.end method

.method public synthetic constructor <init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 74
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;-><init>(IZ)V

    return-void
.end method

.method public static final synthetic access$getDirectionOrigin$cp()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;
    .locals 1

    .line 74
    sget-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->DirectionOrigin:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    return-object v0
.end method

.method public static final synthetic access$getNone$cp()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;
    .locals 1

    .line 74
    sget-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->None:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    return-object v0
.end method

.method public static final synthetic access$getUndoModelOrigin$cp()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;
    .locals 1

    .line 74
    sget-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->UndoModelOrigin:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;IZILjava/lang/Object;)Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->value:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->passive:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->copy(IZ)Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asPassive()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;
    .locals 3

    .line 76
    iget-boolean v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->passive:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    iget v1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->value:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;-><init>(IZ)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final asUnPassive()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;
    .locals 5

    .line 80
    iget-boolean v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->passive:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    iget v1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->value:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->value:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->passive:Z

    return v0
.end method

.method public final copy(IZ)Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;
    .locals 1

    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;-><init>(IZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    iget v1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->value:I

    iget v3, p1, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->value:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->passive:Z

    iget-boolean p1, p1, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->passive:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPassive()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->passive:Z

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->passive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->value:I

    iget-boolean v1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->passive:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OperationTraits(value="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", passive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final valueEquals(Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;)Z
    .locals 1

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget p1, p1, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->value:I

    iget v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->value:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
