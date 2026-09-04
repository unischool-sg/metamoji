.class Lcom/metamoji/nt/NtNoteController$26;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->clearLaserPointer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4171
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$26;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 4174
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$26;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v0}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fget_laserLayer(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/ui/LaserPointerCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/LaserPointerCanvas;->clear()V

    .line 4175
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 4176
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4178
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getNameTipInfoView()Lcom/metamoji/nt/NtNameTipInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4180
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNameTipInfoView;->hideAllLabels()V

    :cond_0
    return-void
.end method
