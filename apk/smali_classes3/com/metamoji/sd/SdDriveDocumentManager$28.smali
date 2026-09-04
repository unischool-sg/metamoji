.class Lcom/metamoji/sd/SdDriveDocumentManager$28;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->updateMembers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/sd/SdDriveDocumentManager;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 6762
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$28;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 6765
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;-><init>()V

    .line 6766
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$28;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->driveId:Ljava/lang/String;

    .line 6768
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    if-eqz v0, :cond_1

    .line 6770
    iget v1, v0, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->errorCode:I

    if-nez v1, :cond_1

    .line 6771
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6772
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->list:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6773
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 6774
    const-string v4, "id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6775
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6778
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$28;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    monitor-enter v0

    .line 6779
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$28;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, v3, Lcom/metamoji/sd/SdDriveMembers;->updated:Ljava/util/Date;

    .line 6780
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$28;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    iput-object v1, v3, Lcom/metamoji/sd/SdDriveMembers;->memberMap:Ljava/util/Map;

    .line 6781
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$28;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    iput-object v2, v1, Lcom/metamoji/sd/SdDriveMembers;->memberList:Ljava/util/List;

    .line 6782
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6784
    :cond_1
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$28;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    monitor-enter v0

    .line 6785
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$28;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/metamoji/sd/SdDriveMembers;->updated:Ljava/util/Date;

    .line 6786
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$28;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    iput-object v2, v1, Lcom/metamoji/sd/SdDriveMembers;->memberMap:Ljava/util/Map;

    .line 6787
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$28;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    iput-object v2, v1, Lcom/metamoji/sd/SdDriveMembers;->memberList:Ljava/util/List;

    .line 6788
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6790
    :goto_1
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$28;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->-$$Nest$fputm_updateMemberWaiting(Lcom/metamoji/sd/SdDriveDocumentManager;Z)V

    return-void

    :catchall_1
    move-exception v1

    .line 6788
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
