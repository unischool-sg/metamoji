.class public Lcom/metamoji/nt/NtMRUDocList$Item;
.super Ljava/lang/Object;
.source "NtMRUDocList.java"

# interfaces
.implements Lcom/metamoji/nt/NtMRUDocList$ItemBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtMRUDocList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field private static final KEY_DOCID:Ljava/lang/String; = "doc"

.field private static final KEY_DRIVEID:Ljava/lang/String; = "drv"

.field private static final KEY_FROMSDRIVE:Ljava/lang/String; = "fsd"

.field private static final KEY_READONLY:Ljava/lang/String; = "ro"

.field private static final KEY_SRCDOCID:Ljava/lang/String; = "sdc"


# instance fields
.field private mDocId:Ljava/lang/String;

.field private mDriveId:Ljava/lang/String;

.field private mReadOnly:Z

.field private mShareNoteOpenFromSharedDrive:Z

.field private mSrcDocId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDriveId:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDocId:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mSrcDocId:Ljava/lang/String;

    .line 126
    iput-boolean p4, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mReadOnly:Z

    .line 127
    iput-boolean p5, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mShareNoteOpenFromSharedDrive:Z

    return-void
.end method

.method static fromDictionary(Ljava/util/Map;)Lcom/metamoji/nt/NtMRUDocList$Item;
    .locals 8

    .line 225
    const-string v0, "drv"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 228
    :goto_0
    const-string v0, "doc"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 232
    :cond_1
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 235
    const-string/jumbo v0, "sdc"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 239
    :cond_2
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 241
    const-string/jumbo v0, "ro"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 245
    :cond_3
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v6

    .line 247
    const-string v0, "fsd"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v1

    .line 251
    :cond_4
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v7

    .line 253
    new-instance v2, Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/nt/NtMRUDocList$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v2
.end method

.method private isEqualsDriveId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 348
    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    .line 352
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private setDocId(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDocId:Ljava/lang/String;

    return-void
.end method

.method private setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDriveId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDriveId:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method _changeDocId(Ljava/lang/String;)Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDocId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDocId:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method _changeOpenFromState(Z)Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mShareNoteOpenFromSharedDrive:Z

    if-eq v0, p1, :cond_0

    .line 298
    iput-boolean p1, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mShareNoteOpenFromSharedDrive:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method _changeRO(Z)Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mReadOnly:Z

    if-eq v0, p1, :cond_0

    .line 263
    iput-boolean p1, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mReadOnly:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method _changeSrcDocId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mSrcDocId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 283
    iput-object p2, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mSrcDocId:Ljava/lang/String;

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDriveId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->isEqualsDriveId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDriveId:Ljava/lang/String;

    return v1

    :cond_1
    return p2
.end method

.method _replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDriveId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/nt/NtMRUDocList$Item;->isEqualsDriveId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 361
    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDriveId:Ljava/lang/String;

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDocId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    iput-object p2, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDocId:Ljava/lang/String;

    move p1, v1

    .line 368
    :cond_1
    iget-object p2, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mSrcDocId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 369
    iput-object p3, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mSrcDocId:Ljava/lang/String;

    move p1, v1

    .line 372
    :cond_2
    iget-boolean p2, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mReadOnly:Z

    if-eq p2, p4, :cond_3

    .line 373
    iput-boolean p4, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mReadOnly:Z

    move p1, v1

    .line 376
    :cond_3
    iget-boolean p2, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mShareNoteOpenFromSharedDrive:Z

    if-eq p2, p5, :cond_4

    .line 377
    iput-boolean p5, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mShareNoteOpenFromSharedDrive:Z

    return v1

    :cond_4
    return p1
.end method

.method public docId()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDocId:Ljava/lang/String;

    return-object v0
.end method

.method public driveId()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDriveId:Ljava/lang/String;

    return-object v0
.end method

.method public has2WayId()Z
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDriveId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDocId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mSrcDocId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasLocalId()Z
    .locals 2

    .line 387
    invoke-virtual {p0}, Lcom/metamoji/nt/NtMRUDocList$Item;->has2WayId()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDriveId:Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasSDriveId()Z
    .locals 1

    .line 398
    invoke-virtual {p0}, Lcom/metamoji/nt/NtMRUDocList$Item;->hasLocalId()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLastOpenFromShareDrive()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDriveId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtMRUDocList$Item;->has2WayId()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 201
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mShareNoteOpenFromSharedDrive:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mReadOnly:Z

    return v0
.end method

.method public isShareNoteOpenFromSharedDrive()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mShareNoteOpenFromSharedDrive:Z

    return v0
.end method

.method public setReadOnly(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mReadOnly:Z

    return-void
.end method

.method public setShareNoteOpenFromSharedDrive(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mShareNoteOpenFromSharedDrive:Z

    return-void
.end method

.method public srcDocId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mSrcDocId:Ljava/lang/String;

    return-object v0
.end method

.method public toDictionary()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 209
    const-string v1, "drv"

    iget-object v2, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDriveId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "doc"

    iget-object v2, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mDocId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string/jumbo v1, "sdc"

    iget-object v2, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mSrcDocId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-boolean v1, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mReadOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "ro"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-boolean v1, p0, Lcom/metamoji/nt/NtMRUDocList$Item;->mShareNoteOpenFromSharedDrive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "fsd"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
