.class public Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;
.super Ljava/lang/Object;
.source "WebDavListView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/WebDavListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field mParentDirectory:Z

.field private mType:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/WebDavListView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmUrl(Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/ui/dialog/WebDavListView;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/dialog/WebDavListView$ContentType;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p2, p0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->mUrl:Ljava/lang/String;

    .line 325
    iput-object p3, p0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->mName:Ljava/lang/String;

    .line 326
    iput-object p4, p0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->mType:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    .line 327
    iput-boolean p5, p0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->mParentDirectory:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;)I
    .locals 2

    .line 358
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 369
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 311
    check-cast p1, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->compareTo(Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/metamoji/ui/dialog/WebDavListView$ContentType;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->mType:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->mType:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    sget-object v1, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->Document:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
