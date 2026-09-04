.class Lcom/metamoji/noteanytime/cm/CmMimeType$1;
.super Ljava/util/ArrayList;
.source "CmMimeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/cm/CmMimeType;->systemFileMimeTypes()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 352
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    const-string v0, "application/vnd.metamoji.model.item.cr"

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/cm/CmMimeType$1;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v0, "application/vnd.metamoji.model.item-index.cr"

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/cm/CmMimeType$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
