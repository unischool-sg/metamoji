.class Lcom/metamoji/nt/NtShare$3;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare;->shareMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;IILcom/metamoji/nt/NtShare$ISendAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/nt/NtShare$ISendAction;

.field final synthetic val$doc:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$finalScale:F

.field final synthetic val$fromPageIndex:I

.field final synthetic val$purgeableChecker:Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;

.field final synthetic val$toPageIndex:I

.field final synthetic val$userInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;Ljava/util/List;IILcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;FLcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$3;->val$doc:Lcom/metamoji/nt/NtDocument;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$3;->val$userInfos:Ljava/util/List;

    iput p3, p0, Lcom/metamoji/nt/NtShare$3;->val$toPageIndex:I

    iput p4, p0, Lcom/metamoji/nt/NtShare$3;->val$fromPageIndex:I

    iput-object p5, p0, Lcom/metamoji/nt/NtShare$3;->val$purgeableChecker:Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;

    iput p6, p0, Lcom/metamoji/nt/NtShare$3;->val$finalScale:F

    iput-object p7, p0, Lcom/metamoji/nt/NtShare$3;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 261
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$3;->val$doc:Lcom/metamoji/nt/NtDocument;

    const-string v1, "MMJNtDocumentSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 262
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 264
    iget-object v2, p0, Lcom/metamoji/nt/NtShare$3;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 266
    iget-object v3, p0, Lcom/metamoji/nt/NtShare$3;->val$userInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 267
    iget v4, p0, Lcom/metamoji/nt/NtShare$3;->val$toPageIndex:I

    iget v5, p0, Lcom/metamoji/nt/NtShare$3;->val$fromPageIndex:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 269
    new-instance v5, Lcom/metamoji/nt/NtShare$3$1;

    invoke-direct {v5, p0, v3, v0, v2}, Lcom/metamoji/nt/NtShare$3$1;-><init>(Lcom/metamoji/nt/NtShare$3;IILcom/metamoji/nt/NtNoteController;)V

    .line 322
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$3;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getPurgeManager()Lcom/metamoji/df/controller/PurgeManager;

    move-result-object v2

    .line 323
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$3;->val$purgeableChecker:Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;

    invoke-virtual {v2, v0}, Lcom/metamoji/df/controller/PurgeManager;->installPurgeableChecker(Lcom/metamoji/df/controller/PurgeManager$IPurgeableChecker;)V

    mul-int/2addr v3, v4

    if-ne v3, v1, :cond_0

    .line 330
    :try_start_0
    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v0

    .line 331
    new-instance v1, Ljava/io/File;

    const-string v3, "mmjntsendshared"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    const/4 v0, 0x0

    .line 333
    invoke-interface {v5, v1, v0}, Lcom/metamoji/nt/NtShare$INtShareCreateFile;->perform(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    .line 334
    const-string v1, "image/jpeg"

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$3;->val$doc:Lcom/metamoji/nt/NtDocument;

    const/4 v1, 0x0

    invoke-static {v0, v3, v5, v1}, Lcom/metamoji/nt/NtShare;->createZippedFile(Lcom/metamoji/nt/NtDocument;ILcom/metamoji/nt/NtShare$INtShareCreateFile;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 337
    const-string v1, "application/zip"

    :goto_0
    move-object v4, v0

    move-object v5, v1

    if-eqz v4, :cond_1

    .line 340
    iget-object v3, p0, Lcom/metamoji/nt/NtShare$3;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    iget-object v0, p0, Lcom/metamoji/nt/NtShare$3;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/metamoji/nt/NtShare$ISendAction;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$3;->val$purgeableChecker:Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;

    invoke-virtual {v2, v0}, Lcom/metamoji/df/controller/PurgeManager;->uninstallPurgeableChecker(Lcom/metamoji/df/controller/PurgeManager$IPurgeableChecker;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/nt/NtShare$3;->val$purgeableChecker:Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;

    invoke-virtual {v2, v1}, Lcom/metamoji/df/controller/PurgeManager;->uninstallPurgeableChecker(Lcom/metamoji/df/controller/PurgeManager$IPurgeableChecker;)V

    .line 344
    throw v0
.end method
