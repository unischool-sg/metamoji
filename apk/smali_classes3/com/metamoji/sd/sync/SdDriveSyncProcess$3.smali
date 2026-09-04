.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess;->undoChangedNoteWithDocId(Ljava/lang/String;)Z
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
.field final synthetic this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$isNew:Lcom/metamoji/sd/SdValue;

.field final synthetic val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

.field final synthetic val$newDocId:Lcom/metamoji/sd/SdValue;

.field final synthetic val$nowDate:Ljava/util/Date;

.field final synthetic val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$toMgr:Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

.field final synthetic val$toMoMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Ljava/io/File;Ljava/util/Date;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/entities/SdMODocument;)V
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 530
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$newDocId:Lcom/metamoji/sd/SdValue;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toMoMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toMgr:Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    iput-object p6, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$file:Ljava/io/File;

    iput-object p7, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$nowDate:Ljava/util/Date;

    iput-object p8, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$isNew:Lcom/metamoji/sd/SdValue;

    iput-object p9, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

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

    .line 530
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->call()Ljava/lang/Void;

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

    .line 535
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$newDocId:Lcom/metamoji/sd/SdValue;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toMoMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->generateDocumentId(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 537
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toMgr:Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$file:Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->saveDocumentBinaryFileToStorage(Ljava/io/File;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;

    invoke-direct {v1, p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0

    .line 538
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Can not generate document ID."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
