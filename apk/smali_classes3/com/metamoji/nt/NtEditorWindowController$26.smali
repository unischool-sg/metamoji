.class Lcom/metamoji/nt/NtEditorWindowController$26;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->handleCreateDocumentFromDocumentTemplate(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$encryptor:Lcom/metamoji/cm/PBE;

.field final synthetic val$entityId:Ljava/lang/String;

.field final synthetic val$noteTemplateDocId:Ljava/lang/String;

.field final synthetic val$noteTemplateDriveId:Ljava/lang/String;

.field final synthetic val$tags:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/PBE;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
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

    .line 3845
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->val$noteTemplateDocId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->val$driveId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->val$tags:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->val$noteTemplateDriveId:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->val$entityId:Ljava/lang/String;

    iput-object p7, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->val$encryptor:Lcom/metamoji/cm/PBE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 3848
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->val$noteTemplateDocId:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Template:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Copy:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    :goto_0
    move-object v4, v0

    .line 3849
    iget-object v5, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v6, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->val$driveId:Ljava/lang/String;

    iget-object v7, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->val$tags:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->val$noteTemplateDriveId:Ljava/lang/String;

    iget-object v9, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->val$noteTemplateDocId:Ljava/lang/String;

    iget-object v10, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->val$entityId:Ljava/lang/String;

    invoke-static/range {v5 .. v10}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$mcreateDocument(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3851
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$26;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    new-instance v2, Lcom/metamoji/nt/NtEditorWindowController$26$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/nt/NtEditorWindowController$26$1;-><init>(Lcom/metamoji/nt/NtEditorWindowController$26;Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    sget-object v3, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    new-instance v6, Lcom/metamoji/nt/NtEditorWindowController$26$2;

    invoke-direct {v6, p0}, Lcom/metamoji/nt/NtEditorWindowController$26$2;-><init>(Lcom/metamoji/nt/NtEditorWindowController$26;)V

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/nt/NtEditorWindowController;->genericEditDocument(Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Z)V

    :cond_1
    return-void
.end method
