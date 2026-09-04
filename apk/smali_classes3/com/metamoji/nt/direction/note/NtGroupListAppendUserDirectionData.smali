.class public Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "NtGroupListAppendUserDirectionData.java"


# static fields
.field private static final MMJNT_MODELPROPVALUE_GROUP_LIST_APPEND_USER_DIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJNT_MODELPROP_GROUP_LIST_APPEND_USER_DIRECTION_USER_DIC:Ljava/lang/String; = "user-dic"

.field private static final MMJNT_MODELTYPE_GROUP_LIST_APPEND_USER_DIRECTION:Ljava/lang/String; = "group-list-append-user-direction"


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

    .line 36
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    .line 37
    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;->_direction:Ljava/util/Map;

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 45
    const-string v0, "group-list-append-user-direction"

    invoke-static {p0, v0}, Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;
    .locals 2

    .line 25
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 26
    const-string v0, "!type"

    const-string v1, "group-list-append-user-direction"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public setUserDic(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;->_direction:Ljava/util/Map;

    const-string/jumbo v1, "user-dic"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public userDic()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;->_direction:Ljava/util/Map;

    const-string/jumbo v1, "user-dic"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
