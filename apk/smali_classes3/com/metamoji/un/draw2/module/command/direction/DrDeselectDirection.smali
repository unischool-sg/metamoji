.class public Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrDeselectDirection.java"


# instance fields
.field private m_autoDestroySelection:Z

.field private m_removeAllSelections:Z

.field private m_selections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/module/selection/DrSelection;",
            ">;"
        }
    .end annotation
.end field

.field private m_touches:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

    return-void
.end method


# virtual methods
.method public autoDestroySelection()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_autoDestroySelection:Z

    return v0
.end method

.method protected canSave_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected destroy_()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_selections:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 158
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_selections:Ljava/util/HashSet;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_touches:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 162
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_touches:Ljava/util/HashSet;

    :cond_1
    return-void
.end method

.method protected executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 4

    .line 124
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_removeAllSelections:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->autoDestroySelection()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->removeAllSelectionsWithDestroy(Z)V

    return-object v0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_touches:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    .line 131
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->autoDestroySelection()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->removeSelectionsForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Z)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_selections:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 136
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->autoDestroySelection()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->removeSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method protected hasReverse_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected init_()Z
    .locals 1

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_selections:Ljava/util/HashSet;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_touches:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_removeAllSelections:Z

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->setAutoDestroySelection(Z)V

    return v0
.end method

.method public removeAllSelections()V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->wasExecuted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_removeAllSelections:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_removeAllSelections:Z

    .line 90
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_selections:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 91
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_touches:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public removeSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 45
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 48
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 51
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 53
    :cond_2
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_removeAllSelections:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_selections:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_selections:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public removeSelectionsForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 66
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 69
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 71
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_removeAllSelections:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_touches:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_touches:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setAutoDestroySelection(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->m_autoDestroySelection:Z

    return-void
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 108
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->DESELECT:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object v0
.end method
