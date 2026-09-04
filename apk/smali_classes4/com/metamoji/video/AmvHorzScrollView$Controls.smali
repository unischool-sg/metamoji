.class final Lcom/metamoji/video/AmvHorzScrollView$Controls;
.super Ljava/lang/Object;
.source "AmvHorzScrollView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvHorzScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Controls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000f\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\t\u001a\u0004\u0008\u0010\u0010\rR\u001b\u0010\u0012\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\t\u001a\u0004\u0008\u0013\u0010\rR\u001b\u0010\u0015\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\t\u001a\u0004\u0008\u0016\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/video/AmvHorzScrollView$Controls;",
        "",
        "<init>",
        "(Lcom/metamoji/video/AmvHorzScrollView;)V",
        "container",
        "Landroid/widget/LinearLayout;",
        "getContainer",
        "()Landroid/widget/LinearLayout;",
        "container$delegate",
        "Lkotlin/Lazy;",
        "leftTruncated",
        "Landroid/view/View;",
        "getLeftTruncated",
        "()Landroid/view/View;",
        "leftTruncated$delegate",
        "rightTruncated",
        "getRightTruncated",
        "rightTruncated$delegate",
        "leftTruncatedBar",
        "getLeftTruncatedBar",
        "leftTruncatedBar$delegate",
        "rightTruncatedBar",
        "getRightTruncatedBar",
        "rightTruncatedBar$delegate",
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
.field private final container$delegate:Lkotlin/Lazy;

.field private final leftTruncated$delegate:Lkotlin/Lazy;

.field private final leftTruncatedBar$delegate:Lkotlin/Lazy;

.field private final rightTruncated$delegate:Lkotlin/Lazy;

.field private final rightTruncatedBar$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/metamoji/video/AmvHorzScrollView;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvHorzScrollView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/metamoji/video/AmvHorzScrollView$Controls;->this$0:Lcom/metamoji/video/AmvHorzScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/metamoji/video/AmvHorzScrollView$Controls$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvHorzScrollView$Controls$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvHorzScrollView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Controls;->container$delegate:Lkotlin/Lazy;

    .line 32
    new-instance v0, Lcom/metamoji/video/AmvHorzScrollView$Controls$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvHorzScrollView$Controls$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/AmvHorzScrollView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Controls;->leftTruncated$delegate:Lkotlin/Lazy;

    .line 33
    new-instance v0, Lcom/metamoji/video/AmvHorzScrollView$Controls$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvHorzScrollView$Controls$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/video/AmvHorzScrollView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Controls;->rightTruncated$delegate:Lkotlin/Lazy;

    .line 34
    new-instance v0, Lcom/metamoji/video/AmvHorzScrollView$Controls$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvHorzScrollView$Controls$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/video/AmvHorzScrollView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Controls;->leftTruncatedBar$delegate:Lkotlin/Lazy;

    .line 35
    new-instance v0, Lcom/metamoji/video/AmvHorzScrollView$Controls$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvHorzScrollView$Controls$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/video/AmvHorzScrollView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvHorzScrollView$Controls;->rightTruncatedBar$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final container_delegate$lambda$0(Lcom/metamoji/video/AmvHorzScrollView;)Landroid/widget/LinearLayout;
    .locals 1

    .line 31
    sget v0, Lcom/metamoji/video/R$id;->flv_imageList:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvHorzScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static final leftTruncatedBar_delegate$lambda$3(Lcom/metamoji/video/AmvHorzScrollView;)Landroid/view/View;
    .locals 1

    .line 34
    sget v0, Lcom/metamoji/video/R$id;->flv_leftTruncatedBar:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvHorzScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static final leftTruncated_delegate$lambda$1(Lcom/metamoji/video/AmvHorzScrollView;)Landroid/view/View;
    .locals 1

    .line 32
    sget v0, Lcom/metamoji/video/R$id;->flv_leftTruncated:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvHorzScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static final rightTruncatedBar_delegate$lambda$4(Lcom/metamoji/video/AmvHorzScrollView;)Landroid/view/View;
    .locals 1

    .line 35
    sget v0, Lcom/metamoji/video/R$id;->flv_rightTruncatedBar:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvHorzScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static final rightTruncated_delegate$lambda$2(Lcom/metamoji/video/AmvHorzScrollView;)Landroid/view/View;
    .locals 1

    .line 33
    sget v0, Lcom/metamoji/video/R$id;->flv_rightTruncated:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvHorzScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getContainer()Landroid/widget/LinearLayout;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Controls;->container$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getLeftTruncated()Landroid/view/View;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Controls;->leftTruncated$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getLeftTruncatedBar()Landroid/view/View;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Controls;->leftTruncatedBar$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getRightTruncated()Landroid/view/View;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Controls;->rightTruncated$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getRightTruncatedBar()Landroid/view/View;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Controls;->rightTruncatedBar$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
