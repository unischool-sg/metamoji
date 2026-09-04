.class public final enum Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;
.super Ljava/lang/Enum;
.source "NtResourceDownloaderBase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/dl/NtResourceDownloaderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreCheckResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "INITIAL",
        "NO_UPDATE",
        "NEED_UPDATE",
        "COMPLETED",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

.field public static final enum COMPLETED:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

.field public static final enum INITIAL:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

.field public static final enum NEED_UPDATE:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

.field public static final enum NO_UPDATE:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;
    .locals 4

    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->INITIAL:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    sget-object v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->NO_UPDATE:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    sget-object v2, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->NEED_UPDATE:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    sget-object v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->COMPLETED:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->INITIAL:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    .line 66
    new-instance v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    const-string v1, "NO_UPDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->NO_UPDATE:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    .line 67
    new-instance v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    const-string v1, "NEED_UPDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->NEED_UPDATE:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    .line 68
    new-instance v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    const-string v1, "COMPLETED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->COMPLETED:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    invoke-static {}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->$values()[Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->$VALUES:[Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;
    .locals 1

    const-class v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;
    .locals 1

    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->$VALUES:[Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    return-object v0
.end method
