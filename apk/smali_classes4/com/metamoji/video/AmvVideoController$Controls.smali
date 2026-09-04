.class final Lcom/metamoji/video/AmvVideoController$Controls;
.super Ljava/lang/Object;
.source "AmvVideoController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Controls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvVideoController$Controls$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAmvVideoController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmvVideoController.kt\ncom/metamoji/video/AmvVideoController$Controls\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,763:1\n14060#2,2:764\n14060#2,2:766\n*S KotlinDebug\n*F\n+ 1 AmvVideoController.kt\ncom/metamoji/video/AmvVideoController$Controls\n*L\n171#1:764,2\n226#1:766,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010M\u001a\u00020N*\u00020\u000b2\u0006\u0010O\u001a\u00020PJ\u0006\u0010Q\u001a\u00020NJ\u0006\u0010R\u001a\u00020NJ\u0010\u0010S\u001a\u00020N2\u0008\u0008\u0002\u0010T\u001a\u00020UJ\u0006\u0010V\u001a\u00020NJ\u0006\u0010W\u001a\u00020NJ\u0006\u0010X\u001a\u00020NJ\u0006\u0010Y\u001a\u00020NR\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000f\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\t\u001a\u0004\u0008\u0010\u0010\rR\u001b\u0010\u0012\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\t\u001a\u0004\u0008\u0013\u0010\rR\u001b\u0010\u0015\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\t\u001a\u0004\u0008\u0016\u0010\rR\u001b\u0010\u0018\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\t\u001a\u0004\u0008\u0019\u0010\rR\u001b\u0010\u001b\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\t\u001a\u0004\u0008\u001c\u0010\rR\u001b\u0010\u001e\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\t\u001a\u0004\u0008\u001f\u0010\rR\u001b\u0010!\u001a\u00020\"8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\t\u001a\u0004\u0008#\u0010$R\u001b\u0010&\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\t\u001a\u0004\u0008\'\u0010\rR\u001b\u0010)\u001a\u00020*8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\t\u001a\u0004\u0008+\u0010,R\u001b\u0010.\u001a\u00020/8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010\t\u001a\u0004\u00080\u00101R\u001b\u00103\u001a\u0002048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u0010\t\u001a\u0004\u00085\u00106R\u001b\u00108\u001a\u0002098FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010\t\u001a\u0004\u0008:\u0010;R\u001d\u0010=\u001a\u0004\u0018\u00010>8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008A\u0010\t\u001a\u0004\u0008?\u0010@R\u001d\u0010B\u001a\u0004\u0018\u00010>8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010\t\u001a\u0004\u0008C\u0010@R\u001d\u0010E\u001a\u0004\u0018\u00010>8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008G\u0010\t\u001a\u0004\u0008F\u0010@R\u001d\u0010H\u001a\u0004\u0018\u00010>8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010\t\u001a\u0004\u0008I\u0010@R\u0011\u0010K\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010\r\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/metamoji/video/AmvVideoController$Controls;",
        "",
        "<init>",
        "(Lcom/metamoji/video/AmvVideoController;)V",
        "root",
        "Landroid/view/ViewGroup;",
        "getRoot",
        "()Landroid/view/ViewGroup;",
        "root$delegate",
        "Lkotlin/Lazy;",
        "playButton",
        "Landroid/widget/ImageButton;",
        "getPlayButton",
        "()Landroid/widget/ImageButton;",
        "playButton$delegate",
        "playButtonMini",
        "getPlayButtonMini",
        "playButtonMini$delegate",
        "backButton",
        "getBackButton",
        "backButton$delegate",
        "forwardButton",
        "getForwardButton",
        "forwardButton$delegate",
        "markButton",
        "getMarkButton",
        "markButton$delegate",
        "pinpButton",
        "getPinpButton",
        "pinpButton$delegate",
        "fullButton",
        "getFullButton",
        "fullButton$delegate",
        "buttonsGroup",
        "Landroid/widget/LinearLayout;",
        "getButtonsGroup",
        "()Landroid/widget/LinearLayout;",
        "buttonsGroup$delegate",
        "showFramesButton",
        "getShowFramesButton",
        "showFramesButton$delegate",
        "markerView",
        "Lcom/metamoji/video/AmvMarkerView;",
        "getMarkerView",
        "()Lcom/metamoji/video/AmvMarkerView;",
        "markerView$delegate",
        "frameList",
        "Lcom/metamoji/video/AmvFrameListView;",
        "getFrameList",
        "()Lcom/metamoji/video/AmvFrameListView;",
        "frameList$delegate",
        "slider",
        "Lcom/metamoji/video/AmvSlider;",
        "getSlider",
        "()Lcom/metamoji/video/AmvSlider;",
        "slider$delegate",
        "counterBar",
        "Landroid/widget/TextView;",
        "getCounterBar",
        "()Landroid/widget/TextView;",
        "counterBar$delegate",
        "drPlay",
        "Landroid/graphics/drawable/Drawable;",
        "getDrPlay",
        "()Landroid/graphics/drawable/Drawable;",
        "drPlay$delegate",
        "drPause",
        "getDrPause",
        "drPause$delegate",
        "drShowFrameOff",
        "getDrShowFrameOff",
        "drShowFrameOff$delegate",
        "drShowFrameOn",
        "getDrShowFrameOn",
        "drShowFrameOn$delegate",
        "actualPlayButton",
        "getActualPlayButton",
        "enable",
        "",
        "enabled",
        "",
        "updateReadOnly",
        "updateShowingFrame",
        "updatePinPButton",
        "state",
        "Lcom/metamoji/video/AmvFullscreenActivity$State;",
        "updatePlayerPrepared",
        "updatePlaying",
        "updateCounter",
        "initialize",
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
.field private final backButton$delegate:Lkotlin/Lazy;

