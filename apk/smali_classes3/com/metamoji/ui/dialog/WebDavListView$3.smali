.class Lcom/metamoji/ui/dialog/WebDavListView$3;
.super Ljava/lang/Object;
.source "WebDavListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/WebDavListView;->setList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/WebDavListView;

.field final synthetic val$listFileInfo:Ljava/util/ArrayList;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavListView;Ljava/lang/String;Ljava/util/ArrayList;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->val$listFileInfo:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 198
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/WebDavListView;->-$$Nest$fget_wevdavinfo(Lcom/metamoji/ui/dialog/WebDavListView;)Lcom/metamoji/ex/webdav/WebDAVInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/WebDavListView;->-$$Nest$fget_wevdavinfo(Lcom/metamoji/ui/dialog/WebDavListView;)Lcom/metamoji/ex/webdav/WebDAVInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ex/webdav/WebDAVManager;->createWebDAVRequestWithInfo(Lcom/metamoji/ex/webdav/WebDAVInfo;)Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object v1

    .line 200
    iget-object v2, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->val$path:Ljava/lang/String;

    sget-object v3, Lcom/metamoji/network/NwWebDAVRequest$Depth;->Children:Lcom/metamoji/network/NwWebDAVRequest$Depth;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/network/NwWebDAVRequest;->propfind(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object v1

    .line 201
    invoke-interface {v1}, Lcom/metamoji/network/NwWebDAVPropResult;->getResponseStatusCode()I

    move-result v2

    const/16 v3, 0xcf

    if-ne v2, v3, :cond_9

    .line 202
    invoke-interface {v1}, Lcom/metamoji/network/NwWebDAVPropResult;->getLiveProperties()Ljava/util/Map;

    move-result-object v1

    .line 203
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 204
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "collection"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 206
    iget-object v5, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-virtual {v5}, Lcom/metamoji/ui/dialog/WebDavListView;->isFileEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_4

    .line 210
    iget-object v5, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-virtual {v5, v3}, Lcom/metamoji/ui/dialog/WebDavListView;->isListTarget(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_1
    move-object v7, v3

    goto :goto_3

    .line 212
    :cond_4
    :goto_2
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->safeURLDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-eqz v4, :cond_3

    .line 221
    iget-object v5, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-static {v5, v3}, Lcom/metamoji/ui/dialog/WebDavListView;->-$$Nest$mfolderPath(Lcom/metamoji/ui/dialog/WebDavListView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_3
    if-eqz v7, :cond_0

    .line 225
    iget-object v3, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->val$path:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v4, :cond_6

    .line 226
    sget-object v3, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->Folder:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    goto :goto_4

    :cond_6
    sget-object v3, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->Document:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    :goto_4
    move-object v9, v3

    .line 227
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 228
    iget-object v3, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->val$listFileInfo:Ljava/util/ArrayList;

    new-instance v5, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    iget-object v6, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;-><init>(Lcom/metamoji/ui/dialog/WebDavListView;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/dialog/WebDavListView$ContentType;Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_7
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->val$listFileInfo:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 234
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/WebDavListView;->-$$Nest$fget_wevdavinfo(Lcom/metamoji/ui/dialog/WebDavListView;)Lcom/metamoji/ex/webdav/WebDAVInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getRoot()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 238
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/WebDavListView;->-$$Nest$fget_url(Lcom/metamoji/ui/dialog/WebDavListView;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ".."

    :goto_5
    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_6

    :cond_8
    const-string v1, "."

    goto :goto_5

    .line 240
    :goto_6
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/ui/dialog/WebDavListView;->-$$Nest$mfolderPath(Lcom/metamoji/ui/dialog/WebDavListView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->val$listFileInfo:Ljava/util/ArrayList;

    new-instance v2, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/WebDavListView$3;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-virtual {v3}, Lcom/metamoji/ui/dialog/WebDavListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/metamoji/noteanytime/R$string;->Send_Back_To_UpperFolder:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->Back:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;-><init>(Lcom/metamoji/ui/dialog/WebDavListView;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/dialog/WebDavListView$ContentType;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 243
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 248
    :cond_9
    :goto_7
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    return-void
.end method
