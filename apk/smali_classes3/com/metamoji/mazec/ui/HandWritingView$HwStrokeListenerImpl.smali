.class Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;
.super Lcom/metamoji/mazec/ui/HwStrokeAdapter;
.source "HandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/HandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HwStrokeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/HandWritingView;


# direct methods
.method private constructor <init>(Lcom/metamoji/mazec/ui/HandWritingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2264
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokeAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/mazec/ui/HandWritingView;Lcom/metamoji/mazec/ui/HandWritingView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    return-void
.end method


# virtual methods
.method public notifyStrokeEnded(Lcom/metamoji/mazec/stroke/HwStroke;Landroid/graphics/RectF;)V
    .locals 10

    .line 2353
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokePenInfo(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/StrokePenInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/stroke/HwStroke;->setPenInfo(Lcom/metamoji/mazec/stroke/StrokePenInfo;)V

    .line 2354
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fputmIgnoreStrokeUpdate(Lcom/metamoji/mazec/ui/HandWritingView;Z)V

    .line 2355
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmViewMapInverseMatrix(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 2358
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    if-nez v0, :cond_0

    .line 2356
    invoke-static {v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmViewData(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    goto :goto_0

    .line 2358
    :cond_0
    invoke-static {v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmViewData(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmViewMapInverseMatrix(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/mazec/stroke/HwStroke;->transform(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 2360
    :goto_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fputmIgnoreStrokeUpdate(Lcom/metamoji/mazec/ui/HandWritingView;Z)V

    .line 2362
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 2364
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    .line 2366
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v3

    .line 2367
    invoke-virtual {v3}, Lcom/metamoji/mazec/MazecIms;->notifyHandwritingEnd()V

    .line 2368
    invoke-virtual {v3}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 2369
    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v5}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmHwResultReflecter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2372
    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v5}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$museDefaultStrokeStyle(Lcom/metamoji/mazec/ui/HandWritingView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2373
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$mgetDefaultStrokeStyle(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    .line 2374
    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v5}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->lineWidthOfStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v0

    goto :goto_1

    .line 2376
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/metamoji/mazec/stroke/HwStrokes;->lineWidthOfStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v0

    .line 2379
    :goto_1
    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    iget v6, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v0

    float-to-int v6, v6

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v0

    float-to-int v7, v7

    iget v8, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v0

    float-to-int v8, v8

    add-int/2addr v8, v1

    iget v9, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v0

    float-to-int v9, v9

    add-int/2addr v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate(IIII)V

    .line 2384
    invoke-virtual {v3}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v5}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmAutoCommitEnabled(Lcom/metamoji/mazec/ui/HandWritingView;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    .line 2386
    :goto_2
    iget-object v6, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v6}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmAutoScrollEnabled(Lcom/metamoji/mazec/ui/HandWritingView;)Z

    move-result v6

    const-wide/16 v7, 0x190

    if-eqz v6, :cond_6

    if-eqz v5, :cond_3

    .line 2388
    iget-object v6, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v6}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmAutoCommitDelay(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v6

    iget-object v9, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v9}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmAutoScrollDelay(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v9

    if-gt v6, v9, :cond_3

    .line 2391
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmViewWidthEnhancer(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v4, p1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2392
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1, v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fputmNeedAutoScroll(Lcom/metamoji/mazec/ui/HandWritingView;Z)V

    goto/16 :goto_3

    .line 2394
    :cond_3
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmScrollX(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v2

    iget-object v6, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v6}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmInitWidth(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v6

    add-int/2addr v2, v6

    iget-object v6, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v6}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmMaxViewWidth(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 2395
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmNeedAutoScroll(Lcom/metamoji/mazec/ui/HandWritingView;)Z

    move-result v2

    .line 2399
    iget-object v6, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    if-eqz v2, :cond_4

    .line 2396
    invoke-static {v6}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$mupdateViewWidth(Lcom/metamoji/mazec/ui/HandWritingView;)V

    .line 2397
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmAutoScroller(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmAutoScrollDelay(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v4, p1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 2399
    :cond_4
    invoke-static {v6}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmWorkRect(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/mazec/stroke/HwStroke;->boundsWithLineWidth(FLandroid/graphics/RectF;)V

    .line 2400
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmScrollX(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result p1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmInitWidth(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmAutoScrollAreaWidth(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 2401
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmWorkRect(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v0

    .line 2409
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    if-gez p1, :cond_5

    .line 2402
    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$mupdateViewWidth(Lcom/metamoji/mazec/ui/HandWritingView;)V

    .line 2404
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmAutoScroller(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2406
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmAutoScroller(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmAutoScrollDelay(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v4, p1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2407
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1, v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fputmNeedAutoScroll(Lcom/metamoji/mazec/ui/HandWritingView;Z)V

    goto :goto_3

    .line 2409
    :cond_5
    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmViewWidthEnhancer(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v4, p1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 2416
    :cond_6
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmViewWidthEnhancer(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v4, p1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_3
    if-eqz v5, :cond_9

    .line 2422
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmNeedAutoScroll(Lcom/metamoji/mazec/ui/HandWritingView;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 2423
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmAutoCommitter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmAutoCommitDelay(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {v4, p1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2425
    :cond_8
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1, v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fputmNeedAutoCommit(Lcom/metamoji/mazec/ui/HandWritingView;Z)V

    .line 2428
    :cond_9
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmWordspacingRect(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 2429
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    float-to-int p2, p2

    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmCurrentBase(Lcom/metamoji/mazec/ui/HandWritingView;)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmCurrentWidth(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v2

    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v5}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmCurrentBase(Lcom/metamoji/mazec/ui/HandWritingView;)F

    move-result v5

    iget-object v6, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v6}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmWordspacingLineWidth(Lcom/metamoji/mazec/ui/HandWritingView;)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v1

    invoke-virtual {p1, p2, v0, v2, v5}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate(IIII)V

    .line 2431
    :cond_a
    invoke-virtual {v3}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result p1

    if-ne p1, v1, :cond_b

    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmHandwriteStrokeBlockDetecter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2433
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmHandwriteStrokeBlockDetecter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {v4, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    return-void
.end method

.method public notifyStrokePrepared()V
    .locals 4

    .line 2277
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmCandidateSelectors(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2278
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmScrollX(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmScrollX(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v2

    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v3}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmInitWidth(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v3}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmCurrentHeight(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->invalidate(Landroid/view/View;IIF)V

    :cond_0
    return-void
.end method

.method public notifyStrokeStarted()V
    .locals 6

    .line 2288
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 2289
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->notifyHandwritingStart()V

    .line 2290
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->cancelRecognition()V

    .line 2291
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->cancelConversion()V

    .line 2294
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2295
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmHwResultReflecter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2296
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmViewWidthEnhancer(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2298
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmHandwriteStrokeBlockDetecter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2301
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmCandidateSelectors(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2302
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmCandidateSelectors(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2306
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmDrawingStroke(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->getCurrentStroke()Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2308
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2311
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$museDefaultStrokeStyle(Lcom/metamoji/mazec/ui/HandWritingView;)Z

    move-result v2

    .line 2315
    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    if-eqz v2, :cond_1

    .line 2312
    invoke-static {v3}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$mgetDefaultStrokeStyle(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    .line 2313
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->lineWidthOfStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v0

    goto :goto_0

    .line 2315
    :cond_1
    invoke-static {v3}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->lineWidthOfStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v0

    .line 2317
    :goto_0
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v0

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    float-to-int v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate(IIII)V

    .line 2321
    :cond_2
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmWordspacingRect(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2322
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmWordspacingRect(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmWordspacingRect(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v3}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmWordspacingRect(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v4}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmWordspacingRect(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate(IIII)V

    :cond_3
    return-void
.end method

.method public notifyStroking(Landroid/graphics/RectF;)V
    .locals 5

    .line 2331
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2336
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$museDefaultStrokeStyle(Lcom/metamoji/mazec/ui/HandWritingView;)Z

    move-result v0

    .line 2340
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    if-eqz v0, :cond_1

    .line 2337
    invoke-static {v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$mgetDefaultStrokeStyle(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    .line 2338
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->lineWidthOfStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v0

    goto :goto_0

    .line 2340
    :cond_1
    invoke-static {v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmDrawingStroke(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->getCurrentStroke()Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2342
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->lineWidthOfStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2345
    :goto_0
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v0

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate(IIII)V

    return-void
.end method
