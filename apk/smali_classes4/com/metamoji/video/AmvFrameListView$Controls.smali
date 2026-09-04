.class final Lcom/metamoji/video/AmvFrameListView$Controls;
.super Ljava/lang/Object;
.source "AmvFrameListView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvFrameListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Controls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/video/AmvFrameListView$Controls;",
        "",
        "<init>",
        "(Lcom/metamoji/video/AmvFrameListView;)V",
        "scroller",
        "Lcom/metamoji/video/AmvHorzScrollView;",
        "getScroller",
        "()Lcom/metamoji/video/AmvHorzScrollView;",
        "scroller$delegate",
        "Lkotlin/Lazy;",
        "knob",
        "Landroid/view/View;",
        "getKnob",
        "()Landroid/view/View;",
        "knob$delegate",
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
.field private final knob$delegate:Lkotlin/Lazy;

.field private final scroller$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/metamoji/video/AmvFrameListView;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvFrameListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/metamoji/video/AmvFrameListView$Controls;->this$0:Lcom/metamoji/video/AmvFrameListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/metamoji/video/AmvFrameListView$Controls$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvFrameListView$Controls$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvFrameListView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvFrameListView$Controls;->scroller$delegate:Lkotlin/Lazy;

    .line 40
    new-instance v0, Lcom/metamoji/video/AmvFrameListView$Controls$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvFrameListView$Controls$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/AmvFrameListView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvFrameListView$Controls;->knob$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final knob_delegate$lambda$1(Lcom/metamoji/video/AmvFrameListView;)Landroid/view/View;
    .locals 1

    .line 41
    sget v0, Lcom/metamoji/video/R$id;->flv_knob:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvFrameListView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static final scroller_delegate$lambda$0(Lcom/metamoji/video/AmvFrameListView;)Lcom/metamoji/video/AmvHorzScrollView;
    .locals 1

    .line 38
    sget v0, Lcom/metamoji/video/R$id;->flv_scroller:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvFrameListView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/AmvHorzScrollView;

    return-object p0
.end method


# virtual methods
.method public final getKnob()Landroid/view/View;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameListView$Controls;->knob$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getScroller()Lcom/metamoji/video/AmvHorzScrollView;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameListView$Controls;->scroller$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/video/AmvHorzScrollView;

    return-object v0
.end method
