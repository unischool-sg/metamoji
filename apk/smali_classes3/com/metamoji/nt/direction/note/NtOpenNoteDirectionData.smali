.class public Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "NtOpenNoteDirectionData.java"


# static fields
.field private static final MMJNT_MODELPROPVALUE_OPENNOTEDIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJNT_MODELPROP_OPENNOTEDIRECTION_COMPANY_ID:Ljava/lang/String; = "companyID"

.field private static final MMJNT_MODELPROP_OPENNOTEDIRECTION_DOC_ID:Ljava/lang/String; = "docID"

.field private static final MMJNT_MODELPROP_OPENNOTEDIRECTION_DRIVE_ID:Ljava/lang/String; = "driveID"

.field private static final MMJNT_MODELPROP_OPENNOTEDIRECTION_PAGE_ID:Ljava/lang/String; = "pageID"

.field private static final MMJNT_MODELPROP_OPENNOTEDIRECTION_REGISTER_JUMP_HISTORY:Ljava/lang/String; = "registerJumpHistory"

.field private static final MMJNT_MODELPROP_OPENNOTEDIRECTION_REMOVE_JUMP_HISTORY:Ljava/lang/String; = "removeJumpHistory"

.field private static final MMJNT_MODELPROP_OPENNOTEDIRECTION_ROOM_ID:Ljava/lang/String; = "roomID"

.field private static final MMJNT_MODELTYPE_OPENNOTEDIRECTION:Ljava/lang/String; = "opennotedirection"


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private getBoolValue(Ljava/lang/String;)Z
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->getDirection()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->getDirection()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 144
    const-string v0, "opennotedirection"

    invoke-static {p0, v0}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;
    .locals 2

    .line 43
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 44
    const-string v0, "!type"

    const-string v1, "opennotedirection"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->getDirection()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 122
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public companyID()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "companyID"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->getID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 0

    .line 61
    invoke-super {p0}, Lcom/metamoji/ns/direction/NsDirectionData;->destroy()V

    return-void
.end method

.method public docID()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "docID"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->getID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public driveID()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "driveID"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->getID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDirection()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->getDirection()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->m_direction:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pageID()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "pageID"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->getID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerJumpHistory()Z
    .locals 1

    .line 87
    const-string v0, "registerJumpHistory"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeJumpHistory()Z
    .locals 1

    .line 90
    const-string v0, "removeJumpHistory"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public roomID()Ljava/lang/String;
    .locals 1

    .line 72
    const-string/jumbo v0, "roomID"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->getID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .line 107
    const-string/jumbo v0, "roomID"

    invoke-direct {p0, v0, p1}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string p1, "companyID"

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-string p1, "driveID"

    invoke-direct {p0, p1, p3}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string p1, "docID"

    invoke-direct {p0, p1, p4}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string p1, "pageID"

    invoke-direct {p0, p1, p5}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string p1, "registerJumpHistory"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string p1, "removeJumpHistory"

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/direction/note/NtOpenNoteDirectionData;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
