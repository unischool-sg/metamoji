.class public final Lcom/metamoji/un/video/UnVideoPlayerManager;
.super Ljava/lang/Object;
.source "UnVideoPlayerManager.kt"

# interfaces
.implements Lcom/metamoji/un/video/IUnVideoMarkerPresenter;
.implements Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/UnVideoPlayerManager$Companion;,
        Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener;,
        Lcom/metamoji/un/video/UnVideoPlayerManager$MarkerCommand;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 <2\u00020\u00012\u00020\u0002:\u0003<=>B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\"\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0016J\u0006\u0010\u001d\u001a\u00020\u001bJ\u0016\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u0016\u0010#\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'J\u0010\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020*H\u0016J\u0010\u0010+\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020*H\u0016J\u0010\u0010,\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020*H\u0016J\"\u0010-\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020/2\u0006\u0010)\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\"\u00103\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020/2\u0006\u0010)\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J*\u00104\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020/2\u0006\u0010)\u001a\u0002002\u0006\u00105\u001a\u0002062\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J$\u00107\u001a\u00020\u001b*\u0002082\u0006\u0010)\u001a\u0002002\u0006\u00109\u001a\u00020:2\u0006\u00105\u001a\u00020;H\u0002R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006?"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoPlayerManager;",
        "Lcom/metamoji/un/video/IUnVideoMarkerPresenter;",
        "Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;",
        "<init>",
        "()V",
        "currentPlayer",
        "Lcom/metamoji/un/video/UnMoviePlayer;",
        "getCurrentPlayer",
        "()Lcom/metamoji/un/video/UnMoviePlayer;",
        "setCurrentPlayer",
        "(Lcom/metamoji/un/video/UnMoviePlayer;)V",
        "activeUnit",
        "Lcom/metamoji/un/video/UnVideoUnit;",
        "getActiveUnit",
        "()Lcom/metamoji/un/video/UnVideoUnit;",
        "direction",
        "Lcom/metamoji/un/video/IWvvChairmansDirection;",
        "getDirection",
        "()Lcom/metamoji/un/video/IWvvChairmansDirection;",
        "setDirection",
        "(Lcom/metamoji/un/video/IWvvChairmansDirection;)V",
        "getPlayer",
        "Lcom/metamoji/un/video/IUnMoviePlayer;",
        "videoUnit",
        "source",
        "Lcom/metamoji/video/IAmvSource;",
        "releasePlayer",
        "",
        "player",
        "dispose",
        "requestRefreshPlayer",
        "context",
        "Landroid/content/Context;",
        "layer",
        "Lcom/metamoji/un/video/UnVideoPlayerLayer;",
        "savePlayerState",
        "isPlaying",
        "",
        "seekPosition",
        "",
        "markerAdded",
        "marker",
        "Lcom/metamoji/un/video/IUnVideoMarker;",
        "markerRemoved",
        "markerMoved",
        "onMarkerAdded",
        "sender",
        "Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;",
        "",
        "clientData",
        "",
        "onMarkerRemoved",
        "onMarkerContextMenu",
        "x",
        "",
        "showMarkerPopupMenu",
        "Lcom/metamoji/noteanytime/EditorActivity;",
        "anchorView",
        "Landroid/view/View;",
        "",
        "Companion",
        "MarkerCommand",
        "ContextMenuListener",
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


# static fields
.field public static final Companion:Lcom/metamoji/un/video/UnVideoPlayerManager$Companion;


# instance fields
.field private currentPlayer:Lcom/metamoji/un/video/UnMoviePlayer;

