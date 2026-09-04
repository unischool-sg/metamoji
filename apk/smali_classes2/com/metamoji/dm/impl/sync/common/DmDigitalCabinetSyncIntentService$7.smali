.class synthetic Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$7;
.super Ljava/lang/Object;
.source "DmDigitalCabinetSyncIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$dm$fw$sync$DmIntentService$StatusCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 179
    invoke-static {}, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->values()[Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$7;->$SwitchMap$com$metamoji$dm$fw$sync$DmIntentService$StatusCode:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    invoke-virtual {v1}, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$7;->$SwitchMap$com$metamoji$dm$fw$sync$DmIntentService$StatusCode:[I

    sget-object v1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    invoke-virtual {v1}, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$7;->$SwitchMap$com$metamoji$dm$fw$sync$DmIntentService$StatusCode:[I

    sget-object v1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FatalStopError:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    invoke-virtual {v1}, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
