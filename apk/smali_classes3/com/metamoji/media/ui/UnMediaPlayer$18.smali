.class synthetic Lcom/metamoji/media/ui/UnMediaPlayer$18;
.super Ljava/lang/Object;
.source "UnMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/ui/UnMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYER_ERROR_STATUS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 415
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->values()[Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/media/ui/UnMediaPlayer$18;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYER_ERROR_STATUS:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->NOT_YET_UPLOADED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/media/ui/UnMediaPlayer$18;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYER_ERROR_STATUS:[I

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->FAILED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
