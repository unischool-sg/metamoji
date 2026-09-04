.class Lcom/metamoji/sd/SdDriveDocumentManager$7;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->copyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;ZZZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/sd/SdBlock<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$copiedShareFlg:Z

.field final synthetic val$err:Lcom/metamoji/sd/SdValue;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$keepDate:Z

.field final synthetic val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

.field final synthetic val$newDocId:Lcom/metamoji/sd/SdValue;

.field final synthetic val$nowDate:Ljava/util/Date;

.field final synthetic val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$tags:Ljava/util/List;

.field final synthetic val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdValue;Ljava/io/File;Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;ZZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1759
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$newDocId:Lcom/metamoji/sd/SdValue;

    iput-object p5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$err:Lcom/metamoji/sd/SdValue;

    iput-object p7, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$file:Ljava/io/File;

    iput-object p8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$nowDate:Ljava/util/Date;

    iput-object p9, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    iput-boolean p10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$keepDate:Z

    iput-boolean p11, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$copiedShareFlg:Z

    iput-object p12, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$tags:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 1759
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$7;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1762
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v2, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;

    invoke-direct {v2, p0}, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$7;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 1895
    invoke-virtual {v1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[SdDriveDocumentManager] :: ERROR copyDocument:%s"

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1896
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method
