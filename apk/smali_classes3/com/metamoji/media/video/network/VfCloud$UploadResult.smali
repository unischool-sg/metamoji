.class public final enum Lcom/metamoji/media/video/network/VfCloud$UploadResult;
.super Ljava/lang/Enum;
.source "VfCloud.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/network/VfCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploadResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/media/video/network/VfCloud$UploadResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/media/video/network/VfCloud$UploadResult;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SUCCESS",
        "FATAL_ERROR",
        "ERROR",
        "CANCELLED",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/media/video/network/VfCloud$UploadResult;

.field public static final enum CANCELLED:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

.field public static final enum ERROR:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

.field public static final enum FATAL_ERROR:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

.field public static final enum SUCCESS:Lcom/metamoji/media/video/network/VfCloud$UploadResult;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/media/video/network/VfCloud$UploadResult;
    .locals 4

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->SUCCESS:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    sget-object v1, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->FATAL_ERROR:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    sget-object v2, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->ERROR:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    sget-object v3, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->CANCELLED:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/video/network/VfCloud$UploadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->SUCCESS:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    .line 45
    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    const-string v1, "FATAL_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/video/network/VfCloud$UploadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->FATAL_ERROR:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    .line 46
    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    const-string v1, "ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/video/network/VfCloud$UploadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->ERROR:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    .line 47
    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    const-string v1, "CANCELLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/video/network/VfCloud$UploadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->CANCELLED:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    invoke-static {}, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->$values()[Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->$VALUES:[Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/media/video/network/VfCloud$UploadResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/media/video/network/VfCloud$UploadResult;
    .locals 1

    const-class v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/media/video/network/VfCloud$UploadResult;
    .locals 1

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->$VALUES:[Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    return-object v0
.end method
