.class public Lcom/metamoji/nt/NtCommandManager;
.super Ljava/lang/Object;
.source "NtCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtCommandManager$Grayout;
    }
.end annotation


# static fields
.field public static final CANCEL_KEY_PAGERESTORE:Ljava/lang/String; = "RestoringPage"

.field public static final SEND_COMMAND_IDS:[Lcom/metamoji/nt/NtCommand;


# instance fields
.field private _enableStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/metamoji/nt/NtCommand;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private _processor:Lcom/metamoji/nt/ICommandProcessor;

.field private _selectStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/metamoji/nt/NtCommand;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x25

    .line 19
    new-array v0, v0, [Lcom/metamoji/nt/NtCommand;

    const/4 v1, 0x0

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_OPEN_PAGELIST:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_OPEN_JUMPLIST:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_CUT:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COPY:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_VC_AUDIO_COPY:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_NORMAL_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_COLLABO_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_SHAREDDRIVE:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_APPLICATION:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_FILE:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_CUSTOMAPP:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TARGET_SERVICE_APPLICATION:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TARGET_SERVICE_FILE:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TARGET_SERVICE_WEBDAV:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TARGET_SERVICE_ALBUM:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TARGET_SERVICE_PRINTER:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TARGET_SERVICE_PDFPREVIEW:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TARGET_SERVICE_MAIL:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TARGET_SERVICE_ITUNES:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_ALBUM:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_FILE_FORMAT_JPEG:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_FILE_FORMAT_JPEG_ALL:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_FILE_FORMAT_PDF:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_FILE_FORMAT_HAYABUSADOC:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_APL_FORMAT_JPEG:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_APL_FORMAT_PDF:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_APL_FORMAT_JPEG_ALL:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEND_APL_FORMAT_HAYABUSADOC:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_ALBUM_SELECTION:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_ALBUM_THISPAGE:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_ALBUM_ALLPAGE:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_PREVIEW_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PRINT_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_VIDEO_DOWNLOAD:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_IMAGE_TO_ALBUM:Lcom/metamoji/nt/NtCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/metamoji/nt/NtCommandManager;->SEND_COMMAND_IDS:[Lcom/metamoji/nt/NtCommand;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/ICommandProcessor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/metamoji/nt/NtCommandManager;->_processor:Lcom/metamoji/nt/ICommandProcessor;

    .line 118
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtCommandManager;->_enableStates:Ljava/util/Map;

    .line 119
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtCommandManager;->_selectStates:Ljava/util/Map;

    return-void
.end method

.method private isPageRestoringCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 2

    .line 289
    sget-object v0, Lcom/metamoji/nt/NtCommandManager$2;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z
    .locals 4

    .line 178
    sget-object v0, Lcom/metamoji/nt/NtCommandManager$Grayout;->ENABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 179
    :goto_0
    sget-object v3, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    if-ne p2, v3, :cond_1

    .line 180
    iget-object p2, p0, Lcom/metamoji/nt/NtCommandManager;->_processor:Lcom/metamoji/nt/ICommandProcessor;

    invoke-interface {p2, p1}, Lcom/metamoji/nt/ICommandProcessor;->processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z

    move-result p2

    xor-int/lit8 v0, p2, 0x1

    .line 188
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/metamoji/nt/NtCommandManager;->_enableStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object p2, p0, Lcom/metamoji/nt/NtCommandManager;->_processor:Lcom/metamoji/nt/ICommandProcessor;

    invoke-interface {p2, p1, v0}, Lcom/metamoji/nt/ICommandProcessor;->processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 196
    const-string p2, "NsCommandManager.enableCommand"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v2
.end method

.method public execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 3

    const/4 v0, 0x0

    .line 139
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "executing command %s."

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 143
    iget-object v1, p0, Lcom/metamoji/nt/NtCommandManager;->_processor:Lcom/metamoji/nt/ICommandProcessor;

    invoke-interface {v1, p1, p2}, Lcom/metamoji/nt/ICommandProcessor;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 147
    const-string p2, "NsCommandManager.execCommand"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method public execCommandOnBackground(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 161
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtCommandManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtCommandManager$1;-><init>(Lcom/metamoji/nt/NtCommandManager;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public getCommandSelected(Lcom/metamoji/nt/NtCommand;)I
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/metamoji/nt/NtCommandManager;->_selectStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/metamoji/nt/NtCommandManager;->_enableStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z
    .locals 1

    .line 235
    sget-object v0, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 236
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    return p1
.end method

.method public selectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 2

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/NtCommandManager;->_selectStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/metamoji/nt/NtCommandManager;->_processor:Lcom/metamoji/nt/ICommandProcessor;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/nt/ICommandProcessor;->processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 266
    const-string p2, "NsCommandManager.selectCommand"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public selectCommand(Lcom/metamoji/nt/NtCommand;Z)Z
    .locals 0

    .line 248
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result p1

    return p1
.end method
