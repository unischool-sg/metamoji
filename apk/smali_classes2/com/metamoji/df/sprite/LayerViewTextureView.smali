.class Lcom/metamoji/df/sprite/LayerViewTextureView;
.super Landroid/view/TextureView;
.source "LayerViewTextureView.java"

# interfaces
.implements Lcom/metamoji/df/sprite/LayerView;


# static fields
.field private static final ENABLED_DIRTY_RECT:I = 0x1

.field static MIN_PAINT_INTERVAL:J


# instance fields
.field private available:Z

.field private ctx:Lcom/metamoji/df/sprite/CanvasContext;

.field private dirtyRect:Landroid/graphics/RectF;

.field private eventHandling:Z

.field private flags:I

.field private lastPaint:J

.field private layer:Lcom/metamoji/df/sprite/Layer;

.field private surfaceRect:Landroid/graphics/RectF;

.field private surfaceSize:Landroid/graphics/Point;

.field syncCanvas:Ljava/lang/Object;

.field private work:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic -$$Nest$fgetsurfaceRect(Lcom/metamoji/df/sprite/LayerViewTextureView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsurfaceSize(Lcom/metamoji/df/sprite/LayerViewTextureView;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceSize:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputavailable(Lcom/metamoji/df/sprite/LayerViewTextureView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->available:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclear(Lcom/metamoji/df/sprite/LayerViewTextureView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->clear()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mforceUpdate(Lcom/metamoji/df/sprite/LayerViewTextureView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->forceUpdate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->lastPaint:J

    .line 64
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceSize:Landroid/graphics/Point;

    .line 65
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceRect:Landroid/graphics/RectF;

    .line 68
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->dirtyRect:Landroid/graphics/RectF;

    .line 71
    new-instance p1, Lcom/metamoji/df/sprite/CanvasContext;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/CanvasContext;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    .line 80
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->work:Landroid/graphics/Rect;

    .line 136
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->syncCanvas:Ljava/lang/Object;

    .line 37
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 29
    iput-wide p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->lastPaint:J

    .line 64
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceSize:Landroid/graphics/Point;

    .line 65
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceRect:Landroid/graphics/RectF;

    .line 68
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->dirtyRect:Landroid/graphics/RectF;

    .line 71
    new-instance p1, Lcom/metamoji/df/sprite/CanvasContext;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/CanvasContext;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    .line 80
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->work:Landroid/graphics/Rect;

    .line 136
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->syncCanvas:Ljava/lang/Object;

    .line 45
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    .line 29
    iput-wide p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->lastPaint:J

    .line 64
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceSize:Landroid/graphics/Point;

    .line 65
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceRect:Landroid/graphics/RectF;

    .line 68
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->dirtyRect:Landroid/graphics/RectF;

    .line 71
    new-instance p1, Lcom/metamoji/df/sprite/CanvasContext;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/CanvasContext;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    .line 80
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->work:Landroid/graphics/Rect;

    .line 136
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->syncCanvas:Ljava/lang/Object;

    .line 54
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->setup()V

    return-void
.end method

.method private IS_ENABLED_DIRTY_RECT()Z
    .locals 2

    .line 75
    iget v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private SET_ENABLED_DIRTY_RECT(Z)I
    .locals 1

    .line 76
    iget v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x1

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x2

    goto :goto_0
.end method

.method private clear()V
    .locals 1

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->internalClear()V

    .line 164
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private forceUpdate()V
    .locals 2

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->layer:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->isOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->layer:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Layer;->forceUpdate(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 156
    throw v1

    .line 158
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private internalClear()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->syncCanvas:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 179
    :try_start_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 182
    throw v2

    .line 184
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private monitorNotify()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->layer:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->isOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->layer:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->monitorNotify()V

    :cond_0
    return-void
.end method

.method private name()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->layer:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->isOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "overlay"

    return-object v0

    :cond_0
    const-string v0, "main"

    return-object v0

    :cond_1
    const-string v0, "null"

    return-object v0
.end method

.method private paint(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 7

    .line 305
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->layer:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->isOverlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 307
    iget-wide v2, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->lastPaint:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 308
    sget-wide v4, Lcom/metamoji/df/sprite/LayerViewTextureView;->MIN_PAINT_INTERVAL:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    sub-long/2addr v4, v2

    .line 310
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :catch_0
    :cond_0
    iput-wide v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->lastPaint:J

    :cond_1
    const/4 v0, 0x0

    .line 318
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 320
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->layer:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    iget-object v1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/sprite/CanvasContext;->setSize(II)V

    .line 322
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/CanvasContext;->setCanvas(Landroid/graphics/Canvas;)V

    .line 323
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/CanvasContext;->getDirtyRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/sprite/LayerViewTextureView;->roundOutTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 324
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/CanvasContext;->getDirtyRect()Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 325
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    iget-object p2, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->layer:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Layer;->isDetail()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/CanvasContext;->setDetailWindow(Z)V

    .line 326
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->layer:Lcom/metamoji/df/sprite/Layer;

    iget-object p2, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Layer;->paint(Lcom/metamoji/df/sprite/CanvasContext;)V

    :cond_2
    return-void
.end method

.method private roundOutTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->work:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 83
    iget-object p2, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->work:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private setup()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->setOpaque(Z)V

    .line 91
    new-instance v0, Lcom/metamoji/df/sprite/LayerViewTextureView$1;

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/LayerViewTextureView$1;-><init>(Lcom/metamoji/df/sprite/LayerViewTextureView;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private tag()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayerView("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private update(Landroid/graphics/RectF;)V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->syncCanvas:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-boolean v1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->available:Z

    if-nez v1, :cond_0

    .line 192
    monitor-exit v0

    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    .line 197
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->paint(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :goto_0
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 199
    :try_start_3
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->tag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "update() error."

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 201
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 202
    throw p1

    .line 204
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method private updateIfNeeded()Z
    .locals 2

    .line 232
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->IS_ENABLED_DIRTY_RECT()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->dirtyRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->update(Landroid/graphics/RectF;)V

    .line 234
    invoke-direct {p0, v1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->SET_ENABLED_DIRTY_RECT(Z)I

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private updateIfNeededRect()V
    .locals 1

    .line 244
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->IS_ENABLED_DIRTY_RECT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->dirtyRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->updateRect(Landroid/graphics/RectF;)V

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->SET_ENABLED_DIRTY_RECT(Z)I

    :cond_0
    return-void
.end method

.method private updateRect(Landroid/graphics/RectF;)V
    .locals 2

    .line 210
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->syncCanvas:Ljava/lang/Object;

    monitor-enter p1

    .line 211
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->available:Z

    if-nez v0, :cond_0

    .line 212
    monitor-exit p1

    return-void

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 219
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->paint(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 222
    throw v1

    .line 224
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public asView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 399
    iput-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->layer:Lcom/metamoji/df/sprite/Layer;

    return-void
.end method

.method public eventStart()V
    .locals 1

    .line 351
    monitor-enter p0

    const/4 v0, 0x1

    .line 352
    :try_start_0
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->eventHandling:Z

    .line 354
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public eventStop()V
    .locals 1

    .line 360
    monitor-enter p0

    const/4 v0, 0x0

    .line 361
    :try_start_0
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->eventHandling:Z

    .line 363
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->monitorNotify()V

    return-void

    :catchall_0
    move-exception v0

    .line 363
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLayer()Lcom/metamoji/df/sprite/Layer;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->layer:Lcom/metamoji/df/sprite/Layer;

    return-object v0
.end method

.method public getSurfaceRect()Landroid/graphics/RectF;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSurfaceSize()Landroid/graphics/Point;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceSize:Landroid/graphics/Point;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->syncCanvas:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLayer(Lcom/metamoji/df/sprite/Layer;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->layer:Lcom/metamoji/df/sprite/Layer;

    return-void
.end method

.method public setNeedsDisplay()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->surfaceRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->setNeedsDisplay(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setNeedsDisplay(Landroid/graphics/RectF;)V
    .locals 2

    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->IS_ENABLED_DIRTY_RECT()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 258
    iget-object v1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->dirtyRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 256
    :try_start_1
    invoke-static {v1, p1}, Lcom/metamoji/df/sprite/Geometry;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->dirtyRect:Landroid/graphics/RectF;

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 p1, 0x1

    .line 259
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->SET_ENABLED_DIRTY_RECT(Z)I

    .line 261
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 266
    monitor-enter p0

    .line 267
    :try_start_2
    iget-boolean p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->eventHandling:Z

    if-nez p1, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->monitorNotify()V

    .line 270
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 261
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public tick()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->available:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 338
    :cond_0
    monitor-enter p0

    .line 339
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->updateIfNeeded()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 340
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateFromMonitor()V
    .locals 2

    .line 371
    monitor-enter p0

    .line 372
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->eventHandling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 374
    :try_start_1
    iput-boolean v1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->eventHandling:Z

    .line 377
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->updateIfNeededRect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    :try_start_2
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->eventHandling:Z

    .line 383
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 380
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/LayerViewTextureView;->eventHandling:Z

    .line 382
    throw v1

    :catchall_1
    move-exception v0

    .line 383
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
