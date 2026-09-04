.class public final Lcom/metamoji/un/video/UnVideoPlayerLayer;
.super Landroid/widget/FrameLayout;
.source "UnVideoPlayerLayer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014R\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoPlayerLayer;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "videoPlayerManager",
        "Lcom/metamoji/un/video/UnVideoPlayerManager;",
        "getVideoPlayerManager",
        "()Lcom/metamoji/un/video/UnVideoPlayerManager;",
        "putPlayer",
        "",
        "player",
        "Lcom/metamoji/video/AmvPlayerUnitView;",
        "removePlayer",
        "onSaveInstanceState",
        "Landroid/os/Parcelable;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/video/UnVideoPlayerLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/video/UnVideoPlayerLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoPlayerLayer;->getVideoPlayerManager()Lcom/metamoji/un/video/UnVideoPlayerManager;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p0}, Lcom/metamoji/un/video/UnVideoPlayerManager;->requestRefreshPlayer(Landroid/content/Context;Lcom/metamoji/un/video/UnVideoPlayerLayer;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/video/UnVideoPlayerLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getVideoPlayerManager()Lcom/metamoji/un/video/UnVideoPlayerManager;
    .locals 1

    .line 25
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getVideoUnitManager()Lcom/metamoji/un/video/UnVideoUnitManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnitManager;->getPlayerManager()Lcom/metamoji/un/video/UnVideoPlayerManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 41
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_player_view:I

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/UnVideoPlayerLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/video/AmvPlayerUnitView;

    if-eqz v0, :cond_1

    .line 43
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoPlayerLayer;->getVideoPlayerManager()Lcom/metamoji/un/video/UnVideoPlayerManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoPlayer()Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/video/IAmvVideoPlayer;->getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    move-result-object v2

    sget-object v3, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->Playing:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoPlayer()Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvVideoPlayer;->getSeekPosition()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/metamoji/un/video/UnVideoPlayerManager;->savePlayerState(ZJ)V

    .line 45
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final putPlayer(Lcom/metamoji/video/AmvPlayerUnitView;)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_player_view:I

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvPlayerUnitView;->setId(I)V

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvPlayerUnitView;->setSaveEnabled(Z)V

    .line 33
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/video/UnVideoPlayerLayer;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final removePlayer(Lcom/metamoji/video/AmvPlayerUnitView;)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/video/UnVideoPlayerLayer;->removeView(Landroid/view/View;)V

    return-void
.end method
