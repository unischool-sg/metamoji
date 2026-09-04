.class public Lcom/metamoji/un/link/MMJUnLinkUnitLocation;
.super Ljava/lang/Object;
.source "MMJUnLinkUnitLocation.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static location_createWithEncodedURLAsync:Lcom/metamoji/un/link/MMJUnLinkUnitLocation;


# instance fields
.field private m_linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

.field private m_url:Landroid/net/Uri;

.field private m_userIDIfPrivateDrive:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetm_linkInfo(Lcom/metamoji/un/link/MMJUnLinkUnitLocation;)Lcom/metamoji/un/link/MMJUnLinkInfo;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smparseEncodedURLString(Ljava/lang/String;)Lcom/metamoji/un/link/MMJUnLinkUnitLocation;
    .locals 0

    invoke-static {p0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->parseEncodedURLString(Ljava/lang/String;)Lcom/metamoji/un/link/MMJUnLinkUnitLocation;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/dvm/DvmErrCode;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    .line 75
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_url:Landroid/net/Uri;

    .line 77
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_userIDIfPrivateDrive:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/un/link/MMJUnLinkInfo;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/metamoji/un/link/MMJUnLinkInfo;->copy()Lcom/metamoji/un/link/MMJUnLinkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 62
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_url:Landroid/net/Uri;

    .line 64
    iput-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_userIDIfPrivateDrive:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/metamoji/un/link/MMJUnLinkInfo;->getDriveID()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 68
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p1

    .line 69
    iget-object p1, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_userIDIfPrivateDrive:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static canHandleOpenURL(Ljava/lang/String;)Z
    .locals 0

    .line 229
    invoke-static {p0}, Lcom/metamoji/dvm/DvmUtil;->isLink(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static createWithEncodedURLAsync(Ljava/lang/String;)Lcom/metamoji/un/link/MMJUnLinkUnitLocation;
    .locals 2

    .line 240
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$3;

    invoke-direct {v1, p0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runModalOnBackground(Ljava/lang/Runnable;)Z

    .line 247
    sget-object p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->location_createWithEncodedURLAsync:Lcom/metamoji/un/link/MMJUnLinkUnitLocation;

    return-object p0
.end method

.method public static createWithError(Lcom/metamoji/dvm/DvmErrCode;)Lcom/metamoji/un/link/MMJUnLinkUnitLocation;
    .locals 1

    .line 251
    new-instance v0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;

    invoke-direct {v0, p0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    return-object v0
.end method

.method public static createWithLinkInfo(Lcom/metamoji/un/link/MMJUnLinkInfo;Ljava/lang/String;)Lcom/metamoji/un/link/MMJUnLinkUnitLocation;
    .locals 1

    .line 233
    new-instance v0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;-><init>(Lcom/metamoji/un/link/MMJUnLinkInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isSelfPrivateDrive(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 210
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 211
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 212
    invoke-static {v0, p0}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static isSurelyMyself(ZLjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 191
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isValidString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 199
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->pageFromPageId(Ljava/lang/String;)Lcom/metamoji/nt/NtPageController;

    move-result-object p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method private static parseEncodedURLString(Ljava/lang/String;)Lcom/metamoji/un/link/MMJUnLinkUnitLocation;
    .locals 5

    .line 103
    invoke-static {p0}, Lcom/metamoji/dvm/DvmUtil;->reverseLink(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->succeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->getPageId()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/metamoji/un/link/MMJUnLinkInfo;->createWithDriveID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/metamoji/un/link/MMJUnLinkInfo;

    move-result-object v0

    .line 106
    invoke-static {v0, p0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->createWithLinkInfo(Lcom/metamoji/un/link/MMJUnLinkInfo;Ljava/lang/String;)Lcom/metamoji/un/link/MMJUnLinkUnitLocation;

    move-result-object p0

    return-object p0

    .line 108
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->GetErrorInfo()Lcom/metamoji/sd/SdError;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->createWithError(Lcom/metamoji/dvm/DvmErrCode;)Lcom/metamoji/un/link/MMJUnLinkUnitLocation;

    move-result-object p0

    return-object p0
.end method

.method public static performJumpWithLinkInfo(Lcom/metamoji/un/link/MMJUnLinkInfo;ZZ)V
    .locals 2

    .line 116
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$1;-><init>(Lcom/metamoji/un/link/MMJUnLinkInfo;ZZ)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getDocumentID()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    invoke-virtual {v0}, Lcom/metamoji/un/link/MMJUnLinkInfo;->getDocID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDriveID()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    invoke-virtual {v0}, Lcom/metamoji/un/link/MMJUnLinkInfo;->getDriveID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsMyself()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    invoke-virtual {v0}, Lcom/metamoji/un/link/MMJUnLinkInfo;->getIsMyself()Z

    move-result v0

    return v0
.end method

.method public getPageID()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    invoke-virtual {v0}, Lcom/metamoji/un/link/MMJUnLinkInfo;->getPageID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_userIDIfPrivateDrive:Ljava/lang/String;

    return-object v0
.end method

.method public isSelfPrivateDrive()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_userIDIfPrivateDrive:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->isSelfPrivateDrive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSurelyMyself()Z
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->getIsMyself()Z

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->getPageID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->isSurelyMyself(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public performJumpWithRegisterJumpHistory(ZZLandroid/graphics/Rect;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Lcom/metamoji/un/link/MMJUnLinkInfo;->getDriveID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->isSelfPrivateDrive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->isSurelyMyself()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 156
    iget-object p3, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->m_linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    invoke-static {p3, p1, p2}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->performJumpWithLinkInfo(Lcom/metamoji/un/link/MMJUnLinkInfo;ZZ)V

    return-void

    .line 160
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;-><init>(Lcom/metamoji/un/link/MMJUnLinkUnitLocation;ZZLandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
