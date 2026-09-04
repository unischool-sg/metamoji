.class synthetic Lcom/metamoji/nt/NtUnitController$9;
.super Ljava/lang/Object;
.source "NtUnitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtUnitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$nt$NtCommand:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 501
    invoke-static {}, Lcom/metamoji/nt/NtCommand;->values()[Lcom/metamoji/nt/NtCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/nt/NtUnitController$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_STYLE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/nt/NtUnitController$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_SHAPE_STYLE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/metamoji/nt/NtUnitController$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FROM_VOICE_TAG:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/metamoji/nt/NtUnitController$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_DETACH_VOICE_TAG_SELECTED_OBJECTS:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
