.class Lcom/metamoji/noteanytime/MainActivity$36;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->adjustTags(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dm:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 2519
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$36;->val$dm:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$36;->val$docId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$36;->val$result:Ljava/util/List;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2519
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity$36;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2522
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$36;->val$dm:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$36;->val$docId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2523
    const-string v1, "afterTags = %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2524
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$36;->val$result:Ljava/util/List;

    const-string/jumbo v1, "true"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method
