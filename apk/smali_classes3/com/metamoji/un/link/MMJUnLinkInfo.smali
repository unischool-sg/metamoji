.class public Lcom/metamoji/un/link/MMJUnLinkInfo;
.super Ljava/lang/Object;
.source "MMJUnLinkInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private m_companyID:Ljava/lang/String;

.field private m_docID:Ljava/lang/String;

.field private m_driveID:Ljava/lang/String;

.field private m_isMyself:Z

.field private m_pageID:Ljava/lang/String;

.field private m_roomID:Ljava/lang/String;

.field private m_title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_roomID:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_companyID:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_driveID:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_docID:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_pageID:Ljava/lang/String;

    .line 44
    iput-boolean p6, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_isMyself:Z

    .line 45
    iput-object p7, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_title:Ljava/lang/String;

    return-void
.end method

.method public static createWithDriveID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/metamoji/un/link/MMJUnLinkInfo;
    .locals 8

    .line 32
    new-instance v0, Lcom/metamoji/un/link/MMJUnLinkInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/un/link/MMJUnLinkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/metamoji/un/link/MMJUnLinkInfo;
    .locals 2

    .line 54
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/link/MMJUnLinkInfo;

    .line 55
    iget-object v1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_roomID:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_roomID:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_companyID:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_companyID:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_driveID:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_driveID:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_docID:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_docID:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_pageID:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_pageID:Ljava/lang/String;

    .line 60
    iget-boolean v1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_isMyself:Z

    iput-boolean v1, v0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_isMyself:Z

    .line 61
    iget-object v1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_title:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/metamoji/un/link/MMJUnLinkInfo;->clone()Lcom/metamoji/un/link/MMJUnLinkInfo;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/metamoji/un/link/MMJUnLinkInfo;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/un/link/MMJUnLinkInfo;->clone()Lcom/metamoji/un/link/MMJUnLinkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCompanyID()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_companyID:Ljava/lang/String;

    return-object v0
.end method

.method public getDocID()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_docID:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveID()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_driveID:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMyself()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_isMyself:Z

    return v0
.end method

.method public getPageID()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_pageID:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomID()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_roomID:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public setCompanyID(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_companyID:Ljava/lang/String;

    return-void
.end method

.method public setDocID(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_docID:Ljava/lang/String;

    return-void
.end method

.method public setDriveID(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_driveID:Ljava/lang/String;

    return-void
.end method

.method public setIsMyself(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_isMyself:Z

    return-void
.end method

.method public setPageID(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_pageID:Ljava/lang/String;

    return-void
.end method

.method public setRoomID(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_roomID:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkInfo;->m_title:Ljava/lang/String;

    return-void
.end method
