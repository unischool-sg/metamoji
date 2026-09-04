.class Lcom/metamoji/ui/BulkImportActivity$3$1;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "BulkImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/BulkImportActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/BulkImportActivity$3;

.field final synthetic val$ci:I

.field final synthetic val$count:I

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$docTags:Ljava/util/List;

.field final synthetic val$stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/BulkImportActivity$3;IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iput p2, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$count:I

    iput p3, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$ci:I

    iput-object p4, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$docId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    iput-object p6, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$docTags:Ljava/util/List;

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

    .line 425
    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity$3$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v0, v0, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    iget v1, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$count:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget v3, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$ci:I

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/ui/BulkImportActivity;->updateTotalText(II)V

    .line 442
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v0, v0, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v0}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmDriveId(Lcom/metamoji/ui/BulkImportActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$docId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/dvm/DvmUtil;->getDocTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 445
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v3, v3, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v3}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmEachBar(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 446
    iget-object v3, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v3, v3, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-virtual {v3, v0}, Lcom/metamoji/ui/BulkImportActivity;->updateEachText(Ljava/lang/String;)V

    .line 447
    iget-object v3, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v3, v3, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v3}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmDriveId(Lcom/metamoji/ui/BulkImportActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$docId:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/metamoji/dvm/DvmUtil;->editDocument(Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 448
    iget-object v4, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v4, v4, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    iget-object v5, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v5, v5, Lcom/metamoji/ui/BulkImportActivity$3;->val$outDir:Landroidx/documentfile/provider/DocumentFile;

    invoke-static {v4, v3, v0, v5}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$mexportSingleFile(Lcom/metamoji/ui/BulkImportActivity;Lcom/metamoji/nt/doceditor/NtDocumentEditor;Ljava/lang/String;Landroidx/documentfile/provider/DocumentFile;)V

    .line 449
    iget-object v3, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v3, v3, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v3}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmEachBar(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 453
    :catch_0
    iget-object v3, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v3, v3, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v3}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmTotalBar(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget v4, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$count:I

    add-int/2addr v4, v2

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$ci:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 454
    iget-object v3, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v3, v3, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v3}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmDealt(Lcom/metamoji/ui/BulkImportActivity;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fputmDealt(Lcom/metamoji/ui/BulkImportActivity;I)V

    .line 456
    iget-object v2, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v2, v2, Lcom/metamoji/ui/BulkImportActivity$3;->val$sb:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v3, v3, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-virtual {v3}, Lcom/metamoji/ui/BulkImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_Succeeded:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_Failed:I

    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v1, v1, Lcom/metamoji/ui/BulkImportActivity$3;->val$sb:Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v1, v1, Lcom/metamoji/ui/BulkImportActivity$3;->val$sb:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    const-string v2, "?"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v1, v1, Lcom/metamoji/ui/BulkImportActivity$3;->val$sb:Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v1, v1, Lcom/metamoji/ui/BulkImportActivity$3;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    iget-object v2, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v2, v2, Lcom/metamoji/ui/BulkImportActivity$3;->val$sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/BulkImportActivity;->report(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 463
    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$docTags:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iget-object v1, v1, Lcom/metamoji/ui/BulkImportActivity$3;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, p0, Lcom/metamoji/ui/BulkImportActivity$3$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    return-object v0
.end method
