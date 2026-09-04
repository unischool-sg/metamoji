.class Lcom/metamoji/noteanytime/MainActivity$83$1;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$83;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$83;

.field final synthetic val$sdm:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$tdm:Lcom/metamoji/sd/SdDriveDocumentManager;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$83;Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdDriveDocumentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 6058
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$83$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$83;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$83$1;->val$sdm:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$83$1;->val$tdm:Lcom/metamoji/sd/SdDriveDocumentManager;

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

    .line 6058
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity$83$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6061
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$83$1;->val$sdm:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$83$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$83;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$83;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$83$1;->val$tdm:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, p0, Lcom/metamoji/noteanytime/MainActivity$83$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$83;

    iget-object v7, v3, Lcom/metamoji/noteanytime/MainActivity$83;->val$success:Lcom/metamoji/sd/SdSuccessBlock;

    iget-object v3, p0, Lcom/metamoji/noteanytime/MainActivity$83$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$83;

    iget-object v8, v3, Lcom/metamoji/noteanytime/MainActivity$83;->val$failure:Lcom/metamoji/sd/SdFailureBlock;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;ZZZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    const/4 v0, 0x0

    return-object v0
.end method
