.class Lcom/metamoji/nt/NtDocument$8;
.super Ljava/lang/Object;
.source "NtDocument.java"

# interfaces
.implements Lcom/metamoji/cv/xml/ICvProcessCollaboSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDocument;->importHayabusaDoc(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/ArrayList;Ljava/util/Map;ZZ)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$checkShareRoomId:Z

.field final synthetic val$options_:Ljava/util/Map;


# direct methods
.method constructor <init>(ZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2228
    iput-boolean p1, p0, Lcom/metamoji/nt/NtDocument$8;->val$checkShareRoomId:Z

    iput-object p2, p0, Lcom/metamoji/nt/NtDocument$8;->val$options_:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processCollaboSettings(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 2232
    const-string v0, "companyId"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2235
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 2236
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 2237
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2252
    iget-boolean v1, p0, Lcom/metamoji/nt/NtDocument$8;->val$checkShareRoomId:Z

    if-eqz v1, :cond_1

    .line 2253
    const-string/jumbo v1, "roomIdForBiz"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2254
    invoke-static {v0, p1}, Lcom/metamoji/dvm/DvmUtil;->searchShareNote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2256
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument$8;->val$options_:Ljava/util/Map;

    const-string v1, "duplicatedCollaboNoteID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2257
    new-instance p1, Lcom/metamoji/cm/CmException;

    sget-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_IMPORT_COLLABO_NOTE_DUPLICATED:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v0

    const-string v1, "AP0094"

    const-string/jumbo v2, "share note is duplicated."

    invoke-direct {p1, v1, v2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 2241
    :cond_2
    new-instance p1, Lcom/metamoji/cm/CmException;

    sget-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_MODEL_COMPATIBILITY_INVALID_COMPANYID:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v0

    const-string v1, "AP0092"

    const-string v2, "invalid company ID"

    invoke-direct {p1, v1, v2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1
.end method
