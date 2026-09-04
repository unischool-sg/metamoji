.class Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;
.super Ljava/lang/Object;
.source "ShareObjectInfoView.java"

# interfaces
.implements Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShareObjectInfoView;->showSelectObjectInfo(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtDocument;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$companyId:Ljava/lang/String;

.field final synthetic val$document:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$editor:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$finalAuthorInfos:Ljava/util/List;

.field final synthetic val$finalCollaboNickNamesMap:Ljava/util/Map;

.field final synthetic val$finalRequestCollaboNickNamesMapKeyArray:Ljava/util/List;

.field final synthetic val$partsArray:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/metamoji/nt/NtDocument;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$finalAuthorInfos:Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$companyId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$finalCollaboNickNamesMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$finalRequestCollaboNickNamesMapKeyArray:Ljava/util/List;

    iput-object p5, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$partsArray:Ljava/util/List;

    iput-object p6, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iput-object p7, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$editor:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$finalAuthorInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtAuthorInfo;

    .line 235
    invoke-virtual {v1}, Lcom/metamoji/nt/NtAuthorInfo;->getCompanyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 236
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$companyId:Ljava/lang/String;

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/nt/NtAuthorInfo;->getDcUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/metamoji/nt/NtAuthorInfo;->getCompanyId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/dvm/DvmUtil;->makeUserKeyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 245
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 250
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v6, v2

    move-object v8, v3

    move v7, v4

    goto :goto_4

    .line 251
    :cond_4
    :goto_3
    invoke-virtual {v1}, Lcom/metamoji/nt/NtAuthorInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/metamoji/nt/NtAuthorInfo;->getRoomId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/metamoji/ns/NsCollaboSettings;->makeNickNamesMapKeyForUserID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 255
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$finalCollaboNickNamesMap:Ljava/util/Map;

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 256
    invoke-static {v2, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_5

    .line 259
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$finalRequestCollaboNickNamesMapKeyArray:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 260
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$finalRequestCollaboNickNamesMapKeyArray:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v3, v2

    :cond_6
    move-object v2, v5

    :cond_7
    if-eqz v3, :cond_8

    .line 265
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 268
    :cond_8
    invoke-virtual {v1}, Lcom/metamoji/nt/NtAuthorInfo;->getDcUserName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :goto_4
    if-eqz v6, :cond_0

    .line 277
    invoke-virtual {v1}, Lcom/metamoji/nt/NtAuthorInfo;->getActionTime()Ljava/util/Date;

    move-result-object v2

    .line 278
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$partsArray:Ljava/util/List;

    new-instance v5, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->-$$Nest$smconvertDate2String(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/metamoji/nt/NtAuthorInfo;->getActionTimeInUnixTimestamp()D

    move-result-wide v10

    invoke-direct/range {v5 .. v11}, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 284
    :cond_9
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$finalRequestCollaboNickNamesMapKeyArray:Ljava/util/List;

    new-instance v0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1$1;-><init>(Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;)V

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboCommand;->getNickNamesMapFromServer(Ljava/util/List;Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;)V

    return-void
.end method
