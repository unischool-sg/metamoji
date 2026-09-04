.class Lcom/metamoji/df/sprite/Viewport$2;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private idA:I

.field private idB:I

.field private moved:Z

.field final synthetic this$0:Lcom/metamoji/df/sprite/Viewport;

.field private vA:Lcom/metamoji/df/sprite/Velocity;

.field private vB:Lcom/metamoji/df/sprite/Velocity;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance p1, Lcom/metamoji/df/sprite/Velocity;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/metamoji/df/sprite/Velocity;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->vA:Lcom/metamoji/df/sprite/Velocity;

    .line 186
    new-instance p1, Lcom/metamoji/df/sprite/Velocity;

    invoke-direct {p1, v0}, Lcom/metamoji/df/sprite/Velocity;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->vB:Lcom/metamoji/df/sprite/Velocity;

    return-void
.end method


# virtual methods
.method public panCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 309
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->endScreenShot()V

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetglimpse(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Glimpse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 313
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 314
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Layer;->setOverRenderer(Lcom/metamoji/df/sprite/Renderer;)V

    .line 316
    :cond_1
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1, v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fputglimpse(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Glimpse;)V

    .line 318
    :cond_2
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/ViewportListener;->scrollEnd(Z)V

    return-void
.end method

.method public panEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 7

    .line 258
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getEventTime()J

    move-result-wide v0

    .line 259
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 261
    invoke-interface {p1, v3}, Lcom/metamoji/df/sprite/TouchEvent;->getPointerId(I)I

    move-result v2

    .line 262
    invoke-interface {p1, v2}, Lcom/metamoji/df/sprite/TouchEvent;->getPointer(I)Landroid/graphics/PointF;

    move-result-object p1

    .line 263
    iget v5, p0, Lcom/metamoji/df/sprite/Viewport$2;->idA:I

    if-ne v2, v5, :cond_0

    .line 264
    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport$2;->vA:Lcom/metamoji/df/sprite/Velocity;

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v5, p1, v0, v1}, Lcom/metamoji/df/sprite/Velocity;->end(FFJ)V

    goto :goto_0

    .line 265
    :cond_0
    iget v5, p0, Lcom/metamoji/df/sprite/Viewport$2;->idB:I

    if-ne v2, v5, :cond_2

    .line 266
    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport$2;->vB:Lcom/metamoji/df/sprite/Velocity;

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v5, p1, v0, v1}, Lcom/metamoji/df/sprite/Velocity;->end(FFJ)V

    goto :goto_0

    .line 269
    :cond_1
    iget v2, p0, Lcom/metamoji/df/sprite/Viewport$2;->idA:I

    invoke-interface {p1, v2}, Lcom/metamoji/df/sprite/TouchEvent;->getPointer(I)Landroid/graphics/PointF;

    move-result-object v2

    .line 270
    iget v5, p0, Lcom/metamoji/df/sprite/Viewport$2;->idB:I

    invoke-interface {p1, v5}, Lcom/metamoji/df/sprite/TouchEvent;->getPointer(I)Landroid/graphics/PointF;

    move-result-object p1

    .line 271
    iget-object v5, p0, Lcom/metamoji/df/sprite/Viewport$2;->vA:Lcom/metamoji/df/sprite/Velocity;

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v2, v0, v1}, Lcom/metamoji/df/sprite/Velocity;->end(FFJ)V

    .line 272
    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport$2;->vB:Lcom/metamoji/df/sprite/Velocity;

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v5, p1, v0, v1}, Lcom/metamoji/df/sprite/Velocity;->end(FFJ)V

    .line 274
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->vA:Lcom/metamoji/df/sprite/Velocity;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Velocity;->getLastTime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->vB:Lcom/metamoji/df/sprite/Velocity;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Velocity;->getLastTime()J

    move-result-wide v5

    cmp-long p1, v0, v5

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->vA:Lcom/metamoji/df/sprite/Velocity;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->vB:Lcom/metamoji/df/sprite/Velocity;

    :goto_1
    iget-object p1, p1, Lcom/metamoji/df/sprite/Velocity;->value:Landroid/graphics/PointF;

    .line 275
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/Viewport$2;->moved:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 279
    :cond_4
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$mturnOverPage(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Glimpse$Required;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    if-eqz v0, :cond_5

    .line 281
    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/metamoji/df/sprite/ViewportListener;->scrollEnd(Z)V

    .line 282
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetturnOver(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/TurnOverMediator;

    move-result-object p1

    iget-boolean v0, v0, Lcom/metamoji/df/sprite/Glimpse$Required;->next:Z

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TurnOverMediator;->turnOverStart(Z)V

    return-void

    .line 285
    :cond_5
    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$mpanScrollRebound(Lcom/metamoji/df/sprite/Viewport;)Z

    move-result v0

    .line 290
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    if-eqz v0, :cond_6

    .line 286
    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/metamoji/df/sprite/ViewportListener;->scrollEnd(Z)V

    .line 287
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/sprite/ViewportListener;->scrollInertiaStart()V

    return-void

    .line 290
    :cond_6
    invoke-static {v1, p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$mdecelerate(Lcom/metamoji/df/sprite/Viewport;Landroid/graphics/PointF;)Z

    move-result p1

    .line 295
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    if-eqz p1, :cond_7

    .line 291
    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/metamoji/df/sprite/ViewportListener;->scrollEnd(Z)V

    .line 292
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/sprite/ViewportListener;->scrollInertiaStart()V

    return-void

    .line 295
    :cond_7
    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 296
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->endScreenShot()V

    .line 298
    :cond_8
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetglimpse(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Glimpse;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 299
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 300
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Layer;->setOverRenderer(Lcom/metamoji/df/sprite/Renderer;)V

    .line 302
    :cond_9
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1, v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fputglimpse(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Glimpse;)V

    .line 304
    :cond_a
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/metamoji/df/sprite/ViewportListener;->scrollEnd(Z)V

    return-void
.end method

.method public panMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 6

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/Viewport$2;->moved:Z

    .line 222
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getEventTime()J

    move-result-wide v1

    .line 223
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v0, :cond_2

    const/4 v0, 0x0

    .line 225
    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TouchEvent;->getPointerId(I)I

    move-result v0

    .line 226
    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TouchEvent;->getPointer(I)Landroid/graphics/PointF;

    move-result-object p1

    .line 227
    iget v3, p0, Lcom/metamoji/df/sprite/Viewport$2;->idA:I

    if-ne v0, v3, :cond_0

    .line 228
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$2;->vA:Lcom/metamoji/df/sprite/Velocity;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/metamoji/df/sprite/Velocity;->move(FFJ)V

    goto :goto_0

    .line 230
    :cond_0
    iget v3, p0, Lcom/metamoji/df/sprite/Viewport$2;->idB:I

    if-ne v0, v3, :cond_1

    .line 231
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$2;->vB:Lcom/metamoji/df/sprite/Velocity;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/metamoji/df/sprite/Velocity;->move(FFJ)V

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 234
    :cond_2
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport$2;->idA:I

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TouchEvent;->getPointer(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 236
    iget-object v3, p0, Lcom/metamoji/df/sprite/Viewport$2;->vA:Lcom/metamoji/df/sprite/Velocity;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/metamoji/df/sprite/Velocity;->move(FFJ)V

    .line 238
    :cond_3
    iget v3, p0, Lcom/metamoji/df/sprite/Viewport$2;->idB:I

    invoke-interface {p1, v3}, Lcom/metamoji/df/sprite/TouchEvent;->getPointer(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 240
    iget-object v3, p0, Lcom/metamoji/df/sprite/Viewport$2;->vB:Lcom/metamoji/df/sprite/Velocity;

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, p1, v1, v2}, Lcom/metamoji/df/sprite/Velocity;->move(FFJ)V

    :cond_4
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_6

    .line 244
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 245
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 246
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetdirLock(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/DirectionalLock;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/metamoji/df/sprite/DirectionalLock;->move(FF)V

    .line 247
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetdirLock(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/DirectionalLock;

    move-result-object p1

    iget p1, p1, Lcom/metamoji/df/sprite/DirectionalLock;->x:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetdirLock(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/DirectionalLock;

    move-result-object p1

    iget p1, p1, Lcom/metamoji/df/sprite/DirectionalLock;->y:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_5

    .line 248
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetdirLock(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/DirectionalLock;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/df/sprite/DirectionalLock;->x:F

    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetdirLock(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/DirectionalLock;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/df/sprite/DirectionalLock;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setScrollTranslate(FF)V

    .line 250
    :cond_5
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/sprite/ViewportListener;->scrollChanging()V

    :cond_6
    return-void
.end method

.method public panStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 7

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/Viewport$2;->moved:Z

    .line 193
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPointerCount()I

    move-result v1

    .line 194
    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TouchEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/Viewport$2;->idA:I

    .line 195
    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TouchEvent;->getPointer(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 196
    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport$2;->vA:Lcom/metamoji/df/sprite/Velocity;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/metamoji/df/sprite/Velocity;->start(FFJ)V

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 198
    invoke-interface {p1, v2}, Lcom/metamoji/df/sprite/TouchEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/metamoji/df/sprite/Viewport$2;->idB:I

    .line 199
    invoke-interface {p1, v1}, Lcom/metamoji/df/sprite/TouchEvent;->getPointer(I)Landroid/graphics/PointF;

    move-result-object v1

    .line 200
    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport$2;->vB:Lcom/metamoji/df/sprite/Velocity;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/metamoji/df/sprite/Velocity;->start(FFJ)V

    .line 202
    :cond_0
    iget p1, v0, Landroid/graphics/PointF;->x:F

    .line 203
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 204
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetdirLock(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/DirectionalLock;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v2}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetscrollTranslate(Lcom/metamoji/df/sprite/Viewport;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/metamoji/df/sprite/DirectionalLock;->begin(FFLandroid/graphics/PointF;)V

    .line 205
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    iget-boolean p1, p1, Lcom/metamoji/df/sprite/Viewport;->useScreenShotPanPinch:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->beginScreenShot()V

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetenabledTurnOver(Lcom/metamoji/df/sprite/Viewport;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetturnOver(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/TurnOverMediator;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 209
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    new-instance v0, Lcom/metamoji/df/sprite/Glimpse;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetturnOver(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/TurnOverMediator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/Glimpse;-><init>(Lcom/metamoji/df/sprite/TurnOverMediator;)V

    invoke-static {p1, v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fputglimpse(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Glimpse;)V

    .line 210
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 211
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetglimpse(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Glimpse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Layer;->setOverRenderer(Lcom/metamoji/df/sprite/Renderer;)V

    .line 214
    :cond_2
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$2;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/sprite/ViewportListener;->scrollStart()V

    return-void
.end method
