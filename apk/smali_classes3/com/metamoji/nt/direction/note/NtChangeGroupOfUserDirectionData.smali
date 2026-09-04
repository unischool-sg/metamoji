.class public Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "NtChangeGroupOfUserDirectionData.java"


# static fields
.field private static final MMJNT_MODELPROPVALUE_CHANGE_GROUP_OF_USER_DIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJNT_MODELPROP_CHANGE_GROUP_OF_USER_DIRECTION_NEEDS_NO_GROUP_MEMBER:Ljava/lang/String; = "needs-no-group-member"

.field private static final MMJNT_MODELPROP_CHANGE_GROUP_OF_USER_DIRECTION_TO_GROUPID:Ljava/lang/String; = "to-group-id"

.field private static final MMJNT_MODELPROP_CHANGE_GROUP_OF_USER_DIRECTION_USER_ID:Ljava/lang/String; = "user-id"

.field private static final MMJNT_MODELTYPE_CHAGE_GROUP_OF_USER_DIRECTION:Ljava/lang/String; = "changegroupofuserdirection"


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

    iput-object p1, p0, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->_direction:Ljava/util/Map;

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 49
    const-string v0, "changegroupofuserdirection"

    invoke-static {p0, v0}, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;
    .locals 2

    .line 29
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 30
    const-string v0, "!type"

    const-string v1, "changegroupofuserdirection"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public needsNoGroupMember()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->_direction:Ljava/util/Map;

    const-string v1, "needs-no-group-member"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setNeedsNoGroupMember(Z)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->_direction:Ljava/util/Map;

    const-string v1, "needs-no-group-member"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setToGroupId(Ljava/lang/String;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->_direction:Ljava/util/Map;

    const-string/jumbo v1, "to-group-id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUserIds(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->_direction:Ljava/util/Map;

    const-string/jumbo v1, "user-id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toGroupId()Ljava/lang/String;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->_direction:Ljava/util/Map;

    const-string/jumbo v1, "to-group-id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->_direction:Ljava/util/Map;

    const-string/jumbo v1, "user-id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
