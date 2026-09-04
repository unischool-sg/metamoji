.class public final Lcom/metamoji/video/AmvMarkerView$TouchManager;
.super Ljava/lang/Object;
.source "AmvMarkerView.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvMarkerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TouchManager"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0017J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0016\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/video/AmvMarkerView$TouchManager;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "(Lcom/metamoji/video/AmvMarkerView;)V",
        "xOrg",
        "",
        "yOrg",
        "x",
        "y",
        "tapping",
        "",
        "marker",
        "",
        "onTouch",
        "v",
        "Landroid/view/View;",
        "event",
        "Landroid/view/MotionEvent;",
        "onClick",
        "",
        "onLongClick",
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
.field private marker:I

.field private tapping:Z

.field final synthetic this$0:Lcom/metamoji/video/AmvMarkerView;

.field private x:F

.field private xOrg:F

.field private y:F

.field private yOrg:F


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvMarkerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->this$0:Lcom/metamoji/video/AmvMarkerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 290
    iput p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->xOrg:F

    .line 291
    iput p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->yOrg:F

    .line 292
    iput p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->x:F

    .line 293
    iput p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->y:F

    const/4 p1, -0x1

    .line 295
    iput p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->marker:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 327
    iget-boolean p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->tapping:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->marker:I

    if-ltz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->this$0:Lcom/metamoji/video/AmvMarkerView;

    invoke-static {p1}, Lcom/metamoji/video/AmvMarkerView;->access$getMMarkers$p(Lcom/metamoji/video/AmvMarkerView;)Lcom/metamoji/lib/utils/SortedList;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->marker:I

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->this$0:Lcom/metamoji/video/AmvMarkerView;

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/video/AmvMarkerView;->selectMarker(JLjava/lang/Object;)V

    .line 329
    iget-object p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->this$0:Lcom/metamoji/video/AmvMarkerView;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/video/AmvMarkerView;->resetHighLightMarker(J)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 334
    iget-boolean p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->tapping:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->marker:I

    if-ltz p1, :cond_0

    .line 335
    iput-boolean v0, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->tapping:Z

    .line 336
    iget-object p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->this$0:Lcom/metamoji/video/AmvMarkerView;

    invoke-static {p1}, Lcom/metamoji/video/AmvMarkerView;->access$getMMarkers$p(Lcom/metamoji/video/AmvMarkerView;)Lcom/metamoji/lib/utils/SortedList;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->marker:I

    invoke-virtual {v1, v2}, Lcom/metamoji/lib/utils/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->this$0:Lcom/metamoji/video/AmvMarkerView;

    invoke-virtual {p1, v1, v2, v3}, Lcom/metamoji/video/AmvMarkerView;->selectMarker(JLjava/lang/Object;)V

    .line 337
    iget-object p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->this$0:Lcom/metamoji/video/AmvMarkerView;

    invoke-static {p1}, Lcom/metamoji/video/AmvMarkerView;->access$getMMarkers$p(Lcom/metamoji/video/AmvMarkerView;)Lcom/metamoji/lib/utils/SortedList;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->marker:I

    invoke-virtual {v1, v2}, Lcom/metamoji/lib/utils/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->this$0:Lcom/metamoji/video/AmvMarkerView;

    invoke-virtual {p1, v1, v2, v3}, Lcom/metamoji/video/AmvMarkerView;->contextMenuOn(JLjava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    if-eqz p2, :cond_0

    .line 299
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    .line 300
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 301
    iget-object p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->this$0:Lcom/metamoji/video/AmvMarkerView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-static {p1, v2}, Lcom/metamoji/video/AmvMarkerView;->access$hitTestIndex(Lcom/metamoji/video/AmvMarkerView;I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->marker:I

    if-ltz p1, :cond_7

    .line 303
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->x:F

    .line 304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->y:F

    .line 305
    iget p2, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->x:F

    iput p2, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->xOrg:F

    .line 306
    iput p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->yOrg:F

    .line 307
    iput-boolean v0, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->tapping:Z

    .line 308
    iget-object p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->this$0:Lcom/metamoji/video/AmvMarkerView;

    invoke-static {p1}, Lcom/metamoji/video/AmvMarkerView;->access$getMMarkers$p(Lcom/metamoji/video/AmvMarkerView;)Lcom/metamoji/lib/utils/SortedList;

    move-result-object p2

    iget v0, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->marker:I

    invoke-virtual {p2, v0}, Lcom/metamoji/lib/utils/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/video/AmvMarkerView;->setHighLightMarker(J)V

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v2, 0x2

    if-nez p1, :cond_3

    goto :goto_2

    .line 311
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_5

    :goto_2
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 312
    :cond_5
    iget p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->marker:I

    if-ltz p1, :cond_7

    .line 313
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->x:F

    .line 314
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->y:F

    .line 315
    iget p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->x:F

    iget p2, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->xOrg:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->this$0:Lcom/metamoji/video/AmvMarkerView;

    invoke-static {p2}, Lcom/metamoji/video/AmvMarkerView;->access$getMMarkerWidth$p(Lcom/metamoji/video/AmvMarkerView;)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_6

    iget p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->y:F

    iget p2, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->yOrg:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->this$0:Lcom/metamoji/video/AmvMarkerView;

    invoke-static {p2}, Lcom/metamoji/video/AmvMarkerView;->access$getMNaturalHeight$p(Lcom/metamoji/video/AmvMarkerView;)I

    move-result p2

    div-int/2addr p2, v2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    .line 316
    :cond_6
    iput-boolean v1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->tapping:Z

    .line 317
    iget-object p1, p0, Lcom/metamoji/video/AmvMarkerView$TouchManager;->this$0:Lcom/metamoji/video/AmvMarkerView;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvMarkerView;->resetHighLightMarker()V

    :cond_7
    :goto_3
    return v1
.end method
