.class public final enum Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
.super Ljava/lang/Enum;
.source "DmIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/dm/fw/sync/DmIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

.field public static final enum FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

.field public static final enum FatalStopError:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

.field public static final enum Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 3

    .line 21
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    sget-object v1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    sget-object v2, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FatalStopError:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    .line 23
    new-instance v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    const-string v1, "FailSkipNext"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    .line 24
    new-instance v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    const-string v1, "FatalStopError"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FatalStopError:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    .line 21
    invoke-static {}, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->$values()[Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->$VALUES:[Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    const-class v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 1

    .line 21
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->$VALUES:[Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    invoke-virtual {v0}, [Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0
.end method
