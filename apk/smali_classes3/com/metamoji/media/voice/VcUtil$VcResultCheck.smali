.class public Lcom/metamoji/media/voice/VcUtil$VcResultCheck;
.super Lcom/metamoji/media/MediaUtil$MediaResultCheck;
.source "VcUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/VcUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VcResultCheck"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 652
    invoke-direct {p0}, Lcom/metamoji/media/MediaUtil$MediaResultCheck;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/String;)V
    .locals 2

    .line 656
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->NONE:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->playerDidFinishToPlay(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V

    .line 659
    invoke-super {p0, p1}, Lcom/metamoji/media/MediaUtil$MediaResultCheck;->onError(Ljava/lang/String;)V

    return-void
.end method
