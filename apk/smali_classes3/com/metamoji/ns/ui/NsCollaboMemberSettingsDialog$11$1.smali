.class Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;
.super Ljava/lang/Object;
.source "NsCollaboMemberSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->action(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

.field final synthetic val$groupList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;Ljava/util/List;)V
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

    .line 1378
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->val$groupList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1383
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 1397
    :goto_0
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

    if-ltz p1, :cond_1

    .line 1384
    iget-object p2, p2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p2, p2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {p2, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    .line 1385
    iget-boolean v0, p2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->isOwner:Z

    if-nez v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v0, p2}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->remove(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1397
    :cond_1
    iget-object p1, p2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->updateUserCount()V

    .line 1399
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->val$groupList:Ljava/util/List;

    invoke-static {p2}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    .line 1400
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1401
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1404
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

    iget-object p2, p2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p2, p2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerUserId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/metamoji/forSchool/ScSchoolUtils;->getMemberDicListFromGroupList(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 1405
    const-string/jumbo p2, "teacher"

    invoke-static {p1, p2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 1406
    const-string v0, "member"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1408
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1409
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

    iget-object v2, v2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-virtual {v2, v0, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->addMemberItemWithDic(Ljava/util/Map;I)V

    goto :goto_1

    .line 1412
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 1413
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    const/4 v2, 0x2

    invoke-virtual {v0, p2, v2}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->addMemberItemWithDic(Ljava/util/Map;I)V

    goto :goto_2

    .line 1417
    :cond_3
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1419
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->notifyDataSetChanged()V

    return-void
.end method
