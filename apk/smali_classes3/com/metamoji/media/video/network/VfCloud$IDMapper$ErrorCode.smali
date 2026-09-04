.class public final enum Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;
.super Ljava/lang/Enum;
.source "VfCloud.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/network/VfCloud$IDMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getCode",
        "()I",
        "SUCCEEDED",
        "DUPLICATED",
        "FORBIDDEN",
        "NOT_FOUND",
        "UNKNOWN",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

.field public static final Companion:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode$Companion;

.field public static final enum DUPLICATED:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

.field public static final enum FORBIDDEN:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

.field public static final enum NOT_FOUND:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

.field public static final enum SUCCEEDED:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

.field public static final enum UNKNOWN:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;
    .locals 5

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->SUCCEEDED:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    sget-object v1, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->DUPLICATED:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    sget-object v2, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->FORBIDDEN:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    sget-object v3, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->NOT_FOUND:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    sget-object v4, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->UNKNOWN:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 393
    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    const-string v1, "SUCCEEDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->SUCCEEDED:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    .line 394
    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    const/4 v1, 0x1

    const/16 v2, 0x191

    const-string v3, "DUPLICATED"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->DUPLICATED:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    .line 395
    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    const/4 v1, 0x2

    const/16 v2, 0x192

    const-string v3, "FORBIDDEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->FORBIDDEN:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    .line 396
    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    const/4 v1, 0x3

    const/16 v2, 0x193

    const-string v3, "NOT_FOUND"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->NOT_FOUND:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    .line 397
    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->UNKNOWN:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    invoke-static {}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->$values()[Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->$VALUES:[Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->Companion:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 392
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->code:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;
    .locals 1

    const-class v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;
    .locals 1

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->$VALUES:[Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->code:I

    return v0
.end method
