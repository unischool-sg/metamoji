.class Lcom/metamoji/sd/SdDriveDocumentManager$4;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "SdDriveDocumentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->copyDocumentAsNew(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$failure:Lcom/metamoji/sd/SdFailureBlock;

.field final synthetic val$success:Lcom/metamoji/sd/SdSuccessBlock;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
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

    .line 686
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$4;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$4;->val$success:Lcom/metamoji/sd/SdSuccessBlock;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$4;->val$failure:Lcom/metamoji/sd/SdFailureBlock;

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

    .line 686
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 689
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$4;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "documentId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 690
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$4;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$4;->val$success:Lcom/metamoji/sd/SdSuccessBlock;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$4;->val$failure:Lcom/metamoji/sd/SdFailureBlock;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->editDocument(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    const/4 v0, 0x0

    return-object v0
.end method
