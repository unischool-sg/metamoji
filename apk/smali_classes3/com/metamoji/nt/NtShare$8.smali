.class Lcom/metamoji/nt/NtShare$8;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare;->shareAsMultiUserPdf(Lcom/metamoji/nt/NtDocument;Ljava/util/List;Z[ILcom/metamoji/nt/NtShare$ISendAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/nt/NtShare$ISendAction;

.field final synthetic val$allInOnePDF:Z

.field final synthetic val$doc:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$pages:[I

.field final synthetic val$userInfos:Ljava/util/List;


# direct methods
.method constructor <init>(ZLjava/util/List;[ILcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 544
    iput-boolean p1, p0, Lcom/metamoji/nt/NtShare$8;->val$allInOnePDF:Z

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$8;->val$userInfos:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/nt/NtShare$8;->val$pages:[I

    iput-object p4, p0, Lcom/metamoji/nt/NtShare$8;->val$doc:Lcom/metamoji/nt/NtDocument;

    iput-object p5, p0, Lcom/metamoji/nt/NtShare$8;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 547
    new-instance v0, Lcom/metamoji/nt/NtPDFExportTargetContext;

    invoke-direct {v0}, Lcom/metamoji/nt/NtPDFExportTargetContext;-><init>()V

    const/4 v1, 0x0

    .line 548
    iput-boolean v1, v0, Lcom/metamoji/nt/NtPDFExportTargetContext;->isPrivate:Z

    .line 552
    iget-boolean v2, p0, Lcom/metamoji/nt/NtShare$8;->val$allInOnePDF:Z

    const-string v3, "application/pdf"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 553
    new-instance v1, Lcom/metamoji/nt/NtPDFExportMultiUserTargetPages;

    iget-object v2, p0, Lcom/metamoji/nt/NtShare$8;->val$userInfos:Ljava/util/List;

    iget-object v5, p0, Lcom/metamoji/nt/NtShare$8;->val$pages:[I

    invoke-direct {v1, v2, v5, v0}, Lcom/metamoji/nt/NtPDFExportMultiUserTargetPages;-><init>(Ljava/util/List;[ILcom/metamoji/nt/NtPDFExportTargetContext;)V

    .line 554
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$8;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2, v1, v4}, Lcom/metamoji/nt/NtPrintPDF;->export2(Lcom/metamoji/nt/NtDocument;Ljava/io/File;Lcom/metamoji/nt/NtPDFExportRangeTargetPages;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    move-object v5, v0

    move-object v6, v3

    goto :goto_1

    .line 557
    :cond_0
    new-instance v2, Lcom/metamoji/nt/NtShare$8$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/nt/NtShare$8$1;-><init>(Lcom/metamoji/nt/NtShare$8;Lcom/metamoji/nt/NtPDFExportTargetContext;)V

    .line 585
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$8;->val$userInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 587
    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v0

    .line 588
    new-instance v4, Ljava/io/File;

    const-string v5, "mmjntsendshared"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 589
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 590
    invoke-interface {v2, v4, v1}, Lcom/metamoji/nt/NtShare$INtShareCreateFile;->perform(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/metamoji/nt/NtShare$8;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-static {v1, v0, v2, v4}, Lcom/metamoji/nt/NtShare;->createZippedFile(Lcom/metamoji/nt/NtDocument;ILcom/metamoji/nt/NtShare$INtShareCreateFile;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 594
    const-string v3, "application/zip"

    goto :goto_0

    :goto_1
    if-nez v5, :cond_2

    return-void

    .line 604
    :cond_2
    iget-object v4, p0, Lcom/metamoji/nt/NtShare$8;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    iget-object v0, p0, Lcom/metamoji/nt/NtShare$8;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/metamoji/nt/NtShare$ISendAction;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
