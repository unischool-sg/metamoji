.class synthetic Lcom/metamoji/ns/NsCollaboCommand$46;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/NsCollaboCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$ns$NsCollaboManager$CollaboMode:[I

.field static final synthetic $SwitchMap$com$metamoji$ns$NsCollaboManager$ConnectStatus:[I

.field static final synthetic $SwitchMap$com$metamoji$nt$NtCommand:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2763
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->values()[Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/ns/NsCollaboCommand$46;->$SwitchMap$com$metamoji$ns$NsCollaboManager$ConnectStatus:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/ns/NsCollaboCommand$46;->$SwitchMap$com$metamoji$ns$NsCollaboManager$ConnectStatus:[I

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/metamoji/ns/NsCollaboCommand$46;->$SwitchMap$com$metamoji$ns$NsCollaboManager$ConnectStatus:[I

    sget-object v4, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->CONNECTING:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    invoke-virtual {v4}, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 2743
    :catch_2
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->values()[Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/metamoji/ns/NsCollaboCommand$46;->$SwitchMap$com$metamoji$ns$NsCollaboManager$CollaboMode:[I

    :try_start_3
    sget-object v4, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-virtual {v4}, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/metamoji/ns/NsCollaboCommand$46;->$SwitchMap$com$metamoji$ns$NsCollaboManager$CollaboMode:[I

    sget-object v4, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-virtual {v4}, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/metamoji/ns/NsCollaboCommand$46;->$SwitchMap$com$metamoji$ns$NsCollaboManager$CollaboMode:[I

    sget-object v4, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-virtual {v4}, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 1324
    :catch_5
    invoke-static {}, Lcom/metamoji/nt/NtCommand;->values()[Lcom/metamoji/nt/NtCommand;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/metamoji/ns/NsCollaboCommand$46;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    :try_start_6
    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_SHAREDDRIVE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/metamoji/ns/NsCollaboCommand$46;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_APPLICATION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/metamoji/ns/NsCollaboCommand$46;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_URL_BY_APPLICATION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/metamoji/ns/NsCollaboCommand$46;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_FILE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/metamoji/ns/NsCollaboCommand$46;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_CUSTOMAPP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
