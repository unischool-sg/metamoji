.class Lcom/metamoji/nt/NtEditorWindowController$25;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->noteTemplateSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

.field final synthetic val$doc:Lcom/metamoji/nt/NtDocument;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/ui/dialog/DocumentSettings2;Lcom/metamoji/nt/NtDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3657
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$25;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$25;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    iput-object p3, p0, Lcom/metamoji/nt/NtEditorWindowController$25;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 3661
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/metamoji/nt/NtEditorWindowController$25$1;

    invoke-direct {p2, p0}, Lcom/metamoji/nt/NtEditorWindowController$25$1;-><init>(Lcom/metamoji/nt/NtEditorWindowController$25;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
