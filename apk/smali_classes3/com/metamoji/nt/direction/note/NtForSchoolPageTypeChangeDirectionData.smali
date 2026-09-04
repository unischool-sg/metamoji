.class public Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "NtForSchoolPageTypeChangeDirectionData.java"


# static fields
.field private static final MMJNT_MODELPROPVALUE_FORSCHOOL_PAGETYPECHANGEDIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJNT_MODELPROP_FORSCHOOL_PAGETYPECHANGEDIRECTION_PAGE_ID:Ljava/lang/String; = "pid"

.field private static final MMJNT_MODELPROP_FORSCHOOL_PAGETYPECHANGEDIRECTION_PAGE_ID_LIST:Ljava/lang/String; = "pidl"

.field private static final MMJNT_MODELPROP_FORSCHOOL_PAGETYPECHANGEDIRECTION_PAGE_TYPE:Ljava/lang/String; = "ptype"

.field private static final MMJNT_MODELTYPE_FORSCHOOL_PAGETYPECHANGEDIRECTION:Ljava/lang/String; = "forschool_pagetypechangedirection"


# instance fields
.field private _direction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    .line 47
    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->_direction:Ljava/util/Map;

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 55
    const-string v0, "forschool_pagetypechangedirection"

    invoke-static {p0, v0}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;
    .locals 2

    .line 35
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string v0, "!type"

    const-string v1, "forschool_pagetypechangedirection"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public pageIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->_direction:Ljava/util/Map;

    const-string v1, "pid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->_direction:Ljava/util/Map;

    const-string v1, "pidl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public schoolPageType()I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->_direction:Ljava/util/Map;

    const-string v1, "ptype"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setPageId(Ljava/lang/String;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->_direction:Ljava/util/Map;

    const-string v1, "pid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPageIds(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->_direction:Ljava/util/Map;

    const-string v1, "pidl"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSchoolPageType(I)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->_direction:Ljava/util/Map;

    const-string v1, "ptype"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
