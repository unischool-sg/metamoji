.class Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$39;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "DvmMetamojiCloudDocumentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;

.field final synthetic val$canceller:Lcom/metamoji/sd/cs/SdRequestCanceller;

.field final synthetic val$result:Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;


# direct methods
.method constructor <init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;)V
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

    .line 1033
    iput-object p1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$39;->this$0:Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;

    iput-object p2, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$39;->val$canceller:Lcom/metamoji/sd/cs/SdRequestCanceller;

    iput-object p3, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$39;->val$result:Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

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

    .line 1033
    invoke-virtual {p0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$39;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$39;->val$canceller:Lcom/metamoji/sd/cs/SdRequestCanceller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdRequestCanceller;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$39;->val$result:Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->RequestCancelError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->initWithErrorInfo(Lcom/metamoji/sd/SdError;)Ljava/lang/Object;

    goto :goto_0

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$39;->val$result:Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    invoke-virtual {p0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$39;->getArgument()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->initWithDictionary(Ljava/util/Map;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
