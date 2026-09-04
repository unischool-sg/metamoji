.class public abstract Lcom/metamoji/mazec/stroke/StrokeDrawer;
.super Ljava/lang/Object;
.source "StrokeDrawer.java"


# instance fields
.field protected mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

.field protected mStrokeDrawableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            "Lcom/metamoji/mazec/stroke/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected mStyleResolver:Lcom/metamoji/mazec/stroke/StrokeStyleResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer;->mStrokeDrawableMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    .line 17
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer;->mStyleResolver:Lcom/metamoji/mazec/stroke/StrokeStyleResolver;

    return-void
.end method


# virtual methods
.method public abstract addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)Landroid/graphics/RectF;
.end method

.method public attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    return-void
.end method

.method public abstract canDraw(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z
.end method

.method public abstract cancelStroke()V
.end method

.method public clearPathCache()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer;->mStrokeDrawableMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 1

    .line 146
    invoke-virtual {p3}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/Matrix;Lcom/metamoji/mazec/stroke/HwStroke;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 1

    .line 141
    invoke-virtual {p2}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/HwStroke;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/Matrix;Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 1

    .line 215
    invoke-virtual {p0, p4}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->drawableForStroke(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/metamoji/mazec/stroke/drawable/Drawable;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 217
    iget-object p3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer;->mStyleResolver:Lcom/metamoji/mazec/stroke/StrokeStyleResolver;

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/metamoji/mazec/stroke/drawable/Drawable;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/StrokeStyleResolver;Z)V

    return-void

    .line 219
    :cond_0
    invoke-interface {p4, p3}, Lcom/metamoji/mazec/stroke/drawable/Drawable;->transform(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/drawable/Drawable;

    move-result-object p3

    .line 220
    iget-object p4, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer;->mStyleResolver:Lcom/metamoji/mazec/stroke/StrokeStyleResolver;

    invoke-interface {p3, p1, p2, p4, v0}, Lcom/metamoji/mazec/stroke/drawable/Drawable;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/StrokeStyleResolver;Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer;->mStrokeDrawableMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/stroke/drawable/Drawable;

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p0, p3}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->drawableForStroke(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/metamoji/mazec/stroke/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer;->mStrokeDrawableMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_1
    iget-object p3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer;->mStyleResolver:Lcom/metamoji/mazec/stroke/StrokeStyleResolver;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/metamoji/mazec/stroke/drawable/Drawable;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/StrokeStyleResolver;Z)V

    return-void
.end method

.method public abstract drawableForStroke(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/metamoji/mazec/stroke/drawable/Drawable;
.end method

.method public abstract endStroke()Landroid/graphics/RectF;
.end method

.method public abstract getCurrentDrawable()Lcom/metamoji/mazec/stroke/drawable/Drawable;
.end method

.method public setStrokeStyleResolver(Lcom/metamoji/mazec/stroke/StrokeStyleResolver;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer;->mStyleResolver:Lcom/metamoji/mazec/stroke/StrokeStyleResolver;

    return-void
.end method
