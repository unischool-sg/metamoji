.class Lcom/metamoji/nt/NtEditorWindowController$34;
.super Lcom/metamoji/sd/SdFailureBlock;
.source "NtEditorWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->getDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/nt/doceditor/NtDocumentEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 4343
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$34;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Lcom/metamoji/sd/SdFailureBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4343
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController$34;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4346
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$34$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtEditorWindowController$34$1;-><init>(Lcom/metamoji/nt/NtEditorWindowController$34;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method
