.class Lcom/metamoji/nt/NtDocumentTemplate$1;
.super Lcom/metamoji/nt/NtPageController$CreateModelParams;
.source "NtDocumentTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDocumentTemplate;->newPage(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 394
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController$CreateModelParams;-><init>()V

    const-wide v0, 0x407a100000000000L    # 417.0

    .line 395
    iput-wide v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$1;->PaperWidth:D

    const-wide v0, 0x4081600000000000L    # 556.0

    .line 396
    iput-wide v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$1;->PaperHeight:D

    const/high16 v0, 0x43520000    # 210.0f

    const/high16 v1, 0x42900000    # 72.0f

    .line 397
    invoke-static {v0, v1}, Lcom/metamoji/df/controller/DfUtility;->mm2px(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/metamoji/nt/NtDocumentTemplate$1;->PrintWidth:D

    const v0, 0x43948000    # 297.0f

    .line 398
    invoke-static {v0, v1}, Lcom/metamoji/df/controller/DfUtility;->mm2px(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$1;->PrintHeight:D

    .line 399
    new-instance v0, Lcom/metamoji/nt/NtDocumentTemplate$1$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/metamoji/nt/NtDocumentTemplate$1$1;-><init>(Lcom/metamoji/nt/NtDocumentTemplate$1;I)V

    iput-object v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$1;->MarginLines:Ljava/util/List;

    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$1;->TextSetting:Lcom/metamoji/df/model/IModel;

    return-void
.end method
