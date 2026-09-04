.class Lcom/metamoji/ui/BulkImportActivity$3;
.super Ljava/lang/Object;
.source "BulkImportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/BulkImportActivity;->exportFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/BulkImportActivity;

.field final synthetic val$outDir:Landroidx/documentfile/provider/DocumentFile;

.field final synthetic val$sb:Ljava/lang/StringBuffer;

.field final synthetic val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/BulkImportActivity;Lcom/metamoji/sd/SdDriveDocumentManager;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/StringBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 403
    iput-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    iput-object p2, p0, Lcom/metamoji/ui/BulkImportActivity$3;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p3, p0, Lcom/metamoji/ui/BulkImportActivity$3;->val$outDir:Landroidx/documentfile/provider/DocumentFile;

    iput-object p4, p0, Lcom/metamoji/ui/BulkImportActivity$3;->val$sb:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 407
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 408
    new-instance v7, Lcom/metamoji/cm/mutable/MutableBoolean;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/metamoji/cm/mutable/MutableBoolean;-><init>(Z)V

    .line 409
    new-instance v9, Lcom/metamoji/cm/mutable/MutableBoolean;

    invoke-direct {v9, v8}, Lcom/metamoji/cm/mutable/MutableBoolean;-><init>(Z)V

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v0}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmSource(Lcom/metamoji/ui/BulkImportActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v8

    :goto_0
    if-ge v2, v3, :cond_3

    .line 414
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v0}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmCancel(Lcom/metamoji/ui/BulkImportActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v0}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmSource(Lcom/metamoji/ui/BulkImportActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v0}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmDriveId(Lcom/metamoji/ui/BulkImportActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/metamoji/dvm/DvmUtil;->isShare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 420
    invoke-virtual {v7, v0}, Lcom/metamoji/cm/mutable/MutableBoolean;->setValue(Z)V

    move-object v1, p0

    goto :goto_1

    .line 424
    :cond_1
    iget-object v10, p0, Lcom/metamoji/ui/BulkImportActivity$3;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v11, Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-direct {v11}, Lcom/metamoji/sd/cs/SdRequestCanceller;-><init>()V

    new-instance v0, Lcom/metamoji/ui/BulkImportActivity$3$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/BulkImportActivity$3$1;-><init>(Lcom/metamoji/ui/BulkImportActivity$3;IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance v12, Lcom/metamoji/ui/BulkImportActivity$3$2;

    invoke-direct {v12, p0, v9}, Lcom/metamoji/ui/BulkImportActivity$3$2;-><init>(Lcom/metamoji/ui/BulkImportActivity$3;Lcom/metamoji/cm/mutable/MutableBoolean;)V

    invoke-virtual {v10, v4, v11, v0, v12}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    .line 481
    invoke-virtual {v9}, Lcom/metamoji/cm/mutable/MutableBoolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p0

    .line 486
    :goto_2
    invoke-virtual {v7}, Lcom/metamoji/cm/mutable/MutableBoolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 487
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ui/BulkImportActivity$3$3;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/BulkImportActivity$3$3;-><init>(Lcom/metamoji/ui/BulkImportActivity$3;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 495
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/metamoji/ui/BulkImportActivity$3;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v2, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->getAbsPathMatchTags(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 496
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    iget-object v3, v1, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v3}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmDriveId(Lcom/metamoji/ui/BulkImportActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "[ %s ] : [ %s ] : %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x197

    .line 499
    invoke-static {v2, v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 500
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 501
    iget-object v0, v1, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-virtual {v0}, Lcom/metamoji/ui/BulkImportActivity;->done()V

    return-void
.end method
