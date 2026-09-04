.class Lcom/metamoji/df/sprite/DirectionalLock;
.super Ljava/lang/Object;
.source "DirectionalLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/sprite/DirectionalLock$St;,
        Lcom/metamoji/df/sprite/DirectionalLock$Undetermined;,
        Lcom/metamoji/df/sprite/DirectionalLock$Vertical;,
        Lcom/metamoji/df/sprite/DirectionalLock$Horizontal;
    }
.end annotation


# instance fields
.field private base:Landroid/graphics/PointF;

.field private begin:Landroid/graphics/PointF;

.field private enabled:Z

.field private st:Lcom/metamoji/df/sprite/DirectionalLock$St;

.field x:F

.field y:F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/DirectionalLock;->begin:Landroid/graphics/PointF;

    .line 16
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/DirectionalLock;->base:Landroid/graphics/PointF;

    .line 100
    new-instance v0, Lcom/metamoji/df/sprite/DirectionalLock$St;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/metamoji/df/sprite/DirectionalLock$St;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/DirectionalLock;->st:Lcom/metamoji/df/sprite/DirectionalLock$St;

    return-void
.end method


# virtual methods
.method begin(FFLandroid/graphics/PointF;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/metamoji/df/sprite/DirectionalLock;->begin:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 125
    iget-object p1, p0, Lcom/metamoji/df/sprite/DirectionalLock;->base:Landroid/graphics/PointF;

    invoke-virtual {p1, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 126
    iget-boolean p1, p0, Lcom/metamoji/df/sprite/DirectionalLock;->enabled:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/metamoji/df/sprite/DirectionalLock$Undetermined;

    invoke-direct {p1, p2, p2}, Lcom/metamoji/df/sprite/DirectionalLock$Undetermined;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/metamoji/df/sprite/DirectionalLock$St;

    invoke-direct {p1, p2, p2}, Lcom/metamoji/df/sprite/DirectionalLock$St;-><init>(FF)V

    :goto_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/DirectionalLock;->st:Lcom/metamoji/df/sprite/DirectionalLock$St;

    return-void
.end method

.method isEnabled()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/DirectionalLock;->enabled:Z

    return v0
.end method

.method move(FF)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/metamoji/df/sprite/DirectionalLock;->begin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    .line 136
    iget-object v0, p0, Lcom/metamoji/df/sprite/DirectionalLock;->begin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    .line 138
    iget-object v0, p0, Lcom/metamoji/df/sprite/DirectionalLock;->st:Lcom/metamoji/df/sprite/DirectionalLock$St;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/df/sprite/DirectionalLock$St;->process(FF)Lcom/metamoji/df/sprite/DirectionalLock$St;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/DirectionalLock;->st:Lcom/metamoji/df/sprite/DirectionalLock$St;

    .line 140
    iget-object p1, p0, Lcom/metamoji/df/sprite/DirectionalLock;->base:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcom/metamoji/df/sprite/DirectionalLock;->st:Lcom/metamoji/df/sprite/DirectionalLock$St;

    iget p2, p2, Lcom/metamoji/df/sprite/DirectionalLock$St;->dx:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/metamoji/df/sprite/DirectionalLock;->x:F

    .line 141
    iget-object p1, p0, Lcom/metamoji/df/sprite/DirectionalLock;->base:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object p2, p0, Lcom/metamoji/df/sprite/DirectionalLock;->st:Lcom/metamoji/df/sprite/DirectionalLock$St;

    iget p2, p2, Lcom/metamoji/df/sprite/DirectionalLock$St;->dy:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/metamoji/df/sprite/DirectionalLock;->y:F

    return-void
.end method

.method setEnabled(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/metamoji/df/sprite/DirectionalLock;->enabled:Z

    return-void
.end method
