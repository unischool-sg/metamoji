.class synthetic Lcom/metamoji/media/voice/ui/VcPlayerBar$37;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYER_ERROR_STATUS:[I

.field static final synthetic $SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYING_STATUS:[I

.field static final synthetic $SwitchMap$com$metamoji$nt$NtCommand:[I

.field static final synthetic $SwitchMap$com$metamoji$ui$PopupCommand:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 2675
    invoke-static {}, Lcom/metamoji/ui/PopupCommand;->values()[Lcom/metamoji/ui/PopupCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/ui/PopupCommand;->VOICE_DELETE_TRACK:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v2}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->VOICE_RENAME_TITLE:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v3}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->VOICE_DETACH_LINK:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v4}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->VOICE_SEND_TO_APPLICATION:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v5}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    sget-object v6, Lcom/metamoji/ui/PopupCommand;->VOICE_SAVE_TO_FILE:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v6}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 1731
    :catch_4
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->values()[Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYING_STATUS:[I

    :try_start_5
    sget-object v6, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    invoke-virtual {v6}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYING_STATUS:[I

    sget-object v6, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PREPARED_TO_PLAY:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    invoke-virtual {v6}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 1549
    :catch_6
    invoke-static {}, Lcom/metamoji/nt/NtCommand;->values()[Lcom/metamoji/nt/NtCommand;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    :try_start_7
    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_VC_ADD_INDEX:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_VC_REMOVE_INDEX:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_VC_REMOVE_INDEX_FROM_PLAYER_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_VC_DETACH_VOICE_TAG_SELECTED_OBJECTS:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_BACKWARD:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v5, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v5, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FORWARD:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 1130
    :catch_d
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->values()[Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYER_ERROR_STATUS:[I

    :try_start_e
    sget-object v6, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->FAILED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-virtual {v6}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYER_ERROR_STATUS:[I

    sget-object v5, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->INVALID_URL:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-virtual {v5}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYER_ERROR_STATUS:[I

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->NOT_YET_UPLOADED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYER_ERROR_STATUS:[I

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->NONE:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYER_ERROR_STATUS:[I

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->FORCE:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
