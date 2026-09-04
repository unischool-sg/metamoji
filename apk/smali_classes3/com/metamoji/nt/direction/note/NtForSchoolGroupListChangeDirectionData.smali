.class public Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "NtForSchoolGroupListChangeDirectionData.java"


# static fields
.field private static final MMJNT_MODELPROPVALUE_FORSCHOOL_GROUPLISTCHANGEDIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJNT_MODELPROP_FORSCHOOL_GROUPLISTCHANGEDIRECTION_GROUP_LIST:Ljava/lang/String; = "group-list"

.field private static final MMJNT_MODELTYPE_FORSCHOOL_GROUPLISTCHANGEDIRECTION:Ljava/lang/String; = "forschool_grouplistchangedirection"


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

    .line 40
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    .line 41
    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;->_direction:Ljava/util/Map;

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 49
    const-string v0, "forschool_grouplistchangedirection"

    invoke-static {p0, v0}, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;
    .locals 2

    .line 29
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 30
    const-string v0, "!type"

    const-string v1, "forschool_grouplistchangedirection"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public groupList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;->_direction:Ljava/util/Map;

    const-string v1, "group-list"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public setGroupList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;->_direction:Ljava/util/Map;

    const-string v1, "group-list"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
