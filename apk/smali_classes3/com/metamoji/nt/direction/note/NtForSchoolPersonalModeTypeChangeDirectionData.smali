.class public Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "NtForSchoolPersonalModeTypeChangeDirectionData.java"


# static fields
.field private static final MMJNT_MODELPROPVALUE_FORSCHOOL_PERSONALMODETYPECHANGEDIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJNT_MODELPROP_FORSCHOOL_PERSONALMODETYPECHANGEDIRECTION_PERSONAL_MODE_TYPE:Ljava/lang/String; = "ptype"

.field private static final MMJNT_MODELTYPE_FORSCHOOL_PERSONALMODETYPECHANGEDIRECTION:Ljava/lang/String; = "forschool_personalmodetypechangedirection"


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

    .line 43
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    .line 44
    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;->_direction:Ljava/util/Map;

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 52
    const-string v0, "forschool_personalmodetypechangedirection"

    invoke-static {p0, v0}, Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;
    .locals 2

    .line 32
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 33
    const-string v0, "!type"

    const-string v1, "forschool_personalmodetypechangedirection"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public personalModeType()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;->_direction:Ljava/util/Map;

    const-string v1, "ptype"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPersonalModeType(I)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;->_direction:Ljava/util/Map;

    const-string v1, "ptype"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
