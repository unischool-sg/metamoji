.class Lcom/metamoji/nt/NtEditorWindowController$33;
.super Lcom/metamoji/sd/SdSuccessBlock;
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

.field final synthetic val$editor:Lcom/metamoji/cm/mutable/Mutable;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/mutable/Mutable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 4336
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$33;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$33;->val$editor:Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

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

    .line 4336
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController$33;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4339
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController$33;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4340
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$33;->val$editor:Lcom/metamoji/cm/mutable/Mutable;

    const-string v2, "editor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v1, v0}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
