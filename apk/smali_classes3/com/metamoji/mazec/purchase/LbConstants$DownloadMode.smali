.class public final enum Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;
.super Ljava/lang/Enum;
.source "LbConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/purchase/LbConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

.field public static final enum AlreadyPurchased:Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

.field public static final enum Download:Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

.field public static final enum Purchase:Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

.field public static final enum Trial:Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;
    .locals 4

    .line 100
    sget-object v0, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;->Purchase:Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    sget-object v1, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;->Trial:Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    sget-object v2, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;->Download:Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    sget-object v3, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;->AlreadyPurchased:Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 101
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    const-string v1, "Purchase"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;->Purchase:Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    .line 102
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    const-string v1, "Trial"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;->Trial:Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    .line 103
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    const-string v1, "Download"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;->Download:Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    .line 104
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    const-string v1, "AlreadyPurchased"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;->AlreadyPurchased:Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    .line 100
    invoke-static {}, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;->$values()[Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;->$VALUES:[Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 100
    const-class v0, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;
    .locals 1

    .line 100
    sget-object v0, Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;->$VALUES:[Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    invoke-virtual {v0}, [Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/mazec/purchase/LbConstants$DownloadMode;

    return-object v0
.end method
