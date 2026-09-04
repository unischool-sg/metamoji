.class Lcom/metamoji/ns/NsCollaboCommand$25;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->createAndEditNormalDocumentFromCollaboFile(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$docID:Ljava/lang/String;

.field final synthetic val$encryptor:Lcom/metamoji/cm/PBE;

.field final synthetic val$isShareNote:Z

.field final synthetic val$outputTargetSchoolLayerInfo:Ljava/util/Map;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/util/Map;Lcom/metamoji/cm/PBE;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2028
    iput-boolean p1, p0, Lcom/metamoji/ns/NsCollaboCommand$25;->val$isShareNote:Z

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$25;->val$docID:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboCommand$25;->val$outputTargetSchoolLayerInfo:Ljava/util/Map;

    iput-object p4, p0, Lcom/metamoji/ns/NsCollaboCommand$25;->val$encryptor:Lcom/metamoji/cm/PBE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 3

    .line 2033
    iget-boolean v0, p0, Lcom/metamoji/ns/NsCollaboCommand$25;->val$isShareNote:Z

    .line 2036
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$25;->val$docID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$25;->val$outputTargetSchoolLayerInfo:Ljava/util/Map;

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboCommand$25;->val$encryptor:Lcom/metamoji/cm/PBE;

    invoke-static {v1, v0, v2}, Lcom/metamoji/ns/NsCollaboCommand;->uncollaborizeNoteMergingLayers(Ljava/lang/String;Ljava/util/Map;Lcom/metamoji/cm/PBE;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2036
    :cond_0
    invoke-static {v1}, Lcom/metamoji/ns/NsCollaboCommand;->uncollaborizeNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2040
    :goto_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->beforeExportNote()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2042
    invoke-static {v1, v0, v2}, Lcom/metamoji/dvm/DvmUtil;->editDocument(Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 2043
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$25;->val$encryptor:Lcom/metamoji/cm/PBE;

    if-eqz v1, :cond_1

    .line 2044
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setEncryptor(Lcom/metamoji/cm/PBE;)V

    :cond_1
    return-object v0
.end method
