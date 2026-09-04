.class public Lcom/metamoji/nt/NtPDFExportMultiUserTargetPages;
.super Lcom/metamoji/nt/NtPDFExportRangeTargetPages;
.source "NtPDFExportMultiUserTargetPages.java"


# instance fields
.field private _userInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;[ILcom/metamoji/nt/NtPDFExportTargetContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[I",
            "Lcom/metamoji/nt/NtPDFExportTargetContext;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p2, p3}, Lcom/metamoji/nt/NtPDFExportRangeTargetPages;-><init>([ILcom/metamoji/nt/NtPDFExportTargetContext;)V

    .line 19
    iput-object p1, p0, Lcom/metamoji/nt/NtPDFExportMultiUserTargetPages;->_userInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public exportEachPageInDocument(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPDFExportRangeTargetPages$INtPDFExportPageProc;)V
    .locals 7

    .line 24
    iget-object v0, p0, Lcom/metamoji/nt/NtPDFExportMultiUserTargetPages;->_userInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 26
    iget-object v3, p0, Lcom/metamoji/nt/NtPDFExportMultiUserTargetPages;->_userInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 27
    const-string/jumbo v4, "userId"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 29
    const-string/jumbo v3, "user id is not specified."

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_0
    iget-object v5, p0, Lcom/metamoji/nt/NtPDFExportMultiUserTargetPages;->_context:Lcom/metamoji/nt/NtPDFExportTargetContext;

    iput-object v4, v5, Lcom/metamoji/nt/NtPDFExportTargetContext;->userId:Ljava/lang/String;

    .line 33
    iget-object v5, p0, Lcom/metamoji/nt/NtPDFExportMultiUserTargetPages;->_context:Lcom/metamoji/nt/NtPDFExportTargetContext;

    const-string v6, "nickname"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v5, Lcom/metamoji/nt/NtPDFExportTargetContext;->userName:Ljava/lang/String;

    .line 34
    iget-object v3, p0, Lcom/metamoji/nt/NtPDFExportMultiUserTargetPages;->_context:Lcom/metamoji/nt/NtPDFExportTargetContext;

    invoke-static {v4}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/nt/NtPDFExportTargetContext;->outputTargetSchoolLayerInfo:Ljava/util/Map;

    .line 35
    iget-object v3, p0, Lcom/metamoji/nt/NtPDFExportMultiUserTargetPages;->_context:Lcom/metamoji/nt/NtPDFExportTargetContext;

    iput-boolean v1, v3, Lcom/metamoji/nt/NtPDFExportTargetContext;->doWrite:Z

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    .line 37
    iget-object v3, p0, Lcom/metamoji/nt/NtPDFExportMultiUserTargetPages;->_context:Lcom/metamoji/nt/NtPDFExportTargetContext;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/metamoji/nt/NtPDFExportTargetContext;->doWrite:Z

    .line 39
    :cond_1
    new-instance v3, Lcom/metamoji/nt/NtPDFExportRangeTargetPages;

    iget-object v4, p0, Lcom/metamoji/nt/NtPDFExportMultiUserTargetPages;->_pages:[I

    iget-object v5, p0, Lcom/metamoji/nt/NtPDFExportMultiUserTargetPages;->_context:Lcom/metamoji/nt/NtPDFExportTargetContext;

    invoke-direct {v3, v4, v5}, Lcom/metamoji/nt/NtPDFExportRangeTargetPages;-><init>([ILcom/metamoji/nt/NtPDFExportTargetContext;)V

    .line 40
    invoke-virtual {v3, p1, p2}, Lcom/metamoji/nt/NtPDFExportRangeTargetPages;->exportEachPageInDocument(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPDFExportRangeTargetPages$INtPDFExportPageProc;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
