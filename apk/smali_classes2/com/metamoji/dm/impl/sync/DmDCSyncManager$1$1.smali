.class Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;
.super Ljava/lang/Object;
.source "DmDCSyncManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->call()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;

.field final synthetic val$rm:I


# direct methods
.method constructor <init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;

    iput p2, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;->val$rm:I

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

    .line 233
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    iget v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;->val$rm:I

    invoke-static {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$smcreateSyncUserInfoBaseSync(I)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 238
    invoke-static {}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->getInstance()Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;

    move-result-object v0

    const-string v4, "backgroundProcessesEnd"

    invoke-virtual {v0, v4}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->createController(Ljava/lang/String;)Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;

    move-result-object v0

    .line 239
    invoke-virtual {v0, v4, v3, v1}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;->initEventFireIntentService(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 240
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;->startServices()V

    .line 241
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;

    iget-object v0, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-static {v0, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$fputrunningode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;I)V

    return-object v3

    .line 246
    :cond_0
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->updateUserInfoUseSync(Z)V

    .line 248
    iget-object v4, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;

    iget-object v4, v4, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    sget v5, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ITEM_DOWNLOAD:I

    invoke-static {v4, v5}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$misTargetSyncMode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;I)Z

    move-result v4

    .line 251
    const-string v5, "noteanytime/shareddrive/"

    invoke-static {v0, v5}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$smcloneWithContext(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    move-result-object v5

    .line 252
    const-string v6, "noteanytime/libraryitems_sa/"

    invoke-static {v0, v6}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$smcloneWithContext(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    move-result-object v6

    .line 253
    const-string v7, "noteanytime/libraryitems_index_sa/"

    invoke-static {v0, v7}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$smcloneWithContext(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    move-result-object v0

    .line 255
    iget-object v7, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;

    iget-object v7, v7, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-static {v7}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$fgetrunningode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;)I

    move-result v7

    invoke-static {v7}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$smuse2ndLibrarySync(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 257
    iget-object v7, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;

    iget-object v7, v7, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-static {v7, v6}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$mcheckHomeCollectionExists(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;

    iget-object v7, v7, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    .line 258
    invoke-static {v7, v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$mcheckHomeCollectionExists(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 259
    :cond_1
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->unneedMigration()V

    move v7, v2

    goto :goto_0

    :cond_2
    move v7, v4

    .line 263
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-static {}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->getInstance()Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;

    move-result-object v9

    const-string v10, "backgroundProcessesStart"

    invoke-virtual {v9, v10}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->createController(Ljava/lang/String;)Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;

    move-result-object v9

    .line 268
    invoke-virtual {v9, v10, v3, v1}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;->initEventFireIntentService(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 269
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;

    iget-object v1, v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    sget v9, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_PRIVATEDRIVE:I

    invoke-static {v1, v9}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$misTargetSyncMode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    invoke-static {}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncIntentServiceController;->getInstance()Lcom/metamoji/sd/sync/SdPrivateDriveSyncIntentServiceController;

    move-result-object v1

    .line 275
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/sd/SdPrivateDriveManager;->getCurrentPrivateId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncIntentServiceController;->initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v7, :cond_5

    .line 283
    invoke-static {}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->getInstance()Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;

    move-result-object v1

    const-string v7, "libraryItemsSyncStart"

    invoke-virtual {v1, v7}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->createController(Ljava/lang/String;)Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;

    move-result-object v1

    .line 284
    invoke-virtual {v1, v7, v3, v2}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;->initEventFireIntentService(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 285
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_4

    .line 291
    invoke-static {}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentServiceController;->getInstance()Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentServiceController;

    move-result-object v1

    .line 292
    invoke-virtual {v1, v6}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentServiceController;->initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V

    .line 293
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-static {}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmNotEditLibraryItemContentsAndMetaDownloadIntentServiceController;->getInstance()Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmNotEditLibraryItemContentsAndMetaDownloadIntentServiceController;

    move-result-object v1

    .line 298
    invoke-virtual {v1, v6}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmNotEditLibraryItemContentsAndMetaDownloadIntentServiceController;->initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V

    .line 299
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-static {}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmServerLibraryItemIndexXMLDownloadIntentServiceController;->getInstance()Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmServerLibraryItemIndexXMLDownloadIntentServiceController;

    move-result-object v1

    .line 304
    invoke-virtual {v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmServerLibraryItemIndexXMLDownloadIntentServiceController;->initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V

    .line 305
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-static {}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentServiceController;->getInstance()Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentServiceController;

    move-result-object v1

    .line 310
    invoke-virtual {v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentServiceController;->initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V

    .line 311
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_4
    invoke-static {}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->getInstance()Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;

    move-result-object v0

    const-string v1, "libraryItemsSyncEnd"

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->createController(Ljava/lang/String;)Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;

    move-result-object v0

    .line 317
    invoke-virtual {v0, v1, v3, v2}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;->initEventFireIntentService(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 318
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_5
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;

    iget-object v0, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    sget v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SELECTEDDRIVE:I

    invoke-static {v0, v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$misTargetSyncMode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;I)Z

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;

    if-eqz v0, :cond_6

    .line 326
    iget-object v0, v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->val$driveId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 327
    invoke-static {}, Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;->getInstance()Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;

    iget-object v1, v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->val$driveId:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;->initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 333
    :cond_6
    iget-object v0, v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    sget v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SHAREDDRIVES:I

    invoke-static {v0, v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$misTargetSyncMode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 334
    invoke-static {}, Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;->getInstance()Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;

    iget-object v1, v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->val$syncOptionParams:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;

    invoke-virtual {v0, v5, v1}, Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;->initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)V

    .line 336
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_7
    :goto_1
    invoke-static {}, Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentServiceController;->getInstance()Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentServiceController;

    move-result-object v0

    .line 341
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentServiceController;->initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V

    .line 342
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentServiceController;

    invoke-direct {v0, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentServiceController;-><init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager-IA;)V

    .line 347
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentServiceController;->initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V

    .line 348
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 353
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->startServices()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return-object v3
.end method