.field private final buttonsGroup$delegate:Lkotlin/Lazy;

.field private final counterBar$delegate:Lkotlin/Lazy;

.field private final drPause$delegate:Lkotlin/Lazy;

.field private final drPlay$delegate:Lkotlin/Lazy;

.field private final drShowFrameOff$delegate:Lkotlin/Lazy;

.field private final drShowFrameOn$delegate:Lkotlin/Lazy;

.field private final forwardButton$delegate:Lkotlin/Lazy;

.field private final frameList$delegate:Lkotlin/Lazy;

.field private final fullButton$delegate:Lkotlin/Lazy;

.field private final markButton$delegate:Lkotlin/Lazy;

.field private final markerView$delegate:Lkotlin/Lazy;

.field private final pinpButton$delegate:Lkotlin/Lazy;

.field private final playButton$delegate:Lkotlin/Lazy;

.field private final playButtonMini$delegate:Lkotlin/Lazy;

.field private final root$delegate:Lkotlin/Lazy;

.field private final showFramesButton$delegate:Lkotlin/Lazy;

.field private final slider$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/metamoji/video/AmvVideoController;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvVideoController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->root$delegate:Lkotlin/Lazy;

    .line 55
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda13;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->playButton$delegate:Lkotlin/Lazy;

    .line 58
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda14;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->playButtonMini$delegate:Lkotlin/Lazy;

    .line 61
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda15;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->backButton$delegate:Lkotlin/Lazy;

    .line 64
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda16;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->forwardButton$delegate:Lkotlin/Lazy;

    .line 67
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda17;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->markButton$delegate:Lkotlin/Lazy;

    .line 70
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda18;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->pinpButton$delegate:Lkotlin/Lazy;

    .line 73
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda19;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->fullButton$delegate:Lkotlin/Lazy;

    .line 76
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda20;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->buttonsGroup$delegate:Lkotlin/Lazy;

    .line 79
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda21;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->showFramesButton$delegate:Lkotlin/Lazy;

    .line 82
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->markerView$delegate:Lkotlin/Lazy;

    .line 85
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->frameList$delegate:Lkotlin/Lazy;

    .line 88
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->slider$delegate:Lkotlin/Lazy;

    .line 91
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->counterBar$delegate:Lkotlin/Lazy;

    .line 94
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda8;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->drPlay$delegate:Lkotlin/Lazy;

    .line 97
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda9;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->drPause$delegate:Lkotlin/Lazy;

    .line 100
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda10;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->drShowFrameOff$delegate:Lkotlin/Lazy;

    .line 103
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda12;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->drShowFrameOn$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final backButton_delegate$lambda$3(Lcom/metamoji/video/AmvVideoController;)Landroid/widget/ImageButton;
    .locals 1

    .line 62
    sget v0, Lcom/metamoji/video/R$id;->vct_backButton:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method static final buttonsGroup_delegate$lambda$8(Lcom/metamoji/video/AmvVideoController;)Landroid/widget/LinearLayout;
    .locals 1

    .line 77
    sget v0, Lcom/metamoji/video/R$id;->vct_buttons:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static final counterBar_delegate$lambda$13(Lcom/metamoji/video/AmvVideoController;)Landroid/widget/TextView;
    .locals 1

    .line 92
    sget v0, Lcom/metamoji/video/R$id;->vct_counterBar:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method static final drPause_delegate$lambda$15(Lcom/metamoji/video/AmvVideoController;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/metamoji/video/R$drawable;->ic_pause:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static final drPlay_delegate$lambda$14(Lcom/metamoji/video/AmvVideoController;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/metamoji/video/R$drawable;->ic_play:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static final drShowFrameOff_delegate$lambda$16(Lcom/metamoji/video/AmvVideoController;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/metamoji/video/R$drawable;->ic_frames:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static final drShowFrameOn_delegate$lambda$17(Lcom/metamoji/video/AmvVideoController;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 104
    sget-object v0, Lcom/metamoji/lib/utils/VectorDrawableTinter;->Companion:Lcom/metamoji/lib/utils/VectorDrawableTinter$Companion;

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/metamoji/video/R$drawable;->ic_frames:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/metamoji/video/R$color;->trimming_sel:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/utils/VectorDrawableTinter$Companion;->tintDrawable$default(Lcom/metamoji/lib/utils/VectorDrawableTinter$Companion;Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static final forwardButton_delegate$lambda$4(Lcom/metamoji/video/AmvVideoController;)Landroid/widget/ImageButton;
    .locals 1

    .line 65
    sget v0, Lcom/metamoji/video/R$id;->vct_forwardButton:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method static final frameList_delegate$lambda$11(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvFrameListView;
    .locals 1

    .line 86
    sget v0, Lcom/metamoji/video/R$id;->vct_frameList:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/AmvFrameListView;

    return-object p0
.end method

.method static final fullButton_delegate$lambda$7(Lcom/metamoji/video/AmvVideoController;)Landroid/widget/ImageButton;
    .locals 1

    .line 74
    sget v0, Lcom/metamoji/video/R$id;->vct_fullscreenButton:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method static final initialize$lambda$20(Lcom/metamoji/video/AmvVideoController;DLjava/lang/Object;)Lkotlin/Unit;
    .locals 0

    double-to-long p1, p1

    const/4 p3, 0x1

    .line 246
    invoke-static {p0, p1, p2, p3, p3}, Lcom/metamoji/video/AmvVideoController;->access$updateSeekPosition(Lcom/metamoji/video/AmvVideoController;JZZ)V

    .line 247
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final initialize$lambda$21(Lcom/metamoji/video/AmvVideoController;DLjava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 249
    invoke-static {p0}, Lcom/metamoji/video/AmvVideoController;->access$getMMarkerListener$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;->onMarkerAdded(Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;DLjava/lang/Object;)V

    .line 250
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final initialize$lambda$22(Lcom/metamoji/video/AmvVideoController;DLjava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 252
    invoke-static {p0}, Lcom/metamoji/video/AmvVideoController;->access$getMMarkerListener$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;->onMarkerRemoved(Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;DLjava/lang/Object;)V

    .line 253
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final initialize$lambda$23(Lcom/metamoji/video/AmvVideoController;DFLjava/lang/Object;)Lkotlin/Unit;
    .locals 6

    .line 255
    invoke-static {p0}, Lcom/metamoji/video/AmvVideoController;->access$getMMarkerListener$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;->onMarkerContextMenu(Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;DFLjava/lang/Object;)V

    .line 256
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final initialize$lambda$24(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static final markButton_delegate$lambda$5(Lcom/metamoji/video/AmvVideoController;)Landroid/widget/ImageButton;
    .locals 1

    .line 68
    sget v0, Lcom/metamoji/video/R$id;->vct_markButton:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method static final markerView_delegate$lambda$10(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvMarkerView;
    .locals 1

    .line 83
    sget v0, Lcom/metamoji/video/R$id;->vct_markerView:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/AmvMarkerView;

    return-object p0
.end method

.method static final pinpButton_delegate$lambda$6(Lcom/metamoji/video/AmvVideoController;)Landroid/widget/ImageButton;
    .locals 1

    .line 71
    sget v0, Lcom/metamoji/video/R$id;->vct_pinpButton:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method static final playButtonMini_delegate$lambda$2(Lcom/metamoji/video/AmvVideoController;)Landroid/widget/ImageButton;
    .locals 1

    .line 59
    sget v0, Lcom/metamoji/video/R$id;->vct_playButton2:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method static final playButton_delegate$lambda$1(Lcom/metamoji/video/AmvVideoController;)Landroid/widget/ImageButton;
    .locals 1

    .line 56
    sget v0, Lcom/metamoji/video/R$id;->vct_playButton:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method static final root_delegate$lambda$0(Lcom/metamoji/video/AmvVideoController;)Landroid/view/ViewGroup;
    .locals 1

    .line 53
    sget v0, Lcom/metamoji/video/R$id;->vct_controllerRoot:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method static final showFramesButton_delegate$lambda$9(Lcom/metamoji/video/AmvVideoController;)Landroid/widget/ImageButton;
    .locals 1

    .line 80
    sget v0, Lcom/metamoji/video/R$id;->vct_showFramesButton:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method static final slider_delegate$lambda$12(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvSlider;
    .locals 1

    .line 89
    sget v0, Lcom/metamoji/video/R$id;->vct_slider:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/AmvSlider;

    return-object p0
.end method

.method public static synthetic updatePinPButton$default(Lcom/metamoji/video/AmvVideoController$Controls;Lcom/metamoji/video/AmvFullscreenActivity$State;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 147
    sget-object p1, Lcom/metamoji/video/AmvFullscreenActivity;->Companion:Lcom/metamoji/video/AmvFullscreenActivity$Companion;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFullscreenActivity$Companion;->getCurrentActivityState()Lcom/metamoji/video/AmvFullscreenActivity$State;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvVideoController$Controls;->updatePinPButton(Lcom/metamoji/video/AmvFullscreenActivity$State;)V

    return-void
.end method


# virtual methods
.method public final enable(Landroid/widget/ImageButton;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setAlpha(F)V

    const/4 p2, 0x1

    .line 116
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void

    :cond_0
    const p2, 0x3ecccccd    # 0.4f

    .line 118
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setAlpha(F)V

    const/4 p2, 0x0

    .line 119
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void
.end method

.method public final getActualPlayButton()Landroid/widget/ImageButton;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getMMinimalMode$p(Lcom/metamoji/video/AmvVideoController;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getPlayButtonMini()Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getPlayButton()Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0
.end method

.method public final getBackButton()Landroid/widget/ImageButton;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->backButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final getButtonsGroup()Landroid/widget/LinearLayout;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->buttonsGroup$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getCounterBar()Landroid/widget/TextView;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->counterBar$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getDrPause()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->drPause$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDrPlay()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->drPlay$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDrShowFrameOff()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->drShowFrameOff$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDrShowFrameOn()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->drShowFrameOn$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getForwardButton()Landroid/widget/ImageButton;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->forwardButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final getFrameList()Lcom/metamoji/video/AmvFrameListView;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->frameList$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/video/AmvFrameListView;

    return-object v0
.end method

.method public final getFullButton()Landroid/widget/ImageButton;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->fullButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final getMarkButton()Landroid/widget/ImageButton;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->markButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final getMarkerView()Lcom/metamoji/video/AmvMarkerView;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->markerView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/video/AmvMarkerView;

    return-object v0
.end method

.method public final getPinpButton()Landroid/widget/ImageButton;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->pinpButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final getPlayButton()Landroid/widget/ImageButton;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->playButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final getPlayButtonMini()Landroid/widget/ImageButton;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->playButtonMini$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final getRoot()Landroid/view/ViewGroup;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->root$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getShowFramesButton()Landroid/widget/ImageButton;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->showFramesButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final getSlider()Lcom/metamoji/video/AmvSlider;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->slider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/video/AmvSlider;

    return-object v0
.end method

.method public final initialize()V
    .locals 6

    .line 213
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v1}, Lcom/metamoji/video/AmvVideoController;->access$getModels$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Models;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvVideoController$Models;->getMinControllerWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 217
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvSlider;->setSaveFromParentEnabled(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getCurrentPositionChanged()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    move-result-object v0

    new-instance v2, Lcom/metamoji/video/AmvVideoController$Controls$initialize$1;

    iget-object v3, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-direct {v2, v3}, Lcom/metamoji/video/AmvVideoController$Controls$initialize$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v2}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;->set(Lkotlin/jvm/functions/Function3;)V

    .line 220
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getAllowPictureInPicture()Z

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getPinpButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getMMinimalMode$p(Lcom/metamoji/video/AmvVideoController;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 226
    new-array v3, v0, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getButtonsGroup()Landroid/widget/LinearLayout;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getCounterBar()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getShowFramesButton()Landroid/widget/ImageButton;

    move-result-object v5

    aput-object v5, v3, v4

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_1

    .line 766
    aget-object v5, v3, v4

    .line 227
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getPlayButtonMini()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 230
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getPlayButtonMini()Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    new-instance v2, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getPlayButton()Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    new-instance v2, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getBackButton()Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    new-instance v2, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda24;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda24;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getForwardButton()Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    new-instance v2, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda25;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda25;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkButton()Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    new-instance v2, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda26;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda26;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getPinpButton()Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    new-instance v2, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda27;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda27;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getFullButton()Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    new-instance v2, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda28;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda28;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getShowFramesButton()Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    new-instance v2, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda29;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda29;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameListView;->getTouchFriendListener()Lcom/metamoji/lib/utils/FuncyListener1;

    move-result-object v0

    new-instance v1, Lcom/metamoji/video/AmvVideoController$Controls$initialize$11;

    iget-object v2, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v2}, Lcom/metamoji/video/AmvVideoController;->access$getControls$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Controls;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/video/AmvVideoController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/metamoji/video/AmvVideoController$Controls$initialize$11;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/FuncyListener1;->set(Lkotlin/jvm/functions/Function1;)V

    .line 245
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvMarkerView;->getMarkerSelectedListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    new-instance v2, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 248
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvMarkerView;->getMarkerAddedListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    new-instance v2, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 251
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvMarkerView;->getMarkerRemovedListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    new-instance v2, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda11;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 254
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvMarkerView;->getMarkerContextQueryListener()Lcom/metamoji/lib/utils/FuncyListener3;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    new-instance v2, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda22;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda22;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/lib/utils/FuncyListener3;->set(Lkotlin/jvm/functions/Function3;)V

    .line 259
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->updateShowingFrame()V

    .line 260
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->updatePlayerPrepared()V

    .line 261
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->updatePlaying()V

    .line 262
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->updateCounter()V

    .line 264
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getRoot()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final updateCounter()V
    .locals 10

    .line 195
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getModels$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Models;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Models;->getDuration()J

    move-result-wide v0

    .line 196
    iget-object v2, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v2}, Lcom/metamoji/video/AmvVideoController;->access$getModels$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Models;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/video/AmvVideoController$Models;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    move-wide v2, v4

    .line 201
    :cond_0
    new-instance v6, Lcom/metamoji/video/AmvTimeSpan;

    invoke-direct {v6, v0, v1}, Lcom/metamoji/video/AmvTimeSpan;-><init>(J)V

    .line 202
    new-instance v7, Lcom/metamoji/video/AmvTimeSpan;

    cmp-long v8, v2, v0

    if-lez v8, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    invoke-direct {v7, v0, v1}, Lcom/metamoji/video/AmvTimeSpan;-><init>(J)V

    .line 203
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getCounterBar()Landroid/widget/TextView;

    move-result-object v0

    .line 204
    invoke-virtual {v6}, Lcom/metamoji/video/AmvTimeSpan;->getHours()J

    move-result-wide v1

    cmp-long v1, v1, v4

    const-string v2, " / "

    if-lez v1, :cond_2

    invoke-virtual {v7}, Lcom/metamoji/video/AmvTimeSpan;->formatH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/metamoji/video/AmvTimeSpan;->formatH()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1

    .line 205
    :cond_2
    invoke-virtual {v6}, Lcom/metamoji/video/AmvTimeSpan;->getMinutes()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-lez v1, :cond_3

    invoke-virtual {v7}, Lcom/metamoji/video/AmvTimeSpan;->formatM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/metamoji/video/AmvTimeSpan;->formatM()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1

    .line 206
    :cond_3
    invoke-virtual {v7}, Lcom/metamoji/video/AmvTimeSpan;->formatS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/metamoji/video/AmvTimeSpan;->formatS()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 203
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updatePinPButton(Lcom/metamoji/video/AmvFullscreenActivity$State;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getModels$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Models;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Models;->isPlayerPrepared()Z

    move-result v0

    .line 149
    sget-object v1, Lcom/metamoji/video/AmvVideoController$Controls$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFullscreenActivity$State;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getPinpButton()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/video/AmvVideoController$Controls;->enable(Landroid/widget/ImageButton;Z)V

    .line 160
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getFullButton()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/video/AmvVideoController$Controls;->enable(Landroid/widget/ImageButton;Z)V

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getPinpButton()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/metamoji/video/AmvVideoController$Controls;->enable(Landroid/widget/ImageButton;Z)V

    .line 156
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getFullButton()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/metamoji/video/AmvVideoController$Controls;->enable(Landroid/widget/ImageButton;Z)V

    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getPinpButton()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/metamoji/video/AmvVideoController$Controls;->enable(Landroid/widget/ImageButton;Z)V

    .line 152
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getFullButton()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/metamoji/video/AmvVideoController$Controls;->enable(Landroid/widget/ImageButton;Z)V

    return-void
.end method

.method public final updatePlayerPrepared()V
    .locals 7

    .line 169
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getModels$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Models;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Models;->isPlayerPrepared()Z

    move-result v0

    const/4 v1, 0x3

    .line 170
    new-array v2, v1, [Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getActualPlayButton()Landroid/widget/ImageButton;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getBackButton()Landroid/widget/ImageButton;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getForwardButton()Landroid/widget/ImageButton;

    move-result-object v6

    aput-object v6, v2, v3

    :goto_0
    if-ge v4, v1, :cond_0

    .line 764
    aget-object v3, v2, v4

    .line 172
    invoke-virtual {p0, v3, v0}, Lcom/metamoji/video/AmvVideoController$Controls;->enable(Landroid/widget/ImageButton;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 174
    invoke-static {p0, v0, v5, v0}, Lcom/metamoji/video/AmvVideoController$Controls;->updatePinPButton$default(Lcom/metamoji/video/AmvVideoController$Controls;Lcom/metamoji/video/AmvFullscreenActivity$State;ILjava/lang/Object;)V

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->updateReadOnly()V

    return-void
.end method

.method public final updatePlaying()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getModels$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Models;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Models;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getActualPlayButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getDrPause()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getActualPlayButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getDrPlay()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final updateReadOnly()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkButton()Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v1}, Lcom/metamoji/video/AmvVideoController;->access$getModels$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Models;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvVideoController$Models;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v1}, Lcom/metamoji/video/AmvVideoController;->access$getModels$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Models;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvVideoController$Models;->isPlayerPrepared()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/video/AmvVideoController$Controls;->enable(Landroid/widget/ImageButton;Z)V

    return-void
.end method

.method public final updateShowingFrame()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getModels$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Models;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Models;->getShowingFrames()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getShowFramesButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getDrShowFrameOn()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvFrameListView;->setVisibility(I)V

    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getShowFramesButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getDrShowFrameOff()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvFrameListView;->setVisibility(I)V

    return-void
.end method