.field private direction:Lcom/metamoji/un/video/IWvvChairmansDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/video/UnVideoPlayerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/UnVideoPlayerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/UnVideoPlayerManager;->Companion:Lcom/metamoji/un/video/UnVideoPlayerManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final dispose$lambda$2(Lcom/metamoji/un/video/UnVideoPlayerManager;)Lkotlin/Unit;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoPlayerManager;->currentPlayer:Lcom/metamoji/un/video/UnMoviePlayer;

    if-eqz v0, :cond_0

    .line 297
    check-cast v0, Lcom/metamoji/un/video/IUnMoviePlayer;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/UnVideoPlayerManager;->releasePlayer(Lcom/metamoji/un/video/IUnMoviePlayer;)V

    .line 303
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final releasePlayer$lambda$1(Lcom/metamoji/un/video/IUnMoviePlayer;Lcom/metamoji/un/video/UnVideoPlayerManager;)Lkotlin/Unit;
    .locals 4

    .line 279
    invoke-interface {p0}, Lcom/metamoji/un/video/IUnMoviePlayer;->hide()V

    .line 280
    iget-object v0, p1, Lcom/metamoji/un/video/UnVideoPlayerManager;->currentPlayer:Lcom/metamoji/un/video/UnMoviePlayer;

    if-ne v0, p0, :cond_2

    .line 281
    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoPlayerManager;->getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit;->getManipulationListener()Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 283
    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit;->getMarkerManager()Lcom/metamoji/un/video/UnVideoMarkerManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/video/UnVideoMarkerManager;->setPresenter(Lcom/metamoji/un/video/IUnVideoMarkerPresenter;)V

    .line 285
    :cond_0
    check-cast p0, Lcom/metamoji/un/video/UnMoviePlayer;

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnMoviePlayer;->getVideoPlayer()Lcom/metamoji/video/AmvPlayerUnitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoController()Lcom/metamoji/video/IAmvMarkerEditableController;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvMarkerEditableController;->getMarkerEditor()Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;->setMarkerListener(Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;)V

    .line 286
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnMoviePlayer;->release()V

    .line 287
    sget-object v0, Lcom/metamoji/un/video/UnVideoPlayerManager;->Companion:Lcom/metamoji/un/video/UnVideoPlayerManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoPlayerManager$Companion;->getPlayerLayer()Lcom/metamoji/un/video/UnVideoPlayerLayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnMoviePlayer;->getVideoPlayer()Lcom/metamoji/video/AmvPlayerUnitView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/metamoji/un/video/UnVideoPlayerLayer;->removePlayer(Lcom/metamoji/video/AmvPlayerUnitView;)V

    .line 288
    :cond_1
    iput-object v1, p1, Lcom/metamoji/un/video/UnVideoPlayerManager;->currentPlayer:Lcom/metamoji/un/video/UnMoviePlayer;

    .line 290
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final showMarkerPopupMenu(Lcom/metamoji/noteanytime/EditorActivity;DLandroid/view/View;I)V
    .locals 4

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/un/video/UnVideoPlayerManager$MarkerCommand;->REMOVE_MARKER:Lcom/metamoji/un/video/UnVideoPlayerManager$MarkerCommand;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Remove:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, v2, p2, p3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 423
    invoke-virtual {p4, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 424
    iget p3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, p5

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 425
    iget p3, p2, Landroid/graphics/Rect;->right:I

    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 426
    iget p3, p2, Landroid/graphics/Rect;->top:I

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 428
    sget p3, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {p1, p3}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/CustomMenuView;

    .line 429
    new-instance p3, Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener;

    invoke-direct {p3, p0}, Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener;-><init>(Lcom/metamoji/un/video/UnVideoPlayerManager;)V

    .line 430
    move-object p4, p3

    check-cast p4, Lcom/metamoji/ui/MenuEventListener;

    check-cast p3, Lcom/metamoji/ui/MenuCloseEventListener;

    invoke-virtual {p1, v0, p4, p3, p2}, Lcom/metamoji/ui/CustomMenuView;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 294
    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    new-instance v1, Lcom/metamoji/un/video/UnVideoPlayerManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/un/video/UnVideoPlayerManager$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/video/UnVideoPlayerManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoPlayerManager;->currentPlayer:Lcom/metamoji/un/video/UnMoviePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnMoviePlayer;->getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrentPlayer()Lcom/metamoji/un/video/UnMoviePlayer;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoPlayerManager;->currentPlayer:Lcom/metamoji/un/video/UnMoviePlayer;

    return-object v0
.end method

.method public final getDirection()Lcom/metamoji/un/video/IWvvChairmansDirection;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoPlayerManager;->direction:Lcom/metamoji/un/video/IWvvChairmansDirection;

    return-object v0
.end method

.method public final getPlayer(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/video/IAmvSource;Lcom/metamoji/un/video/IWvvChairmansDirection;)Lcom/metamoji/un/video/IUnMoviePlayer;
    .locals 3

    const-string/jumbo v0, "videoUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoPlayerManager;->currentPlayer:Lcom/metamoji/un/video/UnMoviePlayer;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/metamoji/un/video/UnMoviePlayer;->getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 258
    check-cast v0, Lcom/metamoji/un/video/IUnMoviePlayer;

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 261
    check-cast v0, Lcom/metamoji/un/video/IUnMoviePlayer;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/UnVideoPlayerManager;->releasePlayer(Lcom/metamoji/un/video/IUnMoviePlayer;)V

    .line 263
    :cond_1
    sget-object v0, Lcom/metamoji/un/video/UnVideoPlayerManager;->Companion:Lcom/metamoji/un/video/UnVideoPlayerManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoPlayerManager$Companion;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 265
    sget-object v2, Lcom/metamoji/un/video/UnMoviePlayer;->Companion:Lcom/metamoji/un/video/UnMoviePlayer$Companion;

    invoke-virtual {v2, p1, p2, v1, p3}, Lcom/metamoji/un/video/UnMoviePlayer$Companion;->createPlayer(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/video/IAmvSource;Landroid/content/Context;Lcom/metamoji/un/video/IWvvChairmansDirection;)Lcom/metamoji/un/video/UnMoviePlayer;

    move-result-object p2

    .line 266
    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoPlayerManager$Companion;->getPlayerLayer()Lcom/metamoji/un/video/UnVideoPlayerLayer;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/metamoji/un/video/UnMoviePlayer;->getVideoPlayer()Lcom/metamoji/video/AmvPlayerUnitView;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/metamoji/un/video/UnVideoPlayerLayer;->putPlayer(Lcom/metamoji/video/AmvPlayerUnitView;)V

    .line 267
    :cond_2
    iput-object p2, p0, Lcom/metamoji/un/video/UnVideoPlayerManager;->currentPlayer:Lcom/metamoji/un/video/UnMoviePlayer;

    .line 268
    invoke-virtual {p2}, Lcom/metamoji/un/video/UnMoviePlayer;->getVideoPlayer()Lcom/metamoji/video/AmvPlayerUnitView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoController()Lcom/metamoji/video/IAmvMarkerEditableController;

    move-result-object p3

    invoke-interface {p3}, Lcom/metamoji/video/IAmvMarkerEditableController;->getMarkerEditor()Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;

    move-result-object p3

    move-object v0, p0

    check-cast v0, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;

    invoke-interface {p3, v0}, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;->setMarkerListener(Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;)V

    .line 269
    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getMarkerManager()Lcom/metamoji/un/video/UnVideoMarkerManager;

    move-result-object p3

    move-object v0, p0

    check-cast v0, Lcom/metamoji/un/video/IUnVideoMarkerPresenter;

    invoke-virtual {p3, v0}, Lcom/metamoji/un/video/UnVideoMarkerManager;->setPresenter(Lcom/metamoji/un/video/IUnVideoMarkerPresenter;)V

    .line 270
    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object p3

    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getManipulationListener()Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/metamoji/nt/NtInteractiveEventManager;->addViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 271
    check-cast p2, Lcom/metamoji/un/video/IUnMoviePlayer;

    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public markerAdded(Lcom/metamoji/un/video/IUnVideoMarker;)V
    .locals 5

    const-string v0, "marker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoPlayerManager;->currentPlayer:Lcom/metamoji/un/video/UnMoviePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnMoviePlayer;->getVideoPlayer()Lcom/metamoji/video/AmvPlayerUnitView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoController()Lcom/metamoji/video/IAmvMarkerEditableController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvMarkerEditableController;->getMarkerEditor()Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/metamoji/un/video/IUnVideoMarker;->getTime()D

    move-result-wide v1

    const/16 p1, 0x3e8

    int-to-double v3, p1

    mul-double/2addr v1, v3

    const/4 p1, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;->addMarker(DLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public markerMoved(Lcom/metamoji/un/video/IUnVideoMarker;)V
    .locals 1

    const-string v0, "marker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    new-instance p1, Lkotlin/NotImplementedError;

    const-string v0, "moving marker is not supported."

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public markerRemoved(Lcom/metamoji/un/video/IUnVideoMarker;)V
    .locals 5

    const-string v0, "marker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoPlayerManager;->currentPlayer:Lcom/metamoji/un/video/UnMoviePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnMoviePlayer;->getVideoPlayer()Lcom/metamoji/video/AmvPlayerUnitView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoController()Lcom/metamoji/video/IAmvMarkerEditableController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvMarkerEditableController;->getMarkerEditor()Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/metamoji/un/video/IUnVideoMarker;->getTime()D

    move-result-wide v1

    const/16 p1, 0x3e8

    int-to-double v3, p1

    mul-double/2addr v1, v3

    const/4 p1, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;->removeMarker(DLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMarkerAdded(Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;DLjava/lang/Object;)V
    .locals 2

    const-string/jumbo v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoPlayerManager;->getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getMarkerManager()Lcom/metamoji/un/video/UnVideoMarkerManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/un/video/UnVideoMarkerManager;->addMarker(D)V

    :cond_0
    return-void
.end method

.method public onMarkerContextMenu(Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;DFLjava/lang/Object;)V
    .locals 6

    const-string/jumbo p5, "sender"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    instance-of v0, p5, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    check-cast p5, Lcom/metamoji/noteanytime/EditorActivity;

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    move-object v1, p5

    if-nez v1, :cond_1

    return-void

    .line 364
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;->getView()Landroid/view/View;

    move-result-object v4

    invoke-static {p4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/video/UnVideoPlayerManager;->showMarkerPopupMenu(Lcom/metamoji/noteanytime/EditorActivity;DLandroid/view/View;I)V

    return-void
.end method

.method public onMarkerRemoved(Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;DLjava/lang/Object;)V
    .locals 2

    const-string/jumbo v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoPlayerManager;->getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getMarkerManager()Lcom/metamoji/un/video/UnVideoMarkerManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/un/video/UnVideoMarkerManager;->removeMarker(D)V

    :cond_0
    return-void
.end method

.method public final releasePlayer(Lcom/metamoji/un/video/IUnMoviePlayer;)V
    .locals 2

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    new-instance v1, Lcom/metamoji/un/video/UnVideoPlayerManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/metamoji/un/video/UnVideoPlayerManager$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/video/IUnMoviePlayer;Lcom/metamoji/un/video/UnVideoPlayerManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final requestRefreshPlayer(Landroid/content/Context;Lcom/metamoji/un/video/UnVideoPlayerLayer;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoPlayerManager;->currentPlayer:Lcom/metamoji/un/video/UnMoviePlayer;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/metamoji/un/video/UnMoviePlayer;->getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {v0, p1}, Lcom/metamoji/un/video/UnMoviePlayer;->refreshPlayer(Landroid/content/Context;)Lcom/metamoji/video/AmvPlayerUnitView;

    move-result-object p1

    .line 314
    invoke-virtual {p2, p1}, Lcom/metamoji/un/video/UnVideoPlayerLayer;->putPlayer(Lcom/metamoji/video/AmvPlayerUnitView;)V

    .line 315
    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoUnit;->onPlayerRestoredByAndroid()V

    .line 316
    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoUnit;->adjustPlayerPosition()V

    :cond_1
    return-void
.end method

.method public final savePlayerState(ZJ)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoPlayerManager;->currentPlayer:Lcom/metamoji/un/video/UnMoviePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/un/video/UnMoviePlayer;->savePlayerState(ZJ)V

    :cond_0
    return-void
.end method

.method public final setCurrentPlayer(Lcom/metamoji/un/video/UnMoviePlayer;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoPlayerManager;->currentPlayer:Lcom/metamoji/un/video/UnMoviePlayer;

    return-void
.end method

.method public final setDirection(Lcom/metamoji/un/video/IWvvChairmansDirection;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoPlayerManager;->direction:Lcom/metamoji/un/video/IWvvChairmansDirection;

    return-void
.end method
