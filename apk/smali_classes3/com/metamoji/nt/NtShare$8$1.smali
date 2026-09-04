.class Lcom/metamoji/nt/NtShare$8$1;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Lcom/metamoji/nt/NtShare$INtShareCreateFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtShare$8;

.field final synthetic val$context:Lcom/metamoji/nt/NtPDFExportTargetContext;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtShare$8;Lcom/metamoji/nt/NtPDFExportTargetContext;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 557
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$8$1;->this$0:Lcom/metamoji/nt/NtShare$8;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$8$1;->val$context:Lcom/metamoji/nt/NtPDFExportTargetContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljava/io/File;I)Ljava/io/File;
    .locals 2

    .line 560
    iget-object p1, p0, Lcom/metamoji/nt/NtShare$8$1;->this$0:Lcom/metamoji/nt/NtShare$8;

    iget-object p1, p1, Lcom/metamoji/nt/NtShare$8;->val$userInfos:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 561
    const-string/jumbo p2, "userId"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 562
    const-string v0, "nickname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$8$1;->val$context:Lcom/metamoji/nt/NtPDFExportTargetContext;

    iput-object p2, v0, Lcom/metamoji/nt/NtPDFExportTargetContext;->userId:Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$8$1;->val$context:Lcom/metamoji/nt/NtPDFExportTargetContext;

    iput-object p1, v0, Lcom/metamoji/nt/NtPDFExportTargetContext;->userName:Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$8$1;->val$context:Lcom/metamoji/nt/NtPDFExportTargetContext;

    invoke-static {p2}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/nt/NtPDFExportTargetContext;->outputTargetSchoolLayerInfo:Ljava/util/Map;

    .line 573
    iget-object p2, p0, Lcom/metamoji/nt/NtShare$8$1;->this$0:Lcom/metamoji/nt/NtShare$8;

    iget-object p2, p2, Lcom/metamoji/nt/NtShare$8;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-static {p1}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 574
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    .line 575
    :cond_1
    const-string/jumbo p1, "unknown"

    .line 577
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".pdf"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 579
    new-instance p2, Lcom/metamoji/nt/NtPDFExportRangeTargetPages;

    iget-object v0, p0, Lcom/metamoji/nt/NtShare$8$1;->this$0:Lcom/metamoji/nt/NtShare$8;

    iget-object v0, v0, Lcom/metamoji/nt/NtShare$8;->val$pages:[I

    iget-object v1, p0, Lcom/metamoji/nt/NtShare$8$1;->val$context:Lcom/metamoji/nt/NtPDFExportTargetContext;

    invoke-direct {p2, v0, v1}, Lcom/metamoji/nt/NtPDFExportRangeTargetPages;-><init>([ILcom/metamoji/nt/NtPDFExportTargetContext;)V

    .line 580
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$8$1;->this$0:Lcom/metamoji/nt/NtShare$8;

    iget-object v0, v0, Lcom/metamoji/nt/NtShare$8;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/metamoji/nt/NtPrintPDF;->export2(Lcom/metamoji/nt/NtDocument;Ljava/io/File;Lcom/metamoji/nt/NtPDFExportRangeTargetPages;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
