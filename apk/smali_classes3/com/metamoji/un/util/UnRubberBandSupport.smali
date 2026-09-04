.class public Lcom/metamoji/un/util/UnRubberBandSupport;
.super Ljava/lang/Object;
.source "UnRubberBandSupport.java"

# interfaces
.implements Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;
    }
.end annotation


# instance fields
.field _callback:Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;

.field private _enableVisible:Z

.field _owner:Lcom/metamoji/nt/NtUnitController;

.field _rubberBand:Lcom/metamoji/un/util/UnSelectRubberBand;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_enableVisible:Z

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_rubberBand:Lcom/metamoji/un/util/UnSelectRubberBand;

    .line 62
    iput-object p1, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_owner:Lcom/metamoji/nt/NtUnitController;

    .line 63
    iput-object p2, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_callback:Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;

    return-void
.end method


# virtual methods
.method public begin(Lcom/metamoji/rb/RbConstants$Activity;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_rubberBand:Lcom/metamoji/un/util/UnSelectRubberBand;

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Lcom/metamoji/un/util/UnSelectRubberBand;

    invoke-direct {v0}, Lcom/metamoji/un/util/UnSelectRubberBand;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_rubberBand:Lcom/metamoji/un/util/UnSelectRubberBand;

    .line 80
    invoke-virtual {v0, p0}, Lcom/metamoji/un/util/UnSelectRubberBand;->setSelectRubberBand(Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;)V

    .line 81
    invoke-virtual {p1}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_rubberBand:Lcom/metamoji/un/util/UnSelectRubberBand;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/util/UnSelectRubberBand;->setHandleVisibility(Lcom/metamoji/rb/RbConstants$Activity;)V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_rubberBand:Lcom/metamoji/un/util/UnSelectRubberBand;

    invoke-virtual {p1}, Lcom/metamoji/un/util/UnSelectRubberBand;->setDefaultRubberBandStyle()V

    .line 85
    iget-object p1, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_rubberBand:Lcom/metamoji/un/util/UnSelectRubberBand;

    invoke-virtual {p1}, Lcom/metamoji/un/util/UnSelectRubberBand;->updateRubberBand()V

    :cond_1
    return-void
.end method

.method public end()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_rubberBand:Lcom/metamoji/un/util/UnSelectRubberBand;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/metamoji/un/util/UnSelectRubberBand;->disposeRubberBand()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_rubberBand:Lcom/metamoji/un/util/UnSelectRubberBand;

    :cond_0
    return-void
.end method

.method public getRubberBandUnit()Lcom/metamoji/nt/NtUnitController;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_owner:Lcom/metamoji/nt/NtUnitController;

    return-object v0
.end method

.method public getRubberBandUnitSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_owner:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    return-object v0
.end method

.method public hitTestRubberBand(Lcom/metamoji/rb/RbRubberBandAction;Landroid/graphics/PointF;)Lcom/metamoji/rb/RbConstants$Activity;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_callback:Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;->hitTest(Lcom/metamoji/rb/RbRubberBandAction;Landroid/graphics/PointF;)Lcom/metamoji/rb/RbConstants$Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/rb/RbRubberBandAction;->activity()Lcom/metamoji/rb/RbConstants$Activity;

    move-result-object p1

    return-object p1
.end method

.method public isVisibleRubberBand()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_enableVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_owner:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyInBoundsTapped(Landroid/graphics/PointF;Z)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_callback:Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;->notifyInBoundsTapped(Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public notifyOutOfBoundsTapped(Landroid/graphics/PointF;Z)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_callback:Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;->notifyOutOfBoundsTapped(Landroid/graphics/PointF;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_owner:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus()V

    return-void
.end method

.method public rubberBandChanged(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/GeometricProps;)Z
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_callback:Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;

    invoke-interface {v0, p2}, Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;->onRubberBandChanged(Lcom/metamoji/df/controller/GeometricProps;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_owner:Lcom/metamoji/nt/NtUnitController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUnitController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_owner:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v1, p2, v0}, Lcom/metamoji/nt/NtUnitController;->notifyGeometricPropsChangedToParent(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 153
    iget-object v1, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_owner:Lcom/metamoji/nt/NtUnitController;

    sget-object v2, Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;->None:Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;

    invoke-virtual {v1, p1, v0, v2}, Lcom/metamoji/nt/NtUnitController;->setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_owner:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtUnitController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return p2
.end method

.method public setEnableVisible(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_enableVisible:Z

    return-void
.end method

.method public update()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/metamoji/un/util/UnRubberBandSupport;->_rubberBand:Lcom/metamoji/un/util/UnSelectRubberBand;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/metamoji/un/util/UnSelectRubberBand;->updateRubberBand()V

    :cond_0
    return-void
.end method
