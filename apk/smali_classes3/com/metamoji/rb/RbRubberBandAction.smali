.class public Lcom/metamoji/rb/RbRubberBandAction;
.super Ljava/lang/Object;
.source "RbRubberBandAction.java"


# instance fields
.field private m_activity:Lcom/metamoji/rb/RbConstants$Activity;

.field private m_center:Landroid/graphics/PointF;

.field private m_da:F

.field private m_dh:F

.field private m_dw:F

.field private m_dx:F

.field private m_dy:F

.field private m_scale:Landroid/graphics/PointF;

.field private m_type:Lcom/metamoji/rb/RbConstants$ActionType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/metamoji/rb/RbConstants$ActionType;->REACTED:Lcom/metamoji/rb/RbConstants$ActionType;

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_type:Lcom/metamoji/rb/RbConstants$ActionType;

    .line 30
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_activity:Lcom/metamoji/rb/RbConstants$Activity;

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_center:Landroid/graphics/PointF;

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_scale:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public activity()Lcom/metamoji/rb/RbConstants$Activity;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_activity:Lcom/metamoji/rb/RbConstants$Activity;

    return-object v0
.end method

.method public center()Landroid/graphics/PointF;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_center:Landroid/graphics/PointF;

    return-object v0
.end method

.method public da()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_da:F

    return v0
.end method

.method public dh()F
    .locals 1

    .line 45
    iget v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_dh:F

    return v0
.end method

.method public dw()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_dw:F

    return v0
.end method

.method public dx()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_dx:F

    return v0
.end method

.method public dy()F
    .locals 1

    .line 43
    iget v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_dy:F

    return v0
.end method

.method public scale()Landroid/graphics/PointF;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_scale:Landroid/graphics/PointF;

    return-object v0
.end method

.method protected setActivity(Lcom/metamoji/rb/RbConstants$Activity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_activity:Lcom/metamoji/rb/RbConstants$Activity;

    return-void
.end method

.method protected setCenter(Landroid/graphics/PointF;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_center:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method protected setDa(F)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_da:F

    return-void
.end method

.method protected setDh(F)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_dh:F

    return-void
.end method

.method protected setDw(F)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_dw:F

    return-void
.end method

.method protected setDx(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_dx:F

    return-void
.end method

.method protected setDy(F)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_dy:F

    return-void
.end method

.method protected setScale(Landroid/graphics/PointF;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_scale:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method protected setType(Lcom/metamoji/rb/RbConstants$ActionType;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_type:Lcom/metamoji/rb/RbConstants$ActionType;

    return-void
.end method

.method public type()Lcom/metamoji/rb/RbConstants$ActionType;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBandAction;->m_type:Lcom/metamoji/rb/RbConstants$ActionType;

    return-object v0
.end method
