.class public Lcom/metamoji/mazec/ui/DrawingStrokeModel;
.super Ljava/lang/Object;
.source "DrawingStrokeModel.java"


# instance fields
.field private mCurStroke:Lcom/metamoji/mazec/stroke/HwStroke;

.field private mGranularityType:I

.field private mIsStroking:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/ui/HwStrokeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokeDrawer:Lcom/metamoji/mazec/stroke/StrokeDrawer;

.field private mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mCurStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mIsStroking:Z

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mListeners:Ljava/util/ArrayList;

    .line 61
    sget v2, Lcom/metamoji/mazec/stroke/StrokeConstants;->DEFAULT_STROKE_COLOR:I

    invoke-static {v2, v1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->sevenNotes1ageStrokeStyle(II)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

    .line 62
    iput v1, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mGranularityType:I

    .line 64
    iput-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mStrokeDrawer:Lcom/metamoji/mazec/stroke/StrokeDrawer;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/metamoji/mazec/ui/HwStrokeListener;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNextPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mCurStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mStrokeDrawer:Lcom/metamoji/mazec/stroke/StrokeDrawer;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)Landroid/graphics/RectF;

    move-result-object p1

    .line 148
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mIsStroking:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/ui/HwStrokeListener;

    .line 151
    invoke-interface {v1, p1}, Lcom/metamoji/mazec/ui/HwStrokeListener;->notifyStroking(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addStartPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V
    .locals 3

    .line 111
    new-instance v0, Lcom/metamoji/mazec/stroke/HwStroke;

    iget-object v1, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

    iget v2, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mGranularityType:I

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/stroke/HwStroke;-><init>(Lcom/metamoji/mazec/stroke/StrokeStyle;I)V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mCurStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    .line 116
    iget-object v1, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mStrokeDrawer:Lcom/metamoji/mazec/stroke/StrokeDrawer;

    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 119
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mStrokeDrawer:Lcom/metamoji/mazec/stroke/StrokeDrawer;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)Landroid/graphics/RectF;

    .line 121
    iget-object p1, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/HwStrokeListener;

    .line 122
    invoke-interface {v0}, Lcom/metamoji/mazec/ui/HwStrokeListener;->notifyStrokePrepared()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cancelStroke()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mCurStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mCurStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mIsStroking:Z

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mStrokeDrawer:Lcom/metamoji/mazec/stroke/StrokeDrawer;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->cancelStroke()V

    :cond_1
    return-void
.end method

.method public clearListeners()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public endStroke()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mCurStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mStrokeDrawer:Lcom/metamoji/mazec/stroke/StrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->endStroke()Landroid/graphics/RectF;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mCurStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    const/4 v2, 0x0

    .line 169
    iput-object v2, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mCurStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    .line 170
    iget-object v3, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mStrokeDrawer:Lcom/metamoji/mazec/stroke/StrokeDrawer;

    invoke-virtual {v3, v2}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 172
    iget-boolean v2, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mIsStroking:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 173
    iput-boolean v2, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mIsStroking:Z

    .line 175
    iget-object v2, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/ui/HwStrokeListener;

    .line 176
    invoke-interface {v3, v1, v0}, Lcom/metamoji/mazec/ui/HwStrokeListener;->notifyStrokeEnded(Lcom/metamoji/mazec/stroke/HwStroke;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentDrawable()Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mStrokeDrawer:Lcom/metamoji/mazec/stroke/StrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->getCurrentDrawable()Lcom/metamoji/mazec/stroke/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStroke()Lcom/metamoji/mazec/stroke/HwStroke;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mCurStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    return-object v0
.end method

.method public getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

    return-object v0
.end method

.method public isDrawing()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mIsStroking:Z

    return v0
.end method

.method public removeListener(Lcom/metamoji/mazec/ui/HwStrokeListener;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setStrokeDrawer(Lcom/metamoji/mazec/stroke/StrokeDrawer;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mStrokeDrawer:Lcom/metamoji/mazec/stroke/StrokeDrawer;

    return-void
.end method

.method public setStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)V
    .locals 0

    .line 95
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->cloneImmutable()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

    return-void
.end method

.method public startStroking()V
    .locals 2

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mIsStroking:Z

    .line 134
    iget-object v0, p0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/ui/HwStrokeListener;

    .line 135
    invoke-interface {v1}, Lcom/metamoji/mazec/ui/HwStrokeListener;->notifyStrokeStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method
