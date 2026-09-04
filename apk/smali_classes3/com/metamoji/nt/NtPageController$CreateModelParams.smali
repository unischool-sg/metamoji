.class public Lcom/metamoji/nt/NtPageController$CreateModelParams;
.super Ljava/lang/Object;
.source "NtPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateModelParams"
.end annotation


# instance fields
.field public AutoPaper:I

.field public BgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

.field public MarginLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public PaperHeight:D

.field public PaperWidth:D

.field public PrintHeight:D

.field public PrintWidth:D

.field public SchoolPageType:I

.field public TextSetting:Lcom/metamoji/df/model/IModel;

.field public Version:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 853
    iput v0, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->AutoPaper:I

    const-wide/16 v1, 0x0

    .line 854
    iput-wide v1, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PaperWidth:D

    .line 855
    iput-wide v1, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PaperHeight:D

    .line 856
    iput-wide v1, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PrintWidth:D

    .line 857
    iput-wide v1, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PrintHeight:D

    .line 858
    new-instance v1, Lcom/metamoji/nt/NtPageController$CreateModelParams$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/metamoji/nt/NtPageController$CreateModelParams$1;-><init>(Lcom/metamoji/nt/NtPageController$CreateModelParams;I)V

    iput-object v1, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->MarginLines:Ljava/util/List;

    const/4 v1, 0x0

    .line 862
    iput-object v1, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->TextSetting:Lcom/metamoji/df/model/IModel;

    .line 863
    iput-object v1, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->BgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    const/4 v1, 0x1

    .line 865
    iput v1, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->Version:I

    .line 866
    iput v0, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->SchoolPageType:I

    .line 873
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeDefaultValue()I

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->SchoolPageType:I

    return-void
.end method
