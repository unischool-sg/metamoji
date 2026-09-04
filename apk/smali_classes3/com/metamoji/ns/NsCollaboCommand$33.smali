.class Lcom/metamoji/ns/NsCollaboCommand$33;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->changeCollaboMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/ns/NsCollaboManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2808
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$33;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$33;->val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2811
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$33$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboCommand$33$1;-><init>(Lcom/metamoji/ns/NsCollaboCommand$33;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    .line 2830
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$33;->val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->executeConnectRoomAfterAction(Z)V

    return-void
.end method
