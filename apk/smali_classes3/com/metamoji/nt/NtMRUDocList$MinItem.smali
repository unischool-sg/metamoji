.class public Lcom/metamoji/nt/NtMRUDocList$MinItem;
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
    name = "MinItem"
.end annotation


# instance fields
.field mDocId:Ljava/lang/String;

.field mDriveId:Ljava/lang/String;

.field mReadOnly:Z


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtMRUDocList$Item;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->isLastOpenFromShareDrive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->driveId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$MinItem;->mDriveId:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->srcDocId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$MinItem;->mDocId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$MinItem;->mDriveId:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$MinItem;->mDocId:Ljava/lang/String;

    .line 97
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->isReadOnly()Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/nt/NtMRUDocList$MinItem;->mReadOnly:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList$MinItem;->mDriveId:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/metamoji/nt/NtMRUDocList$MinItem;->mDocId:Ljava/lang/String;

    .line 83
    iput-boolean p3, p0, Lcom/metamoji/nt/NtMRUDocList$MinItem;->mReadOnly:Z

    return-void
.end method


# virtual methods
.method public SetDocId(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList$MinItem;->mDocId:Ljava/lang/String;

    return-void
.end method

.method public SetDriveId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList$MinItem;->mDriveId:Ljava/lang/String;

    return-void
.end method

.method public docId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$MinItem;->mDocId:Ljava/lang/String;

    return-object v0
.end method

.method public driveId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$MinItem;->mDriveId:Ljava/lang/String;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/metamoji/nt/NtMRUDocList$MinItem;->mReadOnly:Z

    return v0
.end method
