.class Lcom/metamoji/nt/NtDocument$7;
.super Ljava/lang/Object;
.source "NtDocument.java"

# interfaces
.implements Lcom/metamoji/nt/NtLayerFilterTraverseRouter$FilterProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDocument;->attachmentTicketsForExportingAsHayabusadoc(Lcom/metamoji/df/model/IModel;ZLjava/lang/String;ZLjava/util/Map;)Ljava/util/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dropForSchoolLayer:Z

.field final synthetic val$dropPrivateLayer:Z

.field final synthetic val$keptPrivateLayerSuffix:Ljava/lang/String;

.field final synthetic val$visibleCommonLayer:Z

.field final synthetic val$visiblePersonalLayerIdSuffixDic:Ljava/util/Map;

.field final synthetic val$visibleTeacherPersonalLayerIdSuffixDic:Ljava/util/Map;


# direct methods
.method constructor <init>(ZLjava/lang/String;ZZLjava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1793
    iput-boolean p1, p0, Lcom/metamoji/nt/NtDocument$7;->val$dropPrivateLayer:Z

    iput-object p2, p0, Lcom/metamoji/nt/NtDocument$7;->val$keptPrivateLayerSuffix:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/metamoji/nt/NtDocument$7;->val$dropForSchoolLayer:Z

    iput-boolean p4, p0, Lcom/metamoji/nt/NtDocument$7;->val$visibleCommonLayer:Z

    iput-object p5, p0, Lcom/metamoji/nt/NtDocument$7;->val$visiblePersonalLayerIdSuffixDic:Ljava/util/Map;

    iput-object p6, p0, Lcom/metamoji/nt/NtDocument$7;->val$visibleTeacherPersonalLayerIdSuffixDic:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 1797
    const-string v0, "layerType"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1798
    const-string/jumbo v1, "system:private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "layerId"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1799
    iget-boolean p1, p0, Lcom/metamoji/nt/NtDocument$7;->val$dropPrivateLayer:Z

    if-eqz p1, :cond_8

    .line 1801
    iget-object p1, p0, Lcom/metamoji/nt/NtDocument$7;->val$keptPrivateLayerSuffix:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1802
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1803
    iget-object p2, p0, Lcom/metamoji/nt/NtDocument$7;->val$keptPrivateLayerSuffix:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    return v3

    .line 1812
    :cond_1
    const-string/jumbo v1, "system:common"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1813
    iget-boolean p1, p0, Lcom/metamoji/nt/NtDocument$7;->val$dropForSchoolLayer:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/metamoji/nt/NtDocument$7;->val$visibleCommonLayer:Z

    if-nez p1, :cond_8

    return v3

    .line 1817
    :cond_2
    const-string/jumbo v1, "system:personal_template"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1818
    iget-boolean p1, p0, Lcom/metamoji/nt/NtDocument$7;->val$dropForSchoolLayer:Z

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_8

    return v3

    .line 1821
    :cond_3
    const-string/jumbo v1, "system:personal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1822
    iget-boolean v0, p0, Lcom/metamoji/nt/NtDocument$7;->val$dropForSchoolLayer:Z

    if-eqz v0, :cond_8

    .line 1824
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument$7;->val$visiblePersonalLayerIdSuffixDic:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 1828
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageType(Lcom/metamoji/df/model/IModel;)I

    move-result p1

    .line 1829
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument$7;->val$visiblePersonalLayerIdSuffixDic:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 1831
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1832
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return v3

    .line 1842
    :cond_5
    const-string/jumbo p1, "system:teacher_personal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1843
    iget-boolean p1, p0, Lcom/metamoji/nt/NtDocument$7;->val$dropForSchoolLayer:Z

    if-eqz p1, :cond_8

    .line 1845
    iget-object p1, p0, Lcom/metamoji/nt/NtDocument$7;->val$visibleTeacherPersonalLayerIdSuffixDic:Ljava/util/Map;

    if-eqz p1, :cond_7

    .line 1847
    const-string/jumbo v0, "visibleTeacherPersonalLayerId"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1848
    iget-object p1, p0, Lcom/metamoji/nt/NtDocument$7;->val$visibleTeacherPersonalLayerIdSuffixDic:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 1851
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1852
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    return v3

    :cond_8
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
