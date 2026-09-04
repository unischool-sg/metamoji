.class Lcom/metamoji/nt/NtDocumentTemplate$3;
.super Lcom/metamoji/nt/NtPageController$CreateModelParams;
.source "NtDocumentTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDocumentTemplate;->newEmptyDocument(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 708
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController$CreateModelParams;-><init>()V

    const-wide v0, 0x407a100000000000L    # 417.0

    .line 709
    iput-wide v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$3;->PaperWidth:D

    const-wide v0, 0x4081600000000000L    # 556.0

    .line 710
    iput-wide v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$3;->PaperHeight:D

    .line 711
    sget-wide v0, Lcom/metamoji/nt/NtPageSettings$Defaults;->printWidth:D

    iput-wide v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$3;->PrintWidth:D

    .line 712
    sget-wide v0, Lcom/metamoji/nt/NtPageSettings$Defaults;->printHeight:D

    iput-wide v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$3;->PrintHeight:D

    const/4 v0, 0x0

    .line 713
    iput-object v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$3;->TextSetting:Lcom/metamoji/df/model/IModel;

    .line 714
    new-instance v0, Lcom/metamoji/nt/NtDocumentTemplate$3$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/metamoji/nt/NtDocumentTemplate$3$1;-><init>(Lcom/metamoji/nt/NtDocumentTemplate$3;I)V

    iput-object v0, p0, Lcom/metamoji/nt/NtDocumentTemplate$3;->MarginLines:Ljava/util/List;

    return-void
.end method
