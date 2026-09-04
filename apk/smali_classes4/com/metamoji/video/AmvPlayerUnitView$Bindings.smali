.class public final Lcom/metamoji/video/AmvPlayerUnitView$Bindings;
.super Ljava/lang/Object;
.source "AmvPlayerUnitView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvPlayerUnitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Bindings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u001e\u001a\u00020\u001fR\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000f\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\t\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\t\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0019\u001a\u00020\u001a8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\t\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/metamoji/video/AmvPlayerUnitView$Bindings;",
        "",
        "<init>",
        "(Lcom/metamoji/video/AmvPlayerUnitView;)V",
        "player",
        "Lcom/metamoji/video/AmvExoVideoPlayer;",
        "getPlayer",
        "()Lcom/metamoji/video/AmvExoVideoPlayer;",
        "player$delegate",
        "Lkotlin/Lazy;",
        "controller",
        "Lcom/metamoji/video/AmvVideoController;",
        "getController",
        "()Lcom/metamoji/video/AmvVideoController;",
        "controller$delegate",
        "altLayer",
        "Landroid/widget/LinearLayout;",
        "getAltLayer",
        "()Landroid/widget/LinearLayout;",
        "altLayer$delegate",
        "message",
        "Landroid/widget/TextView;",
        "getMessage",
        "()Landroid/widget/TextView;",
        "message$delegate",
        "progress",
        "Landroid/widget/ProgressBar;",
        "getProgress",
        "()Landroid/widget/ProgressBar;",
        "progress$delegate",
        "init",
        "",
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
.field private final altLayer$delegate:Lkotlin/Lazy;

.field private final controller$delegate:Lkotlin/Lazy;

.field private final message$delegate:Lkotlin/Lazy;

.field private final player$delegate:Lkotlin/Lazy;

.field private final progress$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/metamoji/video/AmvPlayerUnitView;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvPlayerUnitView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->this$0:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/AmvPlayerUnitView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->player$delegate:Lkotlin/Lazy;

    .line 31
    new-instance v0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/video/AmvPlayerUnitView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->controller$delegate:Lkotlin/Lazy;

    .line 34
    new-instance v0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/video/AmvPlayerUnitView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->altLayer$delegate:Lkotlin/Lazy;

    .line 37
    new-instance v0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/video/AmvPlayerUnitView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->message$delegate:Lkotlin/Lazy;

    .line 40
    new-instance v0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/video/AmvPlayerUnitView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->progress$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final altLayer_delegate$lambda$2(Lcom/metamoji/video/AmvPlayerUnitView;)Landroid/widget/LinearLayout;
    .locals 1

    .line 35
    sget v0, Lcom/metamoji/video/R$id;->evp_altLayer:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvPlayerUnitView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static final controller_delegate$lambda$1(Lcom/metamoji/video/AmvPlayerUnitView;)Lcom/metamoji/video/AmvVideoController;
    .locals 1

    .line 32
    sget v0, Lcom/metamoji/video/R$id;->evp_videoController:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvPlayerUnitView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/AmvVideoController;

    return-object p0
.end method

.method static final init$lambda$5(Lcom/metamoji/video/AmvPlayerUnitView;Lcom/metamoji/video/IAmvVideoPlayer;II)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Lcom/metamoji/video/AmvPlayerUnitView;->access$getBindings$p(Lcom/metamoji/video/AmvPlayerUnitView;)Lcom/metamoji/video/AmvPlayerUnitView$Bindings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->getAltLayer()Landroid/widget/LinearLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/metamoji/video/AmvUtilsKt;->setLayoutWidth(Landroid/view/View;I)V

    .line 47
    invoke-static {p0}, Lcom/metamoji/video/AmvPlayerUnitView;->access$getBindings$p(Lcom/metamoji/video/AmvPlayerUnitView;)Lcom/metamoji/video/AmvPlayerUnitView$Bindings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->getAltLayer()Landroid/widget/LinearLayout;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p3}, Lcom/metamoji/video/AmvUtilsKt;->setLayoutHeight(Landroid/view/View;I)V

    .line 48
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final message_delegate$lambda$3(Lcom/metamoji/video/AmvPlayerUnitView;)Landroid/widget/TextView;
    .locals 1

    .line 38
    sget v0, Lcom/metamoji/video/R$id;->evp_message:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvPlayerUnitView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method static final player_delegate$lambda$0(Lcom/metamoji/video/AmvPlayerUnitView;)Lcom/metamoji/video/AmvExoVideoPlayer;
    .locals 1

    .line 29
    sget v0, Lcom/metamoji/video/R$id;->evp_videoPlayer:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvPlayerUnitView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/AmvExoVideoPlayer;

    return-object p0
.end method

.method static final progress_delegate$lambda$4(Lcom/metamoji/video/AmvPlayerUnitView;)Landroid/widget/ProgressBar;
    .locals 1

    .line 41
    sget v0, Lcom/metamoji/video/R$id;->evp_progress:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvPlayerUnitView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method


# virtual methods
.method public final getAltLayer()Landroid/widget/LinearLayout;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->altLayer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getController()Lcom/metamoji/video/AmvVideoController;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/video/AmvVideoController;

    return-object v0
.end method

.method public final getMessage()Landroid/widget/TextView;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->message$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->player$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/video/AmvExoVideoPlayer;

    return-object v0
.end method

.method public final getProgress()Landroid/widget/ProgressBar;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->progress$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public final init()V
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->getController()Lcom/metamoji/video/AmvVideoController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v1

    check-cast v1, Lcom/metamoji/video/IAmvVideoPlayer;

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvVideoController;->setVideoPlayer(Lcom/metamoji/video/IAmvVideoPlayer;)V

    .line 45
    invoke-virtual {p0}, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getSizeChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->this$0:Lcom/metamoji/video/AmvPlayerUnitView;

    new-instance v2, Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvPlayerUnitView;)V

    const-string v1, "EVP"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/IFuncy3;

    return-void
.end method
