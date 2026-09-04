.class Lcom/metamoji/ui/library/item/LibraryStorePageView$1$1;
.super Ljava/lang/Object;
.source "LibraryStorePageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryStorePageView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/library/item/LibraryStorePageView$1;

.field final synthetic val$mcheckResult:Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryStorePageView$1;Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;)V
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

    .line 305
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$1$1;->this$1:Lcom/metamoji/ui/library/item/LibraryStorePageView$1;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$1$1;->val$mcheckResult:Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 309
    const-string v0, "g_pageStatus"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$1$1;->this$1:Lcom/metamoji/ui/library/item/LibraryStorePageView$1;

    iget-object v2, v2, Lcom/metamoji/ui/library/item/LibraryStorePageView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    iget-object v2, v2, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$1$1;->val$mcheckResult:Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->isUnderMaintenance:Z

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$1$1;->this$1:Lcom/metamoji/ui/library/item/LibraryStorePageView$1;

    iget-object v2, v2, Lcom/metamoji/ui/library/item/LibraryStorePageView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    iget-object v2, v2, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    sget-object v3, Lcom/metamoji/lb/LbConstants$StorePageStatus;->SERVER_MAINTENANCE:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$1$1;->this$1:Lcom/metamoji/ui/library/item/LibraryStorePageView$1;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryStorePageView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$1$1;->val$mcheckResult:Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    iget-object v2, v2, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->maintMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePage(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$1$1;->this$1:Lcom/metamoji/ui/library/item/LibraryStorePageView$1;

    iget-object v2, v2, Lcom/metamoji/ui/library/item/LibraryStorePageView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    iget-object v2, v2, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    sget-object v3, Lcom/metamoji/lb/LbConstants$StorePageStatus;->INDEX_DATA_REQUESTING:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$1$1;->this$1:Lcom/metamoji/ui/library/item/LibraryStorePageView$1;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryStorePageView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 323
    throw v0
.end method
