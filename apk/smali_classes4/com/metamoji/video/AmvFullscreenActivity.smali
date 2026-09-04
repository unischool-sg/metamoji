.class public final Lcom/metamoji/video/AmvFullscreenActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AmvFullscreenActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvFullscreenActivity$Action;,
        Lcom/metamoji/video/AmvFullscreenActivity$Companion;,
        Lcom/metamoji/video/AmvFullscreenActivity$State;,
        Lcom/metamoji/video/AmvFullscreenActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAmvFullscreenActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmvFullscreenActivity.kt\ncom/metamoji/video/AmvFullscreenActivity\n+ 2 UtCompat.kt\ncom/metamoji/lib/utils/UtCompat$Companion\n*L\n1#1,482:1\n88#2:483\n*S KotlinDebug\n*F\n+ 1 AmvFullscreenActivity.kt\ncom/metamoji/video/AmvFullscreenActivity\n*L\n258#1:483\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 ;2\u00020\u0001:\u0003:;<B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0008\u0010\u001e\u001a\u00020\u001bH\u0014J\u0012\u0010\u001f\u001a\u00020\u001b2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020!H\u0002J\u0008\u0010#\u001a\u00020\u001bH\u0003J\u0008\u0010/\u001a\u00020\u001bH\u0014J\u0008\u00100\u001a\u00020\u001bH\u0014J\u0008\u00101\u001a\u00020\u001bH\u0014J\u0008\u00102\u001a\u00020\u001bH\u0014J\u0008\u00103\u001a\u00020\u001bH\u0014J\u0008\u00104\u001a\u00020\u001bH\u0002J\u0008\u00105\u001a\u00020\u001bH\u0002J\u0018\u00106\u001a\u00020\u001b2\u0006\u00107\u001a\u00020\u00072\u0006\u00108\u001a\u000209H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R!\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u0012\u0004\u0008\u000f\u0010\u0003\u001a\u0004\u0008\u0010\u0010\u0011R!\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0013\u0012\u0004\u0008\u0016\u0010\u0003\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010$\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u0013\u001a\u0004\u0008&\u0010\'R\u001b\u0010)\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\u0013\u001a\u0004\u0008*\u0010\'R\u001b\u0010,\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010\u0013\u001a\u0004\u0008-\u0010\'\u00a8\u0006="
    }
    d2 = {
        "Lcom/metamoji/video/AmvFullscreenActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "mSource",
        "Lcom/metamoji/video/IAmvSource;",
        "closing",
        "",
        "requestPinP",
        "reloadingPinP",
        "isPinP",
        "receiver",
        "Landroid/content/BroadcastReceiver;",
        "fsa_player",
        "Lcom/metamoji/video/AmvExoVideoPlayer;",
        "getFsa_player$annotations",
        "getFsa_player",
        "()Lcom/metamoji/video/AmvExoVideoPlayer;",
        "fsa_player$delegate",
        "Lkotlin/Lazy;",
        "fsa_root",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "getFsa_root$annotations",
        "getFsa_root",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "fsa_root$delegate",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "initWithIntent",
        "enterPinP",
        "playAction",
        "Landroid/app/RemoteAction;",
        "getPlayAction",
        "()Landroid/app/RemoteAction;",
        "playAction$delegate",
        "pauseAction",
        "getPauseAction",
        "pauseAction$delegate",
        "seekTopAction",
        "getSeekTopAction",
        "seekTopAction$delegate",
        "onRestart",
        "onStart",
        "onResume",
        "onPause",
        "onStop",
        "onEnterPinP",
        "onExitPinP",
        "onPictureInPictureModeChanged",
        "isInPictureInPictureMode",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "State",
        "Companion",
        "Action",
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


# static fields
.field private static final ACTION_TYPE_KEY:Ljava/lang/String; = "ActionType"

.field public static final Companion:Lcom/metamoji/video/AmvFullscreenActivity$Companion;

.field private static final INTENT_NAME:Ljava/lang/String; = "PlayVideo"

.field public static final KEY_CLIP_END:Ljava/lang/String; = "end"

.field public static final KEY_CLIP_START:Ljava/lang/String; = "start"

.field public static final KEY_PINP:Ljava/lang/String; = "pinp"

.field public static final KEY_PLAYING:Ljava/lang/String; = "playing"

.field public static final KEY_POSITION:Ljava/lang/String; = "position"

.field public static final KEY_SOURCE:Ljava/lang/String; = "source"

.field public static final KEY_VIDEO_HEIGHT:Ljava/lang/String; = "videoHeight"

.field public static final KEY_VIDEO_WIDTH:Ljava/lang/String; = "videoWidth"

.field private static final activityState:Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;

.field private static final handlerName:Ljava/lang/String; = "fsa"

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;

.field private static final onResultListener:Lcom/metamoji/lib/utils/Funcies1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Funcies1<",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final stateListener:Lcom/metamoji/lib/utils/Funcies2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Funcies2<",
            "Lcom/metamoji/video/AmvFullscreenActivity$State;",
            "Lcom/metamoji/video/IAmvSource;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private closing:Z

.field private final fsa_player$delegate:Lkotlin/Lazy;

.field private final fsa_root$delegate:Lkotlin/Lazy;

.field private isPinP:Z

.field private mSource:Lcom/metamoji/video/IAmvSource;

.field private final pauseAction$delegate:Lkotlin/Lazy;

.field private final playAction$delegate:Lkotlin/Lazy;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private reloadingPinP:Z

.field private requestPinP:Z

.field private final seekTopAction$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/video/AmvFullscreenActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/video/AmvFullscreenActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->Companion:Lcom/metamoji/video/AmvFullscreenActivity$Companion;

    .line 44
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->logger:Lcom/metamoji/lib/utils/UtLog;

    .line 63
    new-instance v0, Lcom/metamoji/lib/utils/Funcies1;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/Funcies1;-><init>()V

    sput-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->onResultListener:Lcom/metamoji/lib/utils/Funcies1;

    .line 83
    new-instance v0, Lcom/metamoji/lib/utils/Funcies2;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/Funcies2;-><init>()V

    sput-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->stateListener:Lcom/metamoji/lib/utils/Funcies2;

    .line 129
    new-instance v0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;

    invoke-direct {v0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;-><init>()V

    sput-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->activityState:Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 152
    new-instance v0, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/AmvFullscreenActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->fsa_player$delegate:Lkotlin/Lazy;

    .line 156
    new-instance v0, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/video/AmvFullscreenActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->fsa_root$delegate:Lkotlin/Lazy;

    .line 301
    new-instance v0, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/video/AmvFullscreenActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->playAction$delegate:Lkotlin/Lazy;

    .line 316
    new-instance v0, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/video/AmvFullscreenActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->pauseAction$delegate:Lkotlin/Lazy;

    .line 331
    new-instance v0, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/video/AmvFullscreenActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->seekTopAction$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getActivityState$cp()Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;
    .locals 1

    .line 33
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->activityState:Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;

    return-object v0
.end method

.method public static final synthetic access$getFsa_player(Lcom/metamoji/video/AmvFullscreenActivity;)Lcom/metamoji/video/AmvExoVideoPlayer;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getFsa_player()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 33
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$getMSource$p(Lcom/metamoji/video/AmvFullscreenActivity;)Lcom/metamoji/video/IAmvSource;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->mSource:Lcom/metamoji/video/IAmvSource;

    return-object p0
.end method

.method public static final synthetic access$getOnResultListener$cp()Lcom/metamoji/lib/utils/Funcies1;
    .locals 1

    .line 33
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->onResultListener:Lcom/metamoji/lib/utils/Funcies1;

    return-object v0
.end method

.method public static final synthetic access$getStateListener$cp()Lcom/metamoji/lib/utils/Funcies2;
    .locals 1

    .line 33
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->stateListener:Lcom/metamoji/lib/utils/Funcies2;

    return-object v0
.end method

.method private final enterPinP()V
    .locals 10

    .line 280
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getAllowPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 281
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "videoWidth"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 282
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "videoHeight"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 283
    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v0, v1}, Landroid/util/Rational;-><init>(II)V

    .line 285
    invoke-virtual {v3}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {v3}, Landroid/util/Rational;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Landroid/util/Rational;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v3}, Landroid/util/Rational;->floatValue()F

    move-result v0

    float-to-double v4, v0

    const-wide v6, 0x40031eb851eb851fL    # 2.39

    cmpl-double v0, v4, v6

    const/16 v4, 0x64

    const/16 v5, 0xef

    if-lez v0, :cond_1

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v5, v4}, Landroid/util/Rational;-><init>(II)V

    goto :goto_1

    .line 287
    :cond_1
    invoke-virtual {v3}, Landroid/util/Rational;->floatValue()F

    move-result v0

    float-to-double v6, v0

    const-wide v8, 0x3fdac73ae9819b50L

    cmpg-double v0, v6, v8

    if-gez v0, :cond_3

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    goto :goto_1

    .line 285
    :cond_2
    :goto_0
    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v1, v1}, Landroid/util/Rational;-><init>(II)V

    .line 290
    :cond_3
    :goto_1
    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    .line 291
    invoke-virtual {v0, v3}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v0

    const/4 v3, 0x3

    .line 292
    new-array v3, v3, [Landroid/app/RemoteAction;

    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getPlayAction()Landroid/app/RemoteAction;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getPauseAction()Landroid/app/RemoteAction;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getSeekTopAction()Landroid/app/RemoteAction;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PictureInPictureParams$Builder;->setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    .line 294
    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvFullscreenActivity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    :cond_4
    return-void
.end method

.method static final fsa_player_delegate$lambda$0(Lcom/metamoji/video/AmvFullscreenActivity;)Lcom/metamoji/video/AmvExoVideoPlayer;
    .locals 1

    .line 153
    sget v0, Lcom/metamoji/video/R$id;->fsa_player:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvFullscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/AmvExoVideoPlayer;

    return-object p0
.end method

.method static final fsa_root_delegate$lambda$1(Lcom/metamoji/video/AmvFullscreenActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 157
    sget v0, Lcom/metamoji/video/R$id;->fsa_root:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvFullscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method private final getFsa_player()Lcom/metamoji/video/AmvExoVideoPlayer;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->fsa_player$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/video/AmvExoVideoPlayer;

    return-object v0
.end method

.method private static synthetic getFsa_player$annotations()V
    .locals 0

    return-void
.end method

.method private final getFsa_root()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->fsa_root$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method private static synthetic getFsa_root$annotations()V
    .locals 0

    return-void
.end method

.method private final getPauseAction()Landroid/app/RemoteAction;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->pauseAction$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    return-object v0
.end method

.method private final getPlayAction()Landroid/app/RemoteAction;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->playAction$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    return-object v0
.end method

.method private final getSeekTopAction()Landroid/app/RemoteAction;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->seekTopAction$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    return-object v0
.end method

.method private final initWithIntent(Landroid/content/Intent;)V
    .locals 11

    .line 258
    sget-object v0, Lcom/metamoji/lib/utils/UtCompat;->Companion:Lcom/metamoji/lib/utils/UtCompat$Companion;

    const-string v1, "source"

    .line 483
    const-class v2, Lcom/metamoji/video/IAmvSource;

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/lib/utils/UtCompat$Companion;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    .line 258
    check-cast v0, Lcom/metamoji/video/IAmvSource;

    .line 259
    const-string v1, "pinp"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/video/AmvFullscreenActivity;->requestPinP:Z

    if-eqz v0, :cond_2

    .line 261
    const-string v1, "playing"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 262
    const-string v2, "position"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 263
    const-string v2, "start"

    const-wide/16 v7, -0x1

    invoke-virtual {p1, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 264
    const-string v2, "end"

    invoke-virtual {p1, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long p1, v9, v3

    if-ltz p1, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getFsa_player()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object p1

    new-instance v2, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    invoke-direct {v2, v9, v10, v7, v8}, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;-><init>(JJ)V

    invoke-virtual {p1, v2}, Lcom/metamoji/video/AmvExoVideoPlayer;->setClip(Lcom/metamoji/video/IAmvVideoPlayer$Clipping;)V

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/metamoji/video/AmvFullscreenActivity;->mSource:Lcom/metamoji/video/IAmvSource;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/metamoji/video/IAmvSource;->release()V

    .line 269
    :cond_1
    iput-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->mSource:Lcom/metamoji/video/IAmvSource;

    .line 270
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getFsa_player()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v5, v6}, Lcom/metamoji/video/AmvExoVideoPlayer;->setSource(Lcom/metamoji/video/IAmvSource;ZJ)V

    :cond_2
    return-void
.end method

.method static final onCreate$lambda$2(Lcom/metamoji/video/AmvFullscreenActivity;Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-boolean p1, p0, Lcom/metamoji/video/AmvFullscreenActivity;->isPinP:Z

    if-eqz p1, :cond_1

    .line 173
    sget-object p1, Lcom/metamoji/video/AmvFullscreenActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 178
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getPlayAction()Landroid/app/RemoteAction;

    move-result-object p1

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 179
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getPauseAction()Landroid/app/RemoteAction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 182
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getPlayAction()Landroid/app/RemoteAction;

    move-result-object p1

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/app/RemoteAction;->setShouldShowIcon(Z)V

    .line 183
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getPauseAction()Landroid/app/RemoteAction;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/RemoteAction;->setShouldShowIcon(Z)V

    .line 186
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreate$lambda$3(Lcom/metamoji/video/AmvFullscreenActivity;Landroid/view/View;)V
    .locals 0

    .line 204
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->finishAndRemoveTask()V

    return-void
.end method

.method static final onCreate$lambda$5$lambda$4(Lcom/metamoji/video/AmvFullscreenActivity;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 214
    iput-boolean p1, p0, Lcom/metamoji/video/AmvFullscreenActivity;->requestPinP:Z

    .line 215
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->enterPinP()V

    return-void
.end method

.method private final onEnterPinP()V
    .locals 3

    .line 420
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->activityState:Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;

    sget-object v1, Lcom/metamoji/video/AmvFullscreenActivity$State;->PINP:Lcom/metamoji/video/AmvFullscreenActivity$State;

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->changeState(Lcom/metamoji/video/AmvFullscreenActivity$State;)V

    .line 421
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getFsa_player()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvExoVideoPlayer;->setShowDefaultController(Z)V

    .line 422
    new-instance v0, Lcom/metamoji/video/AmvFullscreenActivity$onEnterPinP$1;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvFullscreenActivity$onEnterPinP$1;-><init>(Lcom/metamoji/video/AmvFullscreenActivity;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 436
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "PlayVideo"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/video/AmvFullscreenActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final onExitPinP()V
    .locals 4

    .line 443
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->activityState:Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;

    sget-object v1, Lcom/metamoji/video/AmvFullscreenActivity$State;->FULL:Lcom/metamoji/video/AmvFullscreenActivity$State;

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->changeState(Lcom/metamoji/video/AmvFullscreenActivity$State;)V

    .line 444
    iget-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    const-string v0, "receiver"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvFullscreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 445
    iget-boolean v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->closing:Z

    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->finishAndRemoveTask()V

    return-void

    .line 451
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getFsa_player()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvExoVideoPlayer;->setShowDefaultController(Z)V

    .line 452
    iget-boolean v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->reloadingPinP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 457
    iput-boolean v1, p0, Lcom/metamoji/video/AmvFullscreenActivity;->reloadingPinP:Z

    .line 458
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvFullscreenActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 463
    :cond_2
    iput-boolean v1, p0, Lcom/metamoji/video/AmvFullscreenActivity;->requestPinP:Z

    return-void
.end method

.method static final onExitPinP$lambda$9(Lcom/metamoji/video/AmvFullscreenActivity;)V
    .locals 0

    .line 459
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->enterPinP()V

    return-void
.end method

.method static final pauseAction_delegate$lambda$7(Lcom/metamoji/video/AmvFullscreenActivity;)Landroid/app/RemoteAction;
    .locals 6

    .line 319
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/metamoji/video/R$drawable;->ic_pause:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const-string v2, "createWithResource(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    sget v2, Lcom/metamoji/video/R$string;->pause:I

    invoke-virtual {p0, v2}, Lcom/metamoji/video/AmvFullscreenActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v2, "getText(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    sget-object v2, Lcom/metamoji/video/AmvFullscreenActivity$Action;->PAUSE:Lcom/metamoji/video/AmvFullscreenActivity$Action;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvFullscreenActivity$Action;->getCode()I

    move-result v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "PlayVideo"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/metamoji/video/AmvFullscreenActivity$Action;->PAUSE:Lcom/metamoji/video/AmvFullscreenActivity$Action;

    invoke-virtual {v4}, Lcom/metamoji/video/AmvFullscreenActivity$Action;->getCode()I

    move-result v4

    const-string v5, "ActionType"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 322
    new-instance v2, Landroid/app/RemoteAction;

    invoke-direct {v2, v1, p0, p0, v0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v2
.end method

.method static final playAction_delegate$lambda$6(Lcom/metamoji/video/AmvFullscreenActivity;)Landroid/app/RemoteAction;
    .locals 6

    .line 304
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/metamoji/video/R$drawable;->ic_play:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const-string v2, "createWithResource(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    sget v2, Lcom/metamoji/video/R$string;->play:I

    invoke-virtual {p0, v2}, Lcom/metamoji/video/AmvFullscreenActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v2, "getText(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    sget-object v2, Lcom/metamoji/video/AmvFullscreenActivity$Action;->PLAY:Lcom/metamoji/video/AmvFullscreenActivity$Action;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvFullscreenActivity$Action;->getCode()I

    move-result v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "PlayVideo"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/metamoji/video/AmvFullscreenActivity$Action;->PLAY:Lcom/metamoji/video/AmvFullscreenActivity$Action;

    invoke-virtual {v4}, Lcom/metamoji/video/AmvFullscreenActivity$Action;->getCode()I

    move-result v4

    const-string v5, "ActionType"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 307
    new-instance v2, Landroid/app/RemoteAction;

    invoke-direct {v2, v1, p0, p0, v0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v2
.end method

.method static final seekTopAction_delegate$lambda$8(Lcom/metamoji/video/AmvFullscreenActivity;)Landroid/app/RemoteAction;
    .locals 6

    .line 334
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/metamoji/video/R$drawable;->ic_back:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const-string v2, "createWithResource(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    sget v2, Lcom/metamoji/video/R$string;->seekTop:I

    invoke-virtual {p0, v2}, Lcom/metamoji/video/AmvFullscreenActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v2, "getText(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    sget-object v2, Lcom/metamoji/video/AmvFullscreenActivity$Action;->SEEK_TOP:Lcom/metamoji/video/AmvFullscreenActivity$Action;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvFullscreenActivity$Action;->getCode()I

    move-result v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "PlayVideo"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/metamoji/video/AmvFullscreenActivity$Action;->SEEK_TOP:Lcom/metamoji/video/AmvFullscreenActivity$Action;

    invoke-virtual {v4}, Lcom/metamoji/video/AmvFullscreenActivity$Action;->getCode()I

    move-result v4

    const-string v5, "ActionType"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 337
    new-instance v2, Landroid/app/RemoteAction;

    invoke-direct {v2, v1, p0, p0, v0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 164
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 165
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    sget-object p1, Lcom/metamoji/video/AmvFullscreenActivity;->activityState:Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;

    invoke-virtual {p1, p0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->onCreated(Lcom/metamoji/video/AmvFullscreenActivity;)V

    .line 168
    sget p1, Lcom/metamoji/video/R$layout;->activity_amv_fullscreen:I

    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvFullscreenActivity;->setContentView(I)V

    .line 170
    sget-object p1, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvSettings;->getAllowPictureInPicture()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getFsa_player()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->getPlayerStateChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;

    move-result-object p1

    new-instance v1, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/video/AmvFullscreenActivity;)V

    const-string v2, "fsa"

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "getIntent(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvFullscreenActivity;->initWithIntent(Landroid/content/Intent;)V

    .line 191
    iget-boolean p1, p0, Lcom/metamoji/video/AmvFullscreenActivity;->requestPinP:Z

    if-eqz p1, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->enterPinP()V

    .line 199
    :cond_1
    sget p1, Lcom/metamoji/video/R$id;->amv_ctr_close_button:I

    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvFullscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    new-instance v1, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/video/AmvFullscreenActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_2
    sget p1, Lcom/metamoji/video/R$id;->amv_ctr_pinp_button:I

    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvFullscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    .line 211
    iget-boolean v1, p0, Lcom/metamoji/video/AmvFullscreenActivity;->requestPinP:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvSettings;->getAllowPictureInPicture()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 213
    new-instance v1, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvFullscreenActivity$$ExternalSyntheticLambda8;-><init>(Lcom/metamoji/video/AmvFullscreenActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    .line 218
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 221
    :cond_4
    :goto_0
    const-string p1, "-- exit"

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 228
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 229
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->activityState:Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->onDestroy()V

    .line 230
    iget-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->mSource:Lcom/metamoji/video/IAmvSource;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvSource;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->mSource:Lcom/metamoji/video/IAmvSource;

    .line 232
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getFsa_player()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvExoVideoPlayer;->getPlayerStateChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;

    move-result-object v1

    const-string v2, "fsa"

    invoke-virtual {v1, v2}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;->remove(Ljava/lang/Object;)V

    .line 233
    sget-object v1, Lcom/metamoji/video/AmvFullscreenActivity;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 242
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 243
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvFullscreenActivity;->setIntent(Landroid/content/Intent;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvFullscreenActivity;->initWithIntent(Landroid/content/Intent;)V

    .line 247
    iget-boolean p1, p0, Lcom/metamoji/video/AmvFullscreenActivity;->requestPinP:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/metamoji/video/AmvFullscreenActivity;->isPinP:Z

    if-eqz p1, :cond_0

    .line 248
    iput-boolean v2, p0, Lcom/metamoji/video/AmvFullscreenActivity;->reloadingPinP:Z

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 374
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 375
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "newConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->logger:Lcom/metamoji/lib/utils/UtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pinp="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 473
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 474
    iput-boolean p1, p0, Lcom/metamoji/video/AmvFullscreenActivity;->isPinP:Z

    if-nez p1, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->onExitPinP()V

    return-void

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->onEnterPinP()V

    return-void
.end method

.method protected onRestart()V
    .locals 3

    .line 344
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 345
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 355
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 356
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 359
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    :cond_1
    return-void

    .line 363
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getFsa_root()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/16 v1, 0x1307

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 349
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 350
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 392
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 393
    iput-boolean v2, p0, Lcom/metamoji/video/AmvFullscreenActivity;->closing:Z

    .line 394
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getFsa_player()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvExoVideoPlayer;->isPlayingOrReservedToPlay()Z

    move-result v1

    const-string v2, "playing"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getFsa_player()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvExoVideoPlayer;->getSeekPosition()J

    move-result-wide v1

    const-string v3, "position"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 396
    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getFsa_player()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->pause()V

    .line 397
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 398
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->onResultListener:Lcom/metamoji/lib/utils/Funcies1;

    invoke-virtual {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "getIntent(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/Funcies1;->invoke(Ljava/lang/Object;)V

    .line 399
    iget-boolean v0, p0, Lcom/metamoji/video/AmvFullscreenActivity;->isPinP:Z

    if-nez v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFullscreenActivity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method
