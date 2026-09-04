.class public Lcom/metamoji/nt/NtMRUDocList$DocInfo;
.super Ljava/lang/Object;
.source "NtMRUDocList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtMRUDocList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocInfo"
.end annotation


# instance fields
.field public DocId:Ljava/lang/String;

.field public DocTitle:Ljava/lang/String;

.field public IsKindOfShare:Z

.field public IsKindOfTemplate:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    invoke-virtual {p0}, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->clear()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->DocId:Ljava/lang/String;

    .line 419
    iput-object p2, p0, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->DocTitle:Ljava/lang/String;

    .line 420
    iput-boolean p3, p0, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfShare:Z

    .line 421
    iput-boolean p4, p0, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfTemplate:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 425
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->DocId:Ljava/lang/String;

    .line 426
    iput-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->DocTitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p0, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfShare:Z

    .line 428
    iput-boolean v0, p0, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfTemplate:Z

    return-void
.end method
