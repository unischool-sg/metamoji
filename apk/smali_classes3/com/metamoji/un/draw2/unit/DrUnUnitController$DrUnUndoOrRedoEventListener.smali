.class Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnUndoOrRedoEventListener;
.super Ljava/lang/Object;
.source "DrUnUnitController.java"

# interfaces
.implements Lcom/metamoji/nt/IUndoOrRedoEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/unit/DrUnUnitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrUnUndoOrRedoEventListener"
.end annotation


# instance fields
.field private m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnUndoOrRedoEventListener;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnUndoOrRedoEventListener;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    return-void
.end method

.method public didUndoOrRedo(Z)V
    .locals 1

    .line 320
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnUndoOrRedoEventListener;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 325
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setIsAppUndoingOrRedoing(Z)V

    .line 328
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnUndoOrRedoEventListener;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setIgnoreInteractionsCompletion(Z)V

    return-void
.end method

.method public willUndoOrRedo(Z)V
    .locals 2

    .line 296
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnUndoOrRedoEventListener;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    if-nez p1, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->isAppUndoingOrRedoing()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 302
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnUndoOrRedoEventListener;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setIsAppUndoingOrRedoing(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 304
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 315
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnUndoOrRedoEventListener;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setIgnoreInteractionsCompletion(Z)V

    return-void
.end method
