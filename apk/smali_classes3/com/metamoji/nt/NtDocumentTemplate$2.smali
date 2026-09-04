.class Lcom/metamoji/nt/NtDocumentTemplate$2;
.super Lcom/metamoji/nt/NtPageController$CreateModelParams;
.source "NtDocumentTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDocumentTemplate;->newPageFromModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fm:Lcom/metamoji/df/model/IModel;


# direct methods
.method constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 461
    iput-object p1, p0, Lcom/metamoji/nt/NtDocumentTemplate$2;->val$fm:Lcom/metamoji/df/model/IModel;

    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController$CreateModelParams;-><init>()V

    .line 462
    const-string v0, "paperWidth"

    const-wide v1, 0x407a100000000000L    # 417.0

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$2;->PaperWidth:D

    .line 463
    const-string v0, "paperHeight"

    const-wide v1, 0x4081600000000000L    # 556.0

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$2;->PaperHeight:D

    .line 464
    const-string v0, "printWidth"

    sget-wide v1, Lcom/metamoji/nt/NtPageSettings$Defaults;->printWidth:D

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$2;->PrintWidth:D

    .line 465
    const-string v0, "printHeight"

    sget-wide v1, Lcom/metamoji/nt/NtPageSettings$Defaults;->printHeight:D

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$2;->PrintHeight:D

    .line 466
    const-string v0, "dw_lines"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/TypeUtils;->toDoubleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$2;->MarginLines:Ljava/util/List;

    .line 467
    const-string/jumbo v0, "textUnitSettings"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 468
    invoke-static {p1}, Lcom/metamoji/df/model/ModelUtils;->cloneModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/metamoji/nt/NtDocumentTemplate$2;->TextSetting:Lcom/metamoji/df/model/IModel;

    return-void
.end method
