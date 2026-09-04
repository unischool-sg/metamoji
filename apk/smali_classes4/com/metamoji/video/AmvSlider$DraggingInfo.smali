.class public final Lcom/metamoji/video/AmvSlider$DraggingInfo;
.super Ljava/lang/Object;
.source "AmvSlider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DraggingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvSlider$DraggingInfo$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u001e\u001a\u00020\u001a*\u00020\u001f2\u0006\u0010 \u001a\u00020\u0007H\u0002J\u001e\u0010!\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u001aJ\u000e\u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u0005J\u000e\u0010&\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u0007J\u0006\u0010\'\u001a\u00020\u001aR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0019\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001b\u00a8\u0006("
    }
    d2 = {
        "Lcom/metamoji/video/AmvSlider$DraggingInfo;",
        "",
        "<init>",
        "(Lcom/metamoji/video/AmvSlider;)V",
        "knob",
        "Lcom/metamoji/video/AmvSlider$Knob;",
        "offset",
        "",
        "getOffset",
        "()F",
        "setOffset",
        "(F)V",
        "listener",
        "Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;",
        "getListener",
        "()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;",
        "v",
        "",
        "value",
        "getValue",
        "()J",
        "setValue",
        "(J)V",
        "reset",
        "",
        "isDragging",
        "",
        "()Z",
        "draggingStateWithKnob",
        "Lcom/metamoji/video/AmvSlider$SliderDragState;",
        "containsX",
        "Landroid/graphics/RectF;",
        "x",
        "initAt",
        "y",
        "fromFriend",
        "initByFriend",
        "type",
        "moveTo",
        "finish",
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
.field private knob:Lcom/metamoji/video/AmvSlider$Knob;

.field private offset:F

.field final synthetic this$0:Lcom/metamoji/video/AmvSlider;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvSlider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 601
    iput-object p1, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    sget-object p1, Lcom/metamoji/video/AmvSlider$Knob;->NONE:Lcom/metamoji/video/AmvSlider$Knob;

    iput-object p1, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->knob:Lcom/metamoji/video/AmvSlider$Knob;

    return-void
.end method

.method private final containsX(Landroid/graphics/RectF;F)Z
    .locals 2

    .line 663
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p2, p1

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    cmpg-float p1, v0, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private final reset()V
    .locals 1

    .line 639
    sget-object v0, Lcom/metamoji/video/AmvSlider$Knob;->NONE:Lcom/metamoji/video/AmvSlider$Knob;

    iput-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->knob:Lcom/metamoji/video/AmvSlider$Knob;

    const/4 v0, 0x0

    .line 640
    iput v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->offset:F

    return-void
.end method


# virtual methods
.method public final draggingStateWithKnob(Lcom/metamoji/video/AmvSlider$Knob;)Lcom/metamoji/video/AmvSlider$SliderDragState;
    .locals 1

    const-string v0, "knob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->knob:Lcom/metamoji/video/AmvSlider$Knob;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/metamoji/video/AmvSlider$SliderDragState;->MOVING:Lcom/metamoji/video/AmvSlider$SliderDragState;

    return-object p1

    :cond_0
    sget-object p1, Lcom/metamoji/video/AmvSlider$SliderDragState;->NONE:Lcom/metamoji/video/AmvSlider$SliderDragState;

    return-object p1
.end method

.method public final finish()Z
    .locals 4

    .line 730
    sget-object v0, Lcom/metamoji/video/AmvSlider$Knob;->NONE:Lcom/metamoji/video/AmvSlider$Knob;

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->knob:Lcom/metamoji/video/AmvSlider$Knob;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->getListener()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-virtual {p0}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/metamoji/video/AmvSlider$SliderDragState;->END:Lcom/metamoji/video/AmvSlider$SliderDragState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    .line 734
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->reset()V

    const/4 v0, 0x1

    return v0
.end method

.method public final getListener()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->knob:Lcom/metamoji/video/AmvSlider$Knob;

    sget-object v1, Lcom/metamoji/video/AmvSlider$DraggingInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider$Knob;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getTrimEndPositionChanged()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    move-result-object v0

    return-object v0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getTrimStartPositionChanged()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    move-result-object v0

    return-object v0

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getCurrentPositionChanged()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    move-result-object v0

    return-object v0
.end method

.method public final getOffset()F
    .locals 1

    .line 605
    iget v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->offset:F

    return v0
.end method

.method public final getValue()J
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->knob:Lcom/metamoji/video/AmvSlider$Knob;

    sget-object v1, Lcom/metamoji/video/AmvSlider$DraggingInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider$Knob;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getTrimEndPosition()J

    move-result-wide v0

    return-wide v0

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getTrimStartPosition()J

    move-result-wide v0

    return-wide v0

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final initAt(FFZ)Z
    .locals 4

    .line 670
    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->reset()V

    .line 673
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-static {v0}, Lcom/metamoji/video/AmvSlider;->access$getTrimmingEnabled$p(Lcom/metamoji/video/AmvSlider;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    .line 674
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-static {v0}, Lcom/metamoji/video/AmvSlider;->access$getMThumbRect$p(Lcom/metamoji/video/AmvSlider;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    sget-object p2, Lcom/metamoji/video/AmvSlider$Knob;->THUMB:Lcom/metamoji/video/AmvSlider$Knob;

    iput-object p2, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->knob:Lcom/metamoji/video/AmvSlider$Knob;

    .line 676
    iget-object p2, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-static {p2}, Lcom/metamoji/video/AmvSlider;->access$getMThumbRect$p(Lcom/metamoji/video/AmvSlider;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->offset:F

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 678
    iget-object p3, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-static {p3}, Lcom/metamoji/video/AmvSlider;->access$getMRailY$p(Lcom/metamoji/video/AmvSlider;)F

    move-result p3

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_3

    .line 679
    :cond_1
    iget-object p2, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-static {p2}, Lcom/metamoji/video/AmvSlider;->access$getMTrimLeftRect$p(Lcom/metamoji/video/AmvSlider;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->containsX(Landroid/graphics/RectF;F)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 680
    sget-object p2, Lcom/metamoji/video/AmvSlider$Knob;->LEFT:Lcom/metamoji/video/AmvSlider$Knob;

    iput-object p2, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->knob:Lcom/metamoji/video/AmvSlider$Knob;

    .line 681
    iget-object p2, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-static {p2}, Lcom/metamoji/video/AmvSlider;->access$getMTrimLeftRect$p(Lcom/metamoji/video/AmvSlider;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->offset:F

    goto :goto_0

    .line 683
    :cond_2
    iget-object p2, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-static {p2}, Lcom/metamoji/video/AmvSlider;->access$getMTrimRightRect$p(Lcom/metamoji/video/AmvSlider;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->containsX(Landroid/graphics/RectF;F)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 684
    sget-object p2, Lcom/metamoji/video/AmvSlider$Knob;->RIGHT:Lcom/metamoji/video/AmvSlider$Knob;

    iput-object p2, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->knob:Lcom/metamoji/video/AmvSlider$Knob;

    .line 685
    iget-object p2, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-static {p2}, Lcom/metamoji/video/AmvSlider;->access$getMTrimRightRect$p(Lcom/metamoji/video/AmvSlider;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->offset:F

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 690
    :cond_4
    sget-object p3, Lcom/metamoji/video/AmvSlider$Knob;->THUMB:Lcom/metamoji/video/AmvSlider$Knob;

    iput-object p3, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->knob:Lcom/metamoji/video/AmvSlider$Knob;

    .line 691
    iget-object p3, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-static {p3}, Lcom/metamoji/video/AmvSlider;->access$getMThumbRect$p(Lcom/metamoji/video/AmvSlider;)Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p2

    .line 695
    iget-object p3, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    if-eqz p2, :cond_5

    .line 692
    invoke-static {p3}, Lcom/metamoji/video/AmvSlider;->access$getMThumbRect$p(Lcom/metamoji/video/AmvSlider;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->offset:F

    goto :goto_0

    .line 695
    :cond_5
    invoke-virtual {p3, p1}, Lcom/metamoji/video/AmvSlider;->position2value(F)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    const/4 p1, 0x0

    .line 696
    iput p1, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->offset:F

    .line 700
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->getListener()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-virtual {p0}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    sget-object v0, Lcom/metamoji/video/AmvSlider$SliderDragState;->BEGIN:Lcom/metamoji/video/AmvSlider$SliderDragState;

    invoke-virtual {p1, p2, p3, v0}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_6
    return v1
.end method

.method public final initByFriend(Lcom/metamoji/video/AmvSlider$Knob;)Z
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    sget-object v0, Lcom/metamoji/video/AmvSlider$DraggingInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/video/AmvSlider$Knob;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 707
    :cond_0
    iput-object p1, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->knob:Lcom/metamoji/video/AmvSlider$Knob;

    const/4 p1, 0x0

    .line 708
    iput p1, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->offset:F

    const/4 p1, 0x1

    return p1
.end method

.method public final isDragging()Z
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->knob:Lcom/metamoji/video/AmvSlider$Knob;

    sget-object v1, Lcom/metamoji/video/AmvSlider$Knob;->NONE:Lcom/metamoji/video/AmvSlider$Knob;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final moveTo(F)Z
    .locals 2

    .line 719
    sget-object v0, Lcom/metamoji/video/AmvSlider$Knob;->NONE:Lcom/metamoji/video/AmvSlider$Knob;

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->knob:Lcom/metamoji/video/AmvSlider$Knob;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    iget v1, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->offset:F

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/metamoji/video/AmvSlider;->position2value(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->setValue(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final setOffset(F)V
    .locals 0

    .line 605
    iput p1, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->offset:F

    return-void
.end method

.method public final setValue(J)V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->knob:Lcom/metamoji/video/AmvSlider$Knob;

    sget-object v1, Lcom/metamoji/video/AmvSlider$DraggingInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider$Knob;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/video/AmvSlider;->setTrimEndPosition(J)V

    return-void

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/video/AmvSlider;->setTrimStartPosition(J)V

    return-void

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider$DraggingInfo;->this$0:Lcom/metamoji/video/AmvSlider;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    return-void
.end method
