.class public final Lcom/metamoji/video/AmvFullscreenActivity$onEnterPinP$1;
.super Landroid/content/BroadcastReceiver;
.source "AmvFullscreenActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/AmvFullscreenActivity;->onEnterPinP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/metamoji/video/AmvFullscreenActivity$onEnterPinP$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "video"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/video/AmvFullscreenActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/video/AmvFullscreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/video/AmvFullscreenActivity$onEnterPinP$1;->this$0:Lcom/metamoji/video/AmvFullscreenActivity;

    .line 422
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 424
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayVideo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    const-string p1, "ActionType"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 429
    sget-object p2, Lcom/metamoji/video/AmvFullscreenActivity$Action;->PAUSE:Lcom/metamoji/video/AmvFullscreenActivity$Action;

    invoke-virtual {p2}, Lcom/metamoji/video/AmvFullscreenActivity$Action;->getCode()I

    move-result p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/metamoji/video/AmvFullscreenActivity$onEnterPinP$1;->this$0:Lcom/metamoji/video/AmvFullscreenActivity;

    invoke-static {p1}, Lcom/metamoji/video/AmvFullscreenActivity;->access$getFsa_player(Lcom/metamoji/video/AmvFullscreenActivity;)Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->pause()V

    return-void

    .line 430
    :cond_1
    sget-object p2, Lcom/metamoji/video/AmvFullscreenActivity$Action;->PLAY:Lcom/metamoji/video/AmvFullscreenActivity$Action;

    invoke-virtual {p2}, Lcom/metamoji/video/AmvFullscreenActivity$Action;->getCode()I

    move-result p2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/metamoji/video/AmvFullscreenActivity$onEnterPinP$1;->this$0:Lcom/metamoji/video/AmvFullscreenActivity;

    invoke-static {p1}, Lcom/metamoji/video/AmvFullscreenActivity;->access$getFsa_player(Lcom/metamoji/video/AmvFullscreenActivity;)Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->play()V

    return-void

    .line 431
    :cond_2
    sget-object p2, Lcom/metamoji/video/AmvFullscreenActivity$Action;->SEEK_TOP:Lcom/metamoji/video/AmvFullscreenActivity$Action;

    invoke-virtual {p2}, Lcom/metamoji/video/AmvFullscreenActivity$Action;->getCode()I

    move-result p2

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/metamoji/video/AmvFullscreenActivity$onEnterPinP$1;->this$0:Lcom/metamoji/video/AmvFullscreenActivity;

    invoke-static {p1}, Lcom/metamoji/video/AmvFullscreenActivity;->access$getFsa_player(Lcom/metamoji/video/AmvFullscreenActivity;)Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/video/AmvExoVideoPlayer;->seekTo(J)V

    :cond_3
    :goto_0
    return-void
.end method
