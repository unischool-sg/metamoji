.class Lcom/metamoji/ns/NsCollaboCommand$7;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->createRoomSingleNoteToMultiBoxes(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtDocument;ZLjava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$currentDocId:Ljava/lang/String;

.field final synthetic val$currentDriveId:Ljava/lang/String;

.field final synthetic val$encryptor:Lcom/metamoji/cm/PBE;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/PBE;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 568
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$7;->val$currentDriveId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$7;->val$currentDocId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboCommand$7;->val$encryptor:Lcom/metamoji/cm/PBE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$7;->val$currentDriveId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$7;->val$currentDocId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/dvm/DvmUtil;->editDocument(Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 573
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$7;->val$encryptor:Lcom/metamoji/cm/PBE;

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setEncryptor(Lcom/metamoji/cm/PBE;)V

    :cond_0
    return-object v0
.end method
