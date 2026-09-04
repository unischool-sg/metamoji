.class final Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;
.super Ljava/lang/Object;
.source "AmvTrimmingPlayerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvTrimmingPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Controls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000f\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\t\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\t\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0019\u001a\u00020\u001a8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\t\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\t\u001a\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;",
        "",
        "<init>",
        "(Lcom/metamoji/video/AmvTrimmingPlayerView;)V",
        "player",
        "Lcom/metamoji/video/AmvExoVideoPlayer;",
        "getPlayer",
        "()Lcom/metamoji/video/AmvExoVideoPlayer;",
        "player$delegate",
        "Lkotlin/Lazy;",
        "controller",
        "Lcom/metamoji/video/AmvTrimmingController;",
        "getController",
        "()Lcom/metamoji/video/AmvTrimmingController;",
        "controller$delegate",
        "progressLayer",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "getProgressLayer",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "progressLayer$delegate",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "getProgressBar",
        "()Landroid/widget/ProgressBar;",
        "progressBar$delegate",
        "message",
        "Landroid/widget/TextView;",
        "getMessage",
        "()Landroid/widget/TextView;",
        "message$delegate",
        "cancelButton",
        "Landroid/widget/Button;",
        "getCancelButton",
        "()Landroid/widget/Button;",
        "cancelButton$delegate",
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
.field private final cancelButton$delegate:Lkotlin/Lazy;

.field private final controller$delegate:Lkotlin/Lazy;

.field private final message$delegate:Lkotlin/Lazy;

.field private final player$delegate:Lkotlin/Lazy;

.field private final progressBar$delegate:Lkotlin/Lazy;

.field private final progressLayer$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/metamoji/video/AmvTrimmingPlayerView;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvTrimmingPlayerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->this$0:Lcom/metamoji/video/AmvTrimmingPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvTrimmingPlayerView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->player$delegate:Lkotlin/Lazy;

    .line 36
    new-instance v0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/AmvTrimmingPlayerView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->controller$delegate:Lkotlin/Lazy;

    .line 39
    new-instance v0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/video/AmvTrimmingPlayerView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->progressLayer$delegate:Lkotlin/Lazy;

    .line 42
    new-instance v0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/video/AmvTrimmingPlayerView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->progressBar$delegate:Lkotlin/Lazy;

    .line 45
    new-instance v0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/video/AmvTrimmingPlayerView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->message$delegate:Lkotlin/Lazy;

    .line 48
    new-instance v0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/video/AmvTrimmingPlayerView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->cancelButton$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final cancelButton_delegate$lambda$5(Lcom/metamoji/video/AmvTrimmingPlayerView;)Landroid/widget/Button;
    .locals 1

    .line 49
    sget v0, Lcom/metamoji/video/R$id;->trp_cancelButton:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method static final controller_delegate$lambda$1(Lcom/metamoji/video/AmvTrimmingPlayerView;)Lcom/metamoji/video/AmvTrimmingController;
    .locals 1

    .line 37
    sget v0, Lcom/metamoji/video/R$id;->trp_trimmingController:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/AmvTrimmingController;

    return-object p0
.end method

.method static final message_delegate$lambda$4(Lcom/metamoji/video/AmvTrimmingPlayerView;)Landroid/widget/TextView;
    .locals 1

    .line 46
    sget v0, Lcom/metamoji/video/R$id;->trp_message:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method static final player_delegate$lambda$0(Lcom/metamoji/video/AmvTrimmingPlayerView;)Lcom/metamoji/video/AmvExoVideoPlayer;
    .locals 1

    .line 34
    sget v0, Lcom/metamoji/video/R$id;->trp_videoPlayer:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/AmvExoVideoPlayer;

    return-object p0
.end method

.method static final progressBar_delegate$lambda$3(Lcom/metamoji/video/AmvTrimmingPlayerView;)Landroid/widget/ProgressBar;
    .locals 1

    .line 43
    sget v0, Lcom/metamoji/video/R$id;->trp_progressBar:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static final progressLayer_delegate$lambda$2(Lcom/metamoji/video/AmvTrimmingPlayerView;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 40
    sget v0, Lcom/metamoji/video/R$id;->trp_progressLayer:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method


# virtual methods
.method public final getCancelButton()Landroid/widget/Button;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->cancelButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public final getController()Lcom/metamoji/video/AmvTrimmingController;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/video/AmvTrimmingController;

    return-object v0
.end method

.method public final getMessage()Landroid/widget/TextView;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->message$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->player$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/video/AmvExoVideoPlayer;

    return-object v0
.end method

.method public final getProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->progressBar$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public final getProgressLayer()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->progressLayer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
