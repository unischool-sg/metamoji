.class Lcom/metamoji/dvm/DvmUtil$1;
.super Ljava/util/HashMap;
.source "DvmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dvm/DvmUtil;->makeDocumentArchiveFile(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$archiveFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1051
    iput-object p1, p0, Lcom/metamoji/dvm/DvmUtil$1;->val$archiveFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "archiveFile"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/dvm/DvmUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
