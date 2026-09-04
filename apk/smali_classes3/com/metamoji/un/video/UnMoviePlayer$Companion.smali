.class public final Lcom/metamoji/un/video/UnMoviePlayer$Companion;
.super Ljava/lang/Object;
.source "UnVideoPlayerManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnMoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnMoviePlayer$Companion;",
        "",
        "<init>",
        "()V",
        "LISTENER_NAME",
        "",
        "createPlayer",
        "Lcom/metamoji/un/video/UnMoviePlayer;",
        "activeUnit",
        "Lcom/metamoji/un/video/UnVideoUnit;",
        "source",
        "Lcom/metamoji/video/IAmvSource;",
        "context",
        "Landroid/content/Context;",
        "direction",
        "Lcom/metamoji/un/video/IWvvChairmansDirection;",
        "createVideoPlayer",
        "Lcom/metamoji/video/AmvPlayerUnitView;",
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
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/video/UnMoviePlayer$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createVideoPlayer(Lcom/metamoji/un/video/UnMoviePlayer$Companion;Landroid/content/Context;)Lcom/metamoji/video/AmvPlayerUnitView;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnMoviePlayer$Companion;->createVideoPlayer(Landroid/content/Context;)Lcom/metamoji/video/AmvPlayerUnitView;

    move-result-object p0

    return-object p0
.end method

.method private final createVideoPlayer(Landroid/content/Context;)Lcom/metamoji/video/AmvPlayerUnitView;
    .locals 6

    .line 33
    new-instance v0, Lcom/metamoji/video/AmvPlayerUnitView;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/video/AmvPlayerUnitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getFrameVisibilityChanged()Lcom/metamoji/lib/utils/FuncyListener1;

    move-result-object p1

    new-instance v1, Lcom/metamoji/un/video/UnMoviePlayer$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/metamoji/un/video/UnMoviePlayer$Companion$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v1}, Lcom/metamoji/lib/utils/FuncyListener1;->set(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method static final createVideoPlayer$lambda$2$lambda$1(Z)Lkotlin/Unit;
    .locals 2

    .line 35
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "MMJUnVideoUnit_ShowThumbnails"

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 36
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final createPlayer(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/video/IAmvSource;Landroid/content/Context;Lcom/metamoji/un/video/IWvvChairmansDirection;)Lcom/metamoji/un/video/UnMoviePlayer;
    .locals 7

    const-string v0, "activeUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {p2}, Lcom/metamoji/video/IAmvSource;->addRef()V

    .line 27
    new-instance v1, Lcom/metamoji/un/video/UnMoviePlayer;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/video/UnMoviePlayer;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/video/IAmvSource;Landroid/content/Context;Lcom/metamoji/un/video/IWvvChairmansDirection;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    invoke-static {v1}, Lcom/metamoji/un/video/UnMoviePlayer;->access$initialLoad(Lcom/metamoji/un/video/UnMoviePlayer;)V

    return-object v1
.end method
