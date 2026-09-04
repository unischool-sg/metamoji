.class Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$60;
.super Lcom/metamoji/sd/SdFailureBlock;
.source "DvmMetamojiCloudDocumentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->copyFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;

.field final synthetic val$result:Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;


# direct methods
.method constructor <init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1631
    iput-object p1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$60;->this$0:Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;

    iput-object p2, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$60;->val$result:Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {p0}, Lcom/metamoji/sd/SdFailureBlock;-><init>()V

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

    .line 1631
    invoke-virtual {p0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$60;->call()Ljava/lang/Void;

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

    .line 1634
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$60;->val$result:Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-virtual {p0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$60;->getArgument()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/SdError;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->initWithErrorInfo(Lcom/metamoji/sd/SdError;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
