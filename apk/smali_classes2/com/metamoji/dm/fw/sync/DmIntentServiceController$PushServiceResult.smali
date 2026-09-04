.class public final enum Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;
.super Ljava/lang/Enum;
.source "DmIntentServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/dm/fw/sync/DmIntentServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PushServiceResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

.field public static final enum DuplicateEntry:Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

.field public static final enum Success:Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;
    .locals 2

    .line 88
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;->Success:Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    sget-object v1, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;->DuplicateEntry:Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    filled-new-array {v0, v1}, [Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 89
    new-instance v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;->Success:Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    .line 90
    new-instance v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    const-string v1, "DuplicateEntry"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;->DuplicateEntry:Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    .line 88
    invoke-static {}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;->$values()[Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    move-result-object v0

    sput-object v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;->$VALUES:[Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

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

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 88
    const-class v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;
    .locals 1

    .line 88
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;->$VALUES:[Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    invoke-virtual {v0}, [Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    return-object v0
.end method
