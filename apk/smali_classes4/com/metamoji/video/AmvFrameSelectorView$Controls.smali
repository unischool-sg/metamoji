.class final Lcom/metamoji/video/AmvFrameSelectorView$Controls;
.super Ljava/lang/Object;
.source "AmvFrameSelectorView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvFrameSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Controls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000f\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\t\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\t\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/video/AmvFrameSelectorView$Controls;",
        "",
        "<init>",
        "(Lcom/metamoji/video/AmvFrameSelectorView;)V",
        "player",
        "Lcom/metamoji/video/AmvExoVideoPlayer;",
        "getPlayer",
        "()Lcom/metamoji/video/AmvExoVideoPlayer;",
        "player$delegate",
        "Lkotlin/Lazy;",
        "slider",
        "Lcom/metamoji/video/AmvSlider;",
        "getSlider",
        "()Lcom/metamoji/video/AmvSlider;",
        "slider$delegate",
        "sliderGroup",
        "Landroid/widget/FrameLayout;",
        "getSliderGroup",
        "()Landroid/widget/FrameLayout;",
        "sliderGroup$delegate",
        "frameListView",
        "Lcom/metamoji/video/AmvFrameListView;",
        "getFrameListView",
        "()Lcom/metamoji/video/AmvFrameListView;",
        "frameListView$delegate",
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
.field private final frameListView$delegate:Lkotlin/Lazy;

.field private final player$delegate:Lkotlin/Lazy;

.field private final slider$delegate:Lkotlin/Lazy;

.field private final sliderGroup$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/metamoji/video/AmvFrameSelectorView;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvFrameSelectorView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/metamoji/video/AmvFrameSelectorView$Controls$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvFrameSelectorView$Controls$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvFrameSelectorView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->player$delegate:Lkotlin/Lazy;

    .line 80
    new-instance v0, Lcom/metamoji/video/AmvFrameSelectorView$Controls$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvFrameSelectorView$Controls$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/AmvFrameSelectorView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->slider$delegate:Lkotlin/Lazy;

    .line 84
    new-instance v0, Lcom/metamoji/video/AmvFrameSelectorView$Controls$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvFrameSelectorView$Controls$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/video/AmvFrameSelectorView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->sliderGroup$delegate:Lkotlin/Lazy;

    .line 88
    new-instance v0, Lcom/metamoji/video/AmvFrameSelectorView$Controls$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvFrameSelectorView$Controls$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/video/AmvFrameSelectorView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->frameListView$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final frameListView_delegate$lambda$3(Lcom/metamoji/video/AmvFrameSelectorView;)Lcom/metamoji/video/AmvFrameListView;
    .locals 1

    .line 89
    sget v0, Lcom/metamoji/video/R$id;->vfs_frameList:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvFrameSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/AmvFrameListView;

    return-object p0
.end method

.method static final player_delegate$lambda$0(Lcom/metamoji/video/AmvFrameSelectorView;)Lcom/metamoji/video/AmvExoVideoPlayer;
    .locals 1

    .line 77
    sget v0, Lcom/metamoji/video/R$id;->vfs_player:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvFrameSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/AmvExoVideoPlayer;

    return-object p0
.end method

.method static final sliderGroup_delegate$lambda$2(Lcom/metamoji/video/AmvFrameSelectorView;)Landroid/widget/FrameLayout;
    .locals 1

    .line 85
    sget v0, Lcom/metamoji/video/R$id;->vfs_sliderGroup:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvFrameSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static final slider_delegate$lambda$1(Lcom/metamoji/video/AmvFrameSelectorView;)Lcom/metamoji/video/AmvSlider;
    .locals 1

    .line 81
    sget v0, Lcom/metamoji/video/R$id;->vfs_slider:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvFrameSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/AmvSlider;

    return-object p0
.end method


# virtual methods
.method public final getFrameListView()Lcom/metamoji/video/AmvFrameListView;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->frameListView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/video/AmvFrameListView;

    return-object v0
.end method

.method public final getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->player$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/video/AmvExoVideoPlayer;

    return-object v0
.end method

.method public final getSlider()Lcom/metamoji/video/AmvSlider;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->slider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/video/AmvSlider;

    return-object v0
.end method

.method public final getSliderGroup()Landroid/widget/FrameLayout;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->sliderGroup$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method
