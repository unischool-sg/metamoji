.class Lcom/metamoji/nt/NtShare$2;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare;->sharePageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/nt/NtShare$ISendAction;

.field final synthetic val$baseName:Ljava/lang/String;

.field final synthetic val$doc:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$fromPageIndex:I

.field final synthetic val$toPageIndex:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$2;->val$doc:Lcom/metamoji/nt/NtDocument;

    iput p2, p0, Lcom/metamoji/nt/NtShare$2;->val$toPageIndex:I

    iput p3, p0, Lcom/metamoji/nt/NtShare$2;->val$fromPageIndex:I

    iput-object p4, p0, Lcom/metamoji/nt/NtShare$2;->val$baseName:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/nt/NtShare$2;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 174
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$2;->val$doc:Lcom/metamoji/nt/NtDocument;

    const-string v1, "MMJNtDocumentSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 175
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 177
    iget-object v2, p0, Lcom/metamoji/nt/NtShare$2;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 179
    iget v3, p0, Lcom/metamoji/nt/NtShare$2;->val$toPageIndex:I

    iget v4, p0, Lcom/metamoji/nt/NtShare$2;->val$fromPageIndex:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 181
    iget-object v4, p0, Lcom/metamoji/nt/NtShare$2;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v4

    sget-object v5, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    .line 182
    :cond_0
    new-instance v4, Lcom/metamoji/nt/NtShare$2$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/metamoji/nt/NtShare$2$1;-><init>(Lcom/metamoji/nt/NtShare$2;ILcom/metamoji/nt/NtNoteController;)V

    if-ne v3, v1, :cond_1

    .line 202
    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/io/File;

    const-string v2, "mmjntsendshared"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    const/4 v0, 0x0

    .line 205
    invoke-interface {v4, v1, v0}, Lcom/metamoji/nt/NtShare$INtShareCreateFile;->perform(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    .line 207
    const-string v1, "image/jpeg"

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$2;->val$doc:Lcom/metamoji/nt/NtDocument;

    iget-object v1, p0, Lcom/metamoji/nt/NtShare$2;->val$baseName:Ljava/lang/String;

    invoke-static {v0, v3, v4, v1}, Lcom/metamoji/nt/NtShare;->createZippedFile(Lcom/metamoji/nt/NtDocument;ILcom/metamoji/nt/NtShare$INtShareCreateFile;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 209
    const-string v1, "application/zip"

    :goto_0
    move-object v3, v0

    move-object v4, v1

    if-eqz v3, :cond_2

    .line 213
    iget-object v2, p0, Lcom/metamoji/nt/NtShare$2;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    iget-object v0, p0, Lcom/metamoji/nt/NtShare$2;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/metamoji/nt/NtShare$ISendAction;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method
