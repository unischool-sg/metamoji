.class Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Lcom/metamoji/nt/IUndoOrRedoEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtNoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UndoOrRedoEventListeners"
.end annotation


# instance fields
.field _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/IUndoOrRedoEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;->_listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method add(Lcom/metamoji/nt/IUndoOrRedoEventHandler;)V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public didUndoOrRedo(Z)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/IUndoOrRedoEventHandler;

    .line 461
    invoke-interface {v1, p1}, Lcom/metamoji/nt/IUndoOrRedoEventHandler;->didUndoOrRedo(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method remove(Lcom/metamoji/nt/IUndoOrRedoEventHandler;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeAll()V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public willUndoOrRedo(Z)V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/IUndoOrRedoEventHandler;

    .line 448
    invoke-interface {v1, p1}, Lcom/metamoji/nt/IUndoOrRedoEventHandler;->willUndoOrRedo(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
