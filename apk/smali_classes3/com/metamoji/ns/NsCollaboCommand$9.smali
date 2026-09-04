.class Lcom/metamoji/ns/NsCollaboCommand$9;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->createAndEditCollaboFileWithBasicSettings(Lcom/metamoji/ns/NsCollaboBasicSettings;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$basicSettings:Lcom/metamoji/ns/NsCollaboBasicSettings;

.field final synthetic val$deleteCurrentDoc:Z

.field final synthetic val$distributeSharedDriveId:Ljava/lang/String;

.field final synthetic val$distributeSharedDriveTags:Ljava/util/List;

.field final synthetic val$docID:Ljava/lang/String;

.field final synthetic val$documentPasswordHash:Ljava/lang/String;

.field final synthetic val$documentTitle:Ljava/lang/String;

.field final synthetic val$driveID:Ljava/lang/String;

.field final synthetic val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$groupList:Ljava/util/List;

.field final synthetic val$mruDocListItem:Lcom/metamoji/nt/NtMRUDocList$MinItem;

.field final synthetic val$ret:Ljava/util/HashMap;

.field final synthetic val$snapShotDicList:Ljava/util/List;

.field final synthetic val$submitByStudent:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/util/List;Ljava/lang/String;Lcom/metamoji/ns/NsCollaboBasicSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/util/HashMap;Lcom/metamoji/nt/NtMRUDocList$MinItem;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 824
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$snapShotDicList:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$docID:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$basicSettings:Lcom/metamoji/ns/NsCollaboBasicSettings;

    iput-object p5, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$documentPasswordHash:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$documentTitle:Ljava/lang/String;

    iput-object p7, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$driveID:Ljava/lang/String;

    iput-object p8, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$distributeSharedDriveId:Ljava/lang/String;

    iput-object p9, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$distributeSharedDriveTags:Ljava/util/List;

    iput-object p10, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$groupList:Ljava/util/List;

    iput-boolean p11, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$submitByStudent:Z

    iput-object p12, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$ret:Ljava/util/HashMap;

    iput-object p13, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$mruDocListItem:Lcom/metamoji/nt/NtMRUDocList$MinItem;

    iput-boolean p14, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$deleteCurrentDoc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 7

    .line 829
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$9$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboCommand$9$1;-><init>(Lcom/metamoji/ns/NsCollaboCommand$9;)V

    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    sget-object v3, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Collaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    iget-object v4, p0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$mruDocListItem:Lcom/metamoji/nt/NtMRUDocList$MinItem;

    new-instance v5, Lcom/metamoji/ns/NsCollaboCommand$9$2;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/NsCollaboCommand$9$2;-><init>(Lcom/metamoji/ns/NsCollaboCommand$9;)V

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/nt/NtEditorWindowController;->genericEditDocument(Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Z)V

    return-void
.end method
