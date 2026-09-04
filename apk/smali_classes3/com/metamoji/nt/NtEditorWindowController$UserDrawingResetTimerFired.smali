.class Lcom/metamoji/nt/NtEditorWindowController$UserDrawingResetTimerFired;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtEditorWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserDrawingResetTimerFired"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5192
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$UserDrawingResetTimerFired;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5195
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$UserDrawingResetTimerFired;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fgetm_userDrawingFlag(Lcom/metamoji/nt/NtEditorWindowController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5196
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$UserDrawingResetTimerFired;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fputm_userDrawingFlag(Lcom/metamoji/nt/NtEditorWindowController;Z)V

    .line 5199
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$UserDrawingResetTimerFired;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->onUserDrawingEnd()V

    .line 5200
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$UserDrawingResetTimerFired;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingEndEvent:Lcom/metamoji/cm/CmEventListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
