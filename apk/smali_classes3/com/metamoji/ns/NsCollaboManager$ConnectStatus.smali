.class public final enum Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;
.super Ljava/lang/Enum;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/NsCollaboManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

.field public static final enum CONNECTING:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

.field public static final enum OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

.field public static final enum ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;
    .locals 3

    .line 81
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->CONNECTING:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 82
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    const-string v1, "ONLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    .line 83
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    const-string v1, "CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->CONNECTING:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    .line 84
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    const-string v1, "OFFLINE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    .line 81
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->$values()[Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->$VALUES:[Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

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

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 81
    const-class v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;
    .locals 1

    .line 81
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->$VALUES:[Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    invoke-virtual {v0}, [Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    return-object v0
.end method
